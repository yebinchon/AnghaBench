
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct videomode {unsigned int pixelclock; int flags; int vactive; int hactive; } ;
struct TYPE_9__ {int clkin; } ;
struct TYPE_7__ {TYPE_3__ pll; } ;
struct hdmi_wp_data {int dummy; } ;
struct TYPE_8__ {struct videomode vm; } ;
struct omap_hdmi {TYPE_1__ pll; struct hdmi_wp_data wp; int output; TYPE_2__ cfg; int core; int phy; } ;
struct dss_pll_clock_info {int * clkout; int clkdco; int member_0; } ;


 int DISPLAY_FLAGS_DOUBLECLK ;
 int DSSDBG (char*,...) ;
 int DSSERR (char*) ;
 int EIO ;
 int HDMI_IRQ_CORE ;
 int HDMI_IRQ_LINK_CONNECT ;
 int HDMI_IRQ_LINK_DISCONNECT ;
 int HDMI_PHYPWRCMD_LDOON ;
 int HDMI_PHYPWRCMD_OFF ;
 int clk_get_rate (int ) ;
 int dss_mgr_disable (int *) ;
 int dss_mgr_enable (int *) ;
 int dss_pll_calc_b (TYPE_3__*,int ,unsigned int,struct dss_pll_clock_info*) ;
 int dss_pll_disable (TYPE_3__*) ;
 int dss_pll_enable (TYPE_3__*) ;
 int dss_pll_set_config (TYPE_3__*,struct dss_pll_clock_info*) ;
 int hdmi4_configure (int *,struct hdmi_wp_data*,TYPE_2__*) ;
 int hdmi_phy_configure (int *,int ,int ) ;
 int hdmi_power_off_core (struct omap_hdmi*) ;
 int hdmi_power_on_core (struct omap_hdmi*) ;
 int hdmi_wp_clear_irqenable (struct hdmi_wp_data*,int ) ;
 int hdmi_wp_set_irqenable (struct hdmi_wp_data*,int) ;
 int hdmi_wp_set_irqstatus (struct hdmi_wp_data*,int ) ;
 int hdmi_wp_set_phy_pwr (struct hdmi_wp_data*,int ) ;
 int hdmi_wp_video_start (struct hdmi_wp_data*) ;

__attribute__((used)) static int hdmi_power_on_full(struct omap_hdmi *hdmi)
{
 int r;
 const struct videomode *vm;
 struct hdmi_wp_data *wp = &hdmi->wp;
 struct dss_pll_clock_info hdmi_cinfo = { 0 };
 unsigned int pc;

 r = hdmi_power_on_core(hdmi);
 if (r)
  return r;


 hdmi_wp_clear_irqenable(wp, ~HDMI_IRQ_CORE);
 hdmi_wp_set_irqstatus(wp, ~HDMI_IRQ_CORE);

 vm = &hdmi->cfg.vm;

 DSSDBG("hdmi_power_on hactive= %d vactive = %d\n", vm->hactive,
        vm->vactive);

 pc = vm->pixelclock;
 if (vm->flags & DISPLAY_FLAGS_DOUBLECLK)
  pc *= 2;


 pc *= 10;

 dss_pll_calc_b(&hdmi->pll.pll, clk_get_rate(hdmi->pll.pll.clkin),
  pc, &hdmi_cinfo);

 r = dss_pll_enable(&hdmi->pll.pll);
 if (r) {
  DSSERR("Failed to enable PLL\n");
  goto err_pll_enable;
 }

 r = dss_pll_set_config(&hdmi->pll.pll, &hdmi_cinfo);
 if (r) {
  DSSERR("Failed to configure PLL\n");
  goto err_pll_cfg;
 }

 r = hdmi_phy_configure(&hdmi->phy, hdmi_cinfo.clkdco,
  hdmi_cinfo.clkout[0]);
 if (r) {
  DSSDBG("Failed to configure PHY\n");
  goto err_phy_cfg;
 }

 r = hdmi_wp_set_phy_pwr(wp, HDMI_PHYPWRCMD_LDOON);
 if (r)
  goto err_phy_pwr;

 hdmi4_configure(&hdmi->core, &hdmi->wp, &hdmi->cfg);

 r = dss_mgr_enable(&hdmi->output);
 if (r)
  goto err_mgr_enable;

 r = hdmi_wp_video_start(&hdmi->wp);
 if (r)
  goto err_vid_enable;

 hdmi_wp_set_irqenable(wp,
  HDMI_IRQ_LINK_CONNECT | HDMI_IRQ_LINK_DISCONNECT);

 return 0;

err_vid_enable:
 dss_mgr_disable(&hdmi->output);
err_mgr_enable:
 hdmi_wp_set_phy_pwr(&hdmi->wp, HDMI_PHYPWRCMD_OFF);
err_phy_pwr:
err_phy_cfg:
err_pll_cfg:
 dss_pll_disable(&hdmi->pll.pll);
err_pll_enable:
 hdmi_power_off_core(hdmi);
 return -EIO;
}
