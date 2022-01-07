
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int HB0; unsigned int HB1; unsigned int HB2; unsigned int HB3; } ;
struct dp_sdp {unsigned int* db; TYPE_1__ sdp_header; } ;
struct analogix_dp_device {int dev; scalar_t__ reg_base; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ANALOGIX_DP_PKT_SEND_CTL ;
 scalar_t__ ANALOGIX_DP_PSR_FRAME_UPDATE_CTRL ;
 scalar_t__ ANALOGIX_DP_SPD_HB0 ;
 scalar_t__ ANALOGIX_DP_SPD_HB1 ;
 scalar_t__ ANALOGIX_DP_SPD_HB2 ;
 scalar_t__ ANALOGIX_DP_SPD_HB3 ;
 scalar_t__ ANALOGIX_DP_SPD_PB0 ;
 scalar_t__ ANALOGIX_DP_SPD_PB1 ;
 scalar_t__ ANALOGIX_DP_SPD_PB2 ;
 scalar_t__ ANALOGIX_DP_SPD_PB3 ;
 scalar_t__ ANALOGIX_DP_VIDEO_CTL_3 ;
 scalar_t__ ANALOGIX_DP_VSC_SHADOW_DB0 ;
 scalar_t__ ANALOGIX_DP_VSC_SHADOW_DB1 ;
 scalar_t__ DP_PSR_SINK_ACTIVE_RFB ;
 scalar_t__ DP_PSR_SINK_INACTIVE ;
 int DP_TIMEOUT_PSR_LOOP_MS ;
 unsigned int IF_EN ;
 unsigned int IF_UP ;
 unsigned int PSR_CRC_SEL_HARDWARE ;
 unsigned int PSR_FRAME_UP_TYPE_BURST ;
 unsigned int REUSE_SPD_EN ;
 int analogix_dp_get_psr_status ;
 int dev_warn (int ,char*,int) ;
 unsigned int readl (scalar_t__) ;
 int readx_poll_timeout (int ,struct analogix_dp_device*,scalar_t__,int,int,int) ;
 int writel (unsigned int,scalar_t__) ;

int analogix_dp_send_psr_spd(struct analogix_dp_device *dp,
        struct dp_sdp *vsc, bool blocking)
{
 unsigned int val;
 int ret;
 ssize_t psr_status;


 val = readl(dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
 val &= ~IF_EN;
 writel(val, dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);


 writel(PSR_FRAME_UP_TYPE_BURST | PSR_CRC_SEL_HARDWARE,
        dp->reg_base + ANALOGIX_DP_PSR_FRAME_UPDATE_CTRL);


 writel(vsc->sdp_header.HB0, dp->reg_base + ANALOGIX_DP_SPD_HB0);
 writel(vsc->sdp_header.HB1, dp->reg_base + ANALOGIX_DP_SPD_HB1);
 writel(vsc->sdp_header.HB2, dp->reg_base + ANALOGIX_DP_SPD_HB2);
 writel(vsc->sdp_header.HB3, dp->reg_base + ANALOGIX_DP_SPD_HB3);


 writel(0x00, dp->reg_base + ANALOGIX_DP_SPD_PB0);
 writel(0x16, dp->reg_base + ANALOGIX_DP_SPD_PB1);
 writel(0xCE, dp->reg_base + ANALOGIX_DP_SPD_PB2);
 writel(0x5D, dp->reg_base + ANALOGIX_DP_SPD_PB3);


 writel(vsc->db[0], dp->reg_base + ANALOGIX_DP_VSC_SHADOW_DB0);
 writel(vsc->db[1], dp->reg_base + ANALOGIX_DP_VSC_SHADOW_DB1);


 val = readl(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_3);
 val |= REUSE_SPD_EN;
 writel(val, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_3);


 val = readl(dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
 val = (val | IF_UP) & ~IF_EN;
 writel(val, dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);


 val = readl(dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
 val |= IF_EN;
 writel(val, dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);

 if (!blocking)
  return 0;

 ret = readx_poll_timeout(analogix_dp_get_psr_status, dp, psr_status,
  psr_status >= 0 &&
  ((vsc->db[1] && psr_status == DP_PSR_SINK_ACTIVE_RFB) ||
  (!vsc->db[1] && psr_status == DP_PSR_SINK_INACTIVE)), 1500,
  DP_TIMEOUT_PSR_LOOP_MS * 1000);
 if (ret) {
  dev_warn(dp->dev, "Failed to apply PSR %d\n", ret);
  return ret;
 }
 return 0;
}
