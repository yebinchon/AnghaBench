
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcde {int regs; scalar_t__ te_sync; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
typedef enum mcde_fifo { ____Placeholder_mcde_fifo } mcde_fifo ;
typedef enum mcde_channel { ____Placeholder_mcde_channel } mcde_channel ;






 int MCDE_CHNL0BCKGNDCOL ;
 int MCDE_CHNL0CONF ;
 int MCDE_CHNL0MUXING ;
 int MCDE_CHNL0STAT ;
 int MCDE_CHNL0SYNCHMOD ;
 int MCDE_CHNL1BCKGNDCOL ;
 int MCDE_CHNL1CONF ;
 int MCDE_CHNL1MUXING ;
 int MCDE_CHNL1STAT ;
 int MCDE_CHNL1SYNCHMOD ;
 int MCDE_CHNL2BCKGNDCOL ;
 int MCDE_CHNL2CONF ;
 int MCDE_CHNL2MUXING ;
 int MCDE_CHNL2STAT ;
 int MCDE_CHNL2SYNCHMOD ;
 int MCDE_CHNL3BCKGNDCOL ;
 int MCDE_CHNL3CONF ;
 int MCDE_CHNL3MUXING ;
 int MCDE_CHNL3STAT ;
 int MCDE_CHNL3SYNCHMOD ;
 int MCDE_CHNLXCONF_LPF_SHIFT ;
 int MCDE_CHNLXCONF_PPL_SHIFT ;
 int MCDE_CHNLXMUXING_FIFO_ID_FIFO_A ;
 int MCDE_CHNLXMUXING_FIFO_ID_FIFO_B ;
 int MCDE_CHNLXSTAT_CHNLBLBCKGND_EN ;
 int MCDE_CHNLXSTAT_CHNLRD ;
 int MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_FORMATTER ;
 int MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_SHIFT ;
 int MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_TE0 ;
 int MCDE_CHNLXSYNCHMOD_SRC_SYNCH_HARDWARE ;
 int MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SHIFT ;
 int MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SOFTWARE ;


 int writel (int,int) ;

__attribute__((used)) static void mcde_configure_channel(struct mcde *mcde, enum mcde_channel ch,
       enum mcde_fifo fifo,
       const struct drm_display_mode *mode)
{
 u32 val;
 u32 conf;
 u32 sync;
 u32 stat;
 u32 bgcol;
 u32 mux;

 switch (ch) {
 case 133:
  conf = MCDE_CHNL0CONF;
  sync = MCDE_CHNL0SYNCHMOD;
  stat = MCDE_CHNL0STAT;
  bgcol = MCDE_CHNL0BCKGNDCOL;
  mux = MCDE_CHNL0MUXING;
  break;
 case 132:
  conf = MCDE_CHNL1CONF;
  sync = MCDE_CHNL1SYNCHMOD;
  stat = MCDE_CHNL1STAT;
  bgcol = MCDE_CHNL1BCKGNDCOL;
  mux = MCDE_CHNL1MUXING;
  break;
 case 131:
  conf = MCDE_CHNL2CONF;
  sync = MCDE_CHNL2SYNCHMOD;
  stat = MCDE_CHNL2STAT;
  bgcol = MCDE_CHNL2BCKGNDCOL;
  mux = MCDE_CHNL2MUXING;
  break;
 case 130:
  conf = MCDE_CHNL3CONF;
  sync = MCDE_CHNL3SYNCHMOD;
  stat = MCDE_CHNL3STAT;
  bgcol = MCDE_CHNL3BCKGNDCOL;
  mux = MCDE_CHNL3MUXING;
  return;
 }


 if (mcde->te_sync) {



  val = MCDE_CHNLXSYNCHMOD_SRC_SYNCH_HARDWARE
   << MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SHIFT;
  val |= MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_TE0
   << MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_SHIFT;
 } else {




  val = MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SOFTWARE
   << MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SHIFT;
  val |= MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_FORMATTER
   << MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_SHIFT;
 }
 writel(val, mcde->regs + sync);


 val = (mode->hdisplay - 1) << MCDE_CHNLXCONF_PPL_SHIFT;
 val |= (mode->vdisplay - 1) << MCDE_CHNLXCONF_LPF_SHIFT;
 writel(val, mcde->regs + conf);





 val = MCDE_CHNLXSTAT_CHNLBLBCKGND_EN |
  MCDE_CHNLXSTAT_CHNLRD;
 writel(val, mcde->regs + stat);
 writel(0, mcde->regs + bgcol);


 switch (fifo) {
 case 129:
  writel(MCDE_CHNLXMUXING_FIFO_ID_FIFO_A,
         mcde->regs + mux);
  break;
 case 128:
  writel(MCDE_CHNLXMUXING_FIFO_ID_FIFO_B,
         mcde->regs + mux);
  break;
 }
}
