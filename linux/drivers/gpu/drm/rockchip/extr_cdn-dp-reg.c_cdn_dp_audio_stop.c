
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {int spdif_clk; scalar_t__ regs; int dev; } ;
struct audio_info {scalar_t__ format; } ;


 scalar_t__ AFMT_SPDIF ;
 int AUDIO_PACK_CONTROL ;
 scalar_t__ AUDIO_SRC_CNFG ;
 scalar_t__ AUDIO_SRC_CNTL ;
 int AUDIO_SW_RST ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 scalar_t__ FIFO_CNTL ;
 scalar_t__ SMPL2PKT_CNTL ;
 scalar_t__ SPDIF_CTRL_ADDR ;
 int cdn_dp_reg_write (struct cdn_dp_device*,int ,int ) ;
 int clk_disable_unprepare (int ) ;
 int writel (int ,scalar_t__) ;

int cdn_dp_audio_stop(struct cdn_dp_device *dp, struct audio_info *audio)
{
 int ret;

 ret = cdn_dp_reg_write(dp, AUDIO_PACK_CONTROL, 0);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "audio stop failed: %d\n", ret);
  return ret;
 }

 writel(0, dp->regs + SPDIF_CTRL_ADDR);


 writel(0, dp->regs + AUDIO_SRC_CNTL);
 writel(0, dp->regs + AUDIO_SRC_CNFG);
 writel(AUDIO_SW_RST, dp->regs + AUDIO_SRC_CNTL);
 writel(0, dp->regs + AUDIO_SRC_CNTL);


 writel(0, dp->regs + SMPL2PKT_CNTL);
 writel(AUDIO_SW_RST, dp->regs + SMPL2PKT_CNTL);
 writel(0, dp->regs + SMPL2PKT_CNTL);


 writel(AUDIO_SW_RST, dp->regs + FIFO_CNTL);
 writel(0, dp->regs + FIFO_CNTL);

 if (audio->format == AFMT_SPDIF)
  clk_disable_unprepare(dp->spdif_clk);

 return 0;
}
