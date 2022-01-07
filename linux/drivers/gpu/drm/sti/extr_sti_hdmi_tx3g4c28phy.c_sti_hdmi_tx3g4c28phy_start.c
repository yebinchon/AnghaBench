
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int clock; } ;
struct sti_hdmi {int event_received; int wait_event; TYPE_1__ mode; } ;
struct TYPE_6__ {scalar_t__ min_tmds_freq; scalar_t__ max_tmds_freq; scalar_t__* config; } ;
struct TYPE_5__ {scalar_t__ min; scalar_t__ max; scalar_t__ idf; scalar_t__ odf; } ;


 int DRM_DEBUG_DRIVER (char*,...) ;
 int DRM_ERROR (char*,...) ;
 int HDMI_SRZ_CALCODE_EXT ;
 int HDMI_SRZ_CFG ;
 scalar_t__ HDMI_SRZ_CFG_EN ;
 scalar_t__ HDMI_SRZ_CFG_EN_BIASRES_DETECTION ;
 scalar_t__ HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION ;
 scalar_t__ HDMI_SRZ_CFG_EN_SRC_TERMINATION ;
 scalar_t__ HDMI_SRZ_CFG_EXTERNAL_DATA ;
 scalar_t__ HDMI_SRZ_CFG_INTERNAL_MASK ;
 int HDMI_SRZ_ICNTL ;
 int HDMI_SRZ_PLL_CFG ;
 int HDMI_STA ;
 int HDMI_STA_DLL_LCK ;
 int HDMI_TIMEOUT_PLL_LOCK ;
 int NB_HDMI_PHY_CONFIG ;
 int NB_PLL_MODE ;
 scalar_t__ PLL_CFG_EN ;
 scalar_t__ PLL_CFG_IDF_SHIFT ;
 int PLL_CFG_NDIV_SHIFT ;
 scalar_t__ PLL_CFG_ODF_SHIFT ;
 int hdmi_read (struct sti_hdmi*,int ) ;
 int hdmi_write (struct sti_hdmi*,int,int ) ;
 TYPE_3__* hdmiphy_config ;
 int msecs_to_jiffies (int ) ;
 TYPE_2__* plldividers ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static bool sti_hdmi_tx3g4c28phy_start(struct sti_hdmi *hdmi)
{
 u32 ckpxpll = hdmi->mode.clock * 1000;
 u32 val, tmdsck, idf, odf, pllctrl = 0;
 bool foundplldivides = 0;
 int i;

 DRM_DEBUG_DRIVER("ckpxpll = %dHz\n", ckpxpll);

 for (i = 0; i < NB_PLL_MODE; i++) {
  if (ckpxpll >= plldividers[i].min &&
      ckpxpll < plldividers[i].max) {
   idf = plldividers[i].idf;
   odf = plldividers[i].odf;
   foundplldivides = 1;
   break;
  }
 }

 if (!foundplldivides) {
  DRM_ERROR("input TMDS clock speed (%d) not supported\n",
     ckpxpll);
  goto err;
 }


 tmdsck = ckpxpll;
 pllctrl |= 40 << PLL_CFG_NDIV_SHIFT;

 if (tmdsck > 340000000) {
  DRM_ERROR("output TMDS clock (%d) out of range\n", tmdsck);
  goto err;
 }

 pllctrl |= idf << PLL_CFG_IDF_SHIFT;
 pllctrl |= odf << PLL_CFG_ODF_SHIFT;




 hdmi->event_received = 0;
 DRM_DEBUG_DRIVER("pllctrl = 0x%x\n", pllctrl);
 hdmi_write(hdmi, (pllctrl | PLL_CFG_EN), HDMI_SRZ_PLL_CFG);


 wait_event_interruptible_timeout(hdmi->wait_event,
      hdmi->event_received == 1,
      msecs_to_jiffies
      (HDMI_TIMEOUT_PLL_LOCK));

 if ((hdmi_read(hdmi, HDMI_STA) & HDMI_STA_DLL_LCK) == 0) {
  DRM_ERROR("hdmi phy pll not locked\n");
  goto err;
 }

 DRM_DEBUG_DRIVER("got PHY PLL Lock\n");

 val = (HDMI_SRZ_CFG_EN |
        HDMI_SRZ_CFG_EXTERNAL_DATA |
        HDMI_SRZ_CFG_EN_BIASRES_DETECTION |
        HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION);

 if (tmdsck > 165000000)
  val |= HDMI_SRZ_CFG_EN_SRC_TERMINATION;






 for (i = 0; i < NB_HDMI_PHY_CONFIG; i++) {
  if ((hdmiphy_config[i].min_tmds_freq <= tmdsck) &&
      (hdmiphy_config[i].max_tmds_freq >= tmdsck)) {
   val |= (hdmiphy_config[i].config[0]
    & ~HDMI_SRZ_CFG_INTERNAL_MASK);
   hdmi_write(hdmi, val, HDMI_SRZ_CFG);

   val = hdmiphy_config[i].config[1];
   hdmi_write(hdmi, val, HDMI_SRZ_ICNTL);

   val = hdmiphy_config[i].config[2];
   hdmi_write(hdmi, val, HDMI_SRZ_CALCODE_EXT);

   DRM_DEBUG_DRIVER("serializer cfg 0x%x 0x%x 0x%x\n",
      hdmiphy_config[i].config[0],
      hdmiphy_config[i].config[1],
      hdmiphy_config[i].config[2]);
   return 1;
  }
 }





 hdmi_write(hdmi, val, HDMI_SRZ_CFG);
 hdmi_write(hdmi, 0x0, HDMI_SRZ_ICNTL);
 hdmi_write(hdmi, 0x0, HDMI_SRZ_CALCODE_EXT);

 return 1;

err:
 return 0;
}
