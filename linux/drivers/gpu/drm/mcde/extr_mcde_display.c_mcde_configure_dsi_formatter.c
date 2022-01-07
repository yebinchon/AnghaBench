
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mcde {int regs; int dev; TYPE_1__* mdsi; } ;
typedef enum mcde_dsi_formatter { ____Placeholder_mcde_dsi_formatter } mcde_dsi_formatter ;
struct TYPE_2__ {int mode_flags; int format; } ;


 int MCDE_DSICONF0_CMD8 ;
 int MCDE_DSICONF0_DCSVID_NOTGEN ;
 int MCDE_DSICONF0_PACKING_RGB565 ;
 int MCDE_DSICONF0_PACKING_RGB666 ;
 int MCDE_DSICONF0_PACKING_RGB666_PACKED ;
 int MCDE_DSICONF0_PACKING_RGB888 ;
 int MCDE_DSICONF0_PACKING_SHIFT ;
 int MCDE_DSICONF0_VID_MODE_VID ;
 int MCDE_DSIVID0CMDW ;
 int MCDE_DSIVID0CONF0 ;
 int MCDE_DSIVID0DELAY0 ;
 int MCDE_DSIVID0DELAY1 ;
 int MCDE_DSIVID0FRAME ;
 int MCDE_DSIVID0PKT ;
 int MCDE_DSIVID0SYNC ;
 int MCDE_DSIVID1CMDW ;
 int MCDE_DSIVID1CONF0 ;
 int MCDE_DSIVID1DELAY0 ;
 int MCDE_DSIVID1DELAY1 ;
 int MCDE_DSIVID1FRAME ;
 int MCDE_DSIVID1PKT ;
 int MCDE_DSIVID1SYNC ;
 int MCDE_DSIVID2CMDW ;
 int MCDE_DSIVID2CONF0 ;
 int MCDE_DSIVID2DELAY0 ;
 int MCDE_DSIVID2DELAY1 ;
 int MCDE_DSIVID2FRAME ;
 int MCDE_DSIVID2PKT ;
 int MCDE_DSIVID2SYNC ;
 int MCDE_DSIVIDXCMDW_CMDW_CONTINUE_SHIFT ;
 int MCDE_DSIVIDXCMDW_CMDW_START_SHIFT ;



 int MIPI_DCS_WRITE_MEMORY_CONTINUE ;
 int MIPI_DCS_WRITE_MEMORY_START ;




 int MIPI_DSI_MODE_VIDEO ;
 int dev_err (int ,char*) ;
 int writel (int,int) ;

__attribute__((used)) static void mcde_configure_dsi_formatter(struct mcde *mcde,
      enum mcde_dsi_formatter fmt,
      u32 formatter_frame,
      int pkt_size)
{
 u32 val;
 u32 conf0;
 u32 frame;
 u32 pkt;
 u32 sync;
 u32 cmdw;
 u32 delay0, delay1;

 switch (fmt) {
 case 134:
  conf0 = MCDE_DSIVID0CONF0;
  frame = MCDE_DSIVID0FRAME;
  pkt = MCDE_DSIVID0PKT;
  sync = MCDE_DSIVID0SYNC;
  cmdw = MCDE_DSIVID0CMDW;
  delay0 = MCDE_DSIVID0DELAY0;
  delay1 = MCDE_DSIVID0DELAY1;
  break;
 case 133:
  conf0 = MCDE_DSIVID1CONF0;
  frame = MCDE_DSIVID1FRAME;
  pkt = MCDE_DSIVID1PKT;
  sync = MCDE_DSIVID1SYNC;
  cmdw = MCDE_DSIVID1CMDW;
  delay0 = MCDE_DSIVID1DELAY0;
  delay1 = MCDE_DSIVID1DELAY1;
  break;
 case 132:
  conf0 = MCDE_DSIVID2CONF0;
  frame = MCDE_DSIVID2FRAME;
  pkt = MCDE_DSIVID2PKT;
  sync = MCDE_DSIVID2SYNC;
  cmdw = MCDE_DSIVID2CMDW;
  delay0 = MCDE_DSIVID2DELAY0;
  delay1 = MCDE_DSIVID2DELAY1;
  break;
 }





 val = MCDE_DSICONF0_CMD8 | MCDE_DSICONF0_DCSVID_NOTGEN;
 if (mcde->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO)
  val |= MCDE_DSICONF0_VID_MODE_VID;
 switch (mcde->mdsi->format) {
 case 128:
  val |= MCDE_DSICONF0_PACKING_RGB888 <<
   MCDE_DSICONF0_PACKING_SHIFT;
  break;
 case 130:
  val |= MCDE_DSICONF0_PACKING_RGB666 <<
   MCDE_DSICONF0_PACKING_SHIFT;
  break;
 case 129:
  val |= MCDE_DSICONF0_PACKING_RGB666_PACKED <<
   MCDE_DSICONF0_PACKING_SHIFT;
  break;
 case 131:
  val |= MCDE_DSICONF0_PACKING_RGB565 <<
   MCDE_DSICONF0_PACKING_SHIFT;
  break;
 default:
  dev_err(mcde->dev, "unknown DSI format\n");
  return;
 }
 writel(val, mcde->regs + conf0);

 writel(formatter_frame, mcde->regs + frame);
 writel(pkt_size, mcde->regs + pkt);
 writel(0, mcde->regs + sync);

 val = MIPI_DCS_WRITE_MEMORY_CONTINUE <<
  MCDE_DSIVIDXCMDW_CMDW_CONTINUE_SHIFT;
 val |= MIPI_DCS_WRITE_MEMORY_START <<
  MCDE_DSIVIDXCMDW_CMDW_START_SHIFT;
 writel(val, mcde->regs + cmdw);





 writel(0, mcde->regs + delay0);
 writel(0, mcde->regs + delay1);
}
