
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct occ_response {scalar_t__ seq_no; struct occ_response* data; int return_status; int data_length; } ;
struct occ {int occ_lock; int dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENODEV ;
 int ETIMEDOUT ;
 int OCC_CMD_IN_PRG_WAIT_MS ;
 int OCC_RESP_CMD_IN_PRG ;
 int OCC_SRAM_CMD_ADDR ;
 scalar_t__ OCC_SRAM_RSP_ADDR ;
 int OCC_TIMEOUT_MS ;
 int TASK_UNINTERRUPTIBLE ;
 int dev_dbg (struct device*,char*,size_t,...) ;
 int dev_err (int ,char*,int ,scalar_t__,scalar_t__) ;
 struct occ* dev_get_drvdata (struct device*) ;
 int get_unaligned_be16 (int *) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int occ_getsram (struct occ*,scalar_t__,struct occ_response*,int) ;
 int occ_putsram (struct occ*,int ,void const*,size_t) ;
 int occ_trigger_attn (struct occ*) ;
 int occ_verify_checksum (struct occ_response*,int) ;
 int schedule_timeout (unsigned long const) ;
 int set_current_state (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int fsi_occ_submit(struct device *dev, const void *request, size_t req_len,
     void *response, size_t *resp_len)
{
 const unsigned long timeout = msecs_to_jiffies(OCC_TIMEOUT_MS);
 const unsigned long wait_time =
  msecs_to_jiffies(OCC_CMD_IN_PRG_WAIT_MS);
 struct occ *occ = dev_get_drvdata(dev);
 struct occ_response *resp = response;
 u8 seq_no;
 u16 resp_data_length;
 unsigned long start;
 int rc;

 if (!occ)
  return -ENODEV;

 if (*resp_len < 7) {
  dev_dbg(dev, "Bad resplen %zd\n", *resp_len);
  return -EINVAL;
 }

 mutex_lock(&occ->occ_lock);


 seq_no = *(const u8 *)request;
 rc = occ_putsram(occ, OCC_SRAM_CMD_ADDR, request, req_len);
 if (rc)
  goto done;

 rc = occ_trigger_attn(occ);
 if (rc)
  goto done;


 start = jiffies;
 do {
  rc = occ_getsram(occ, OCC_SRAM_RSP_ADDR, resp, 8);
  if (rc)
   goto done;

  if (resp->return_status == OCC_RESP_CMD_IN_PRG ||
      resp->seq_no != seq_no) {
   rc = -ETIMEDOUT;

   if (time_after(jiffies, start + timeout)) {
    dev_err(occ->dev, "resp timeout status=%02x "
     "resp seq_no=%d our seq_no=%d\n",
     resp->return_status, resp->seq_no,
     seq_no);
    goto done;
   }

   set_current_state(TASK_UNINTERRUPTIBLE);
   schedule_timeout(wait_time);
  }
 } while (rc);


 resp_data_length = get_unaligned_be16(&resp->data_length);


 if ((resp_data_length + 7) > *resp_len) {
  rc = -EMSGSIZE;
  goto done;
 }

 dev_dbg(dev, "resp_status=%02x resp_data_len=%d\n",
  resp->return_status, resp_data_length);


 if (resp_data_length > 1) {

  rc = occ_getsram(occ, OCC_SRAM_RSP_ADDR + 8,
     &resp->data[3], resp_data_length - 1);
  if (rc)
   goto done;
 }

 *resp_len = resp_data_length + 7;
 rc = occ_verify_checksum(resp, resp_data_length);

 done:
 mutex_unlock(&occ->occ_lock);

 return rc;
}
