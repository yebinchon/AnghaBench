
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hdmi_hdcp_ctrl {int dev_count; int ksv_fifo_w_index; int* ksv_list; struct hdmi* hdmi; } ;
struct hdmi {int dummy; } ;


 int DBG (char*,...) ;
 int EAGAIN ;
 int HDMI_HDCP_SHA_DATA_DONE ;
 int HDMI_HDCP_SHA_STATUS_BLOCK_DONE ;
 int HDMI_HDCP_SHA_STATUS_COMP_DONE ;
 int REG_HDMI_HDCP_SHA_DATA ;
 int REG_HDMI_HDCP_SHA_STATUS ;
 int hdmi_read (struct hdmi*,int ) ;
 int msm_hdmi_hdcp_scm_wr (struct hdmi_hdcp_ctrl*,int*,int*,int) ;

__attribute__((used)) static int msm_hdmi_hdcp_write_ksv_fifo(struct hdmi_hdcp_ctrl *hdcp_ctrl)
{
 int i;
 struct hdmi *hdmi = hdcp_ctrl->hdmi;
 u32 ksv_bytes, last_byte = 0;
 u8 *ksv_fifo = ((void*)0);
 u32 reg_val, data, reg;
 u32 rc = 0;

 ksv_bytes = 5 * hdcp_ctrl->dev_count;


 if (hdcp_ctrl->ksv_fifo_w_index) {
  reg_val = hdmi_read(hdmi, REG_HDMI_HDCP_SHA_STATUS);
  DBG("HDCP_SHA_STATUS=%08x", reg_val);
  if (hdcp_ctrl->ksv_fifo_w_index == ksv_bytes) {

   if (reg_val & HDMI_HDCP_SHA_STATUS_COMP_DONE) {
    DBG("COMP_DONE");
    return 0;
   } else {
    return -EAGAIN;
   }
  } else {

   if (!(reg_val & HDMI_HDCP_SHA_STATUS_BLOCK_DONE))
    return -EAGAIN;

   DBG("BLOCK_DONE");
  }
 }

 ksv_bytes -= hdcp_ctrl->ksv_fifo_w_index;
 if (ksv_bytes <= 64)
  last_byte = 1;
 else
  ksv_bytes = 64;

 ksv_fifo = hdcp_ctrl->ksv_list;
 ksv_fifo += hdcp_ctrl->ksv_fifo_w_index;

 for (i = 0; i < ksv_bytes; i++) {

  reg_val = ksv_fifo[i] << 16;
  if ((i == (ksv_bytes - 1)) && last_byte)
   reg_val |= HDMI_HDCP_SHA_DATA_DONE;

  reg = REG_HDMI_HDCP_SHA_DATA;
  data = reg_val;
  rc = msm_hdmi_hdcp_scm_wr(hdcp_ctrl, &reg, &data, 1);

  if (rc)
   return rc;
 }

 hdcp_ctrl->ksv_fifo_w_index += ksv_bytes;




 return -EAGAIN;
}
