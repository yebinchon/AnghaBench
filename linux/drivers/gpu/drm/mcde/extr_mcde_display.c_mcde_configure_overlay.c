
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcde {int regs; int stride; int dev; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
typedef enum mcde_overlay { ____Placeholder_mcde_overlay } mcde_overlay ;
typedef enum mcde_extsrc { ____Placeholder_mcde_extsrc } mcde_extsrc ;
typedef enum mcde_channel { ____Placeholder_mcde_channel } mcde_channel ;
 int MCDE_OVL0COMP ;
 int MCDE_OVL0CONF ;
 int MCDE_OVL0CONF2 ;
 int MCDE_OVL0CR ;
 int MCDE_OVL0CROP ;
 int MCDE_OVL0LJINC ;
 int MCDE_OVL1COMP ;
 int MCDE_OVL1CONF ;
 int MCDE_OVL1CONF2 ;
 int MCDE_OVL1CR ;
 int MCDE_OVL1CROP ;
 int MCDE_OVL1LJINC ;
 int MCDE_OVL2COMP ;
 int MCDE_OVL2CONF ;
 int MCDE_OVL2CONF2 ;
 int MCDE_OVL2CR ;
 int MCDE_OVL2CROP ;
 int MCDE_OVL2LJINC ;
 int MCDE_OVL3COMP ;
 int MCDE_OVL3CONF ;
 int MCDE_OVL3CONF2 ;
 int MCDE_OVL3CR ;
 int MCDE_OVL3CROP ;
 int MCDE_OVL3LJINC ;
 int MCDE_OVL4COMP ;
 int MCDE_OVL4CONF ;
 int MCDE_OVL4CONF2 ;
 int MCDE_OVL4CR ;
 int MCDE_OVL4CROP ;
 int MCDE_OVL4LJINC ;
 int MCDE_OVL5COMP ;
 int MCDE_OVL5CONF ;
 int MCDE_OVL5CONF2 ;
 int MCDE_OVL5CR ;
 int MCDE_OVL5CROP ;
 int MCDE_OVL5LJINC ;
 int MCDE_OVLXCOMP_CH_ID_SHIFT ;
 int MCDE_OVLXCONF2_ALPHAVALUE_SHIFT ;
 int MCDE_OVLXCONF2_BP_PER_PIXEL_ALPHA ;
 int MCDE_OVLXCONF2_OPQ ;
 int MCDE_OVLXCONF2_PIXELFETCHERWATERMARKLEVEL_SHIFT ;
 int MCDE_OVLXCONF_EXTSRC_ID_SHIFT ;
 int MCDE_OVLXCONF_LPF_SHIFT ;
 int MCDE_OVLXCONF_PPL_SHIFT ;
 int MCDE_OVLXCR_BURSTSIZE_8W ;
 int MCDE_OVLXCR_BURSTSIZE_SHIFT ;
 int MCDE_OVLXCR_COLCCTRL_DISABLED ;
 int MCDE_OVLXCR_MAXOUTSTANDING_8_REQ ;
 int MCDE_OVLXCR_MAXOUTSTANDING_SHIFT ;
 int MCDE_OVLXCR_OVLEN ;
 int MCDE_OVLXCR_ROTBURSTSIZE_8W ;
 int MCDE_OVLXCR_ROTBURSTSIZE_SHIFT ;
 int dev_err (int ,char*,int) ;
 int writel (int,int) ;

__attribute__((used)) static void mcde_configure_overlay(struct mcde *mcde, enum mcde_overlay ovl,
       enum mcde_extsrc src,
       enum mcde_channel ch,
       const struct drm_display_mode *mode,
       u32 format)
{
 u32 val;
 u32 conf1;
 u32 conf2;
 u32 crop;
 u32 ljinc;
 u32 cr;
 u32 comp;

 switch (ovl) {
 case 133:
  conf1 = MCDE_OVL0CONF;
  conf2 = MCDE_OVL0CONF2;
  crop = MCDE_OVL0CROP;
  ljinc = MCDE_OVL0LJINC;
  cr = MCDE_OVL0CR;
  comp = MCDE_OVL0COMP;
  break;
 case 132:
  conf1 = MCDE_OVL1CONF;
  conf2 = MCDE_OVL1CONF2;
  crop = MCDE_OVL1CROP;
  ljinc = MCDE_OVL1LJINC;
  cr = MCDE_OVL1CR;
  comp = MCDE_OVL1COMP;
  break;
 case 131:
  conf1 = MCDE_OVL2CONF;
  conf2 = MCDE_OVL2CONF2;
  crop = MCDE_OVL2CROP;
  ljinc = MCDE_OVL2LJINC;
  cr = MCDE_OVL2CR;
  comp = MCDE_OVL2COMP;
  break;
 case 130:
  conf1 = MCDE_OVL3CONF;
  conf2 = MCDE_OVL3CONF2;
  crop = MCDE_OVL3CROP;
  ljinc = MCDE_OVL3LJINC;
  cr = MCDE_OVL3CR;
  comp = MCDE_OVL3COMP;
  break;
 case 129:
  conf1 = MCDE_OVL4CONF;
  conf2 = MCDE_OVL4CONF2;
  crop = MCDE_OVL4CROP;
  ljinc = MCDE_OVL4LJINC;
  cr = MCDE_OVL4CR;
  comp = MCDE_OVL4COMP;
  break;
 case 128:
  conf1 = MCDE_OVL5CONF;
  conf2 = MCDE_OVL5CONF2;
  crop = MCDE_OVL5CROP;
  ljinc = MCDE_OVL5LJINC;
  cr = MCDE_OVL5CR;
  comp = MCDE_OVL5COMP;
  break;
 }

 val = mode->hdisplay << MCDE_OVLXCONF_PPL_SHIFT;
 val |= mode->vdisplay << MCDE_OVLXCONF_LPF_SHIFT;

 val |= src << MCDE_OVLXCONF_EXTSRC_ID_SHIFT;
 writel(val, mcde->regs + conf1);

 val = MCDE_OVLXCONF2_BP_PER_PIXEL_ALPHA;
 val |= 0xff << MCDE_OVLXCONF2_ALPHAVALUE_SHIFT;

 switch (format) {
 case 143:
 case 145:
 case 144:
 case 146:
 case 136:
 case 138:

  break;
 case 135:
 case 137:
 case 139:
 case 141:
 case 140:
 case 142:
 case 134:
  val |= MCDE_OVLXCONF2_OPQ;
  break;
 default:
  dev_err(mcde->dev, "Unknown pixel format 0x%08x\n",
   format);
  break;
 }

 val |= 48 << MCDE_OVLXCONF2_PIXELFETCHERWATERMARKLEVEL_SHIFT;
 writel(val, mcde->regs + conf2);


 writel(mcde->stride, mcde->regs + ljinc);

 writel(0, mcde->regs + crop);


 val = MCDE_OVLXCR_OVLEN;
 val |= MCDE_OVLXCR_COLCCTRL_DISABLED;
 val |= MCDE_OVLXCR_BURSTSIZE_8W <<
  MCDE_OVLXCR_BURSTSIZE_SHIFT;
 val |= MCDE_OVLXCR_MAXOUTSTANDING_8_REQ <<
  MCDE_OVLXCR_MAXOUTSTANDING_SHIFT;

 val |= MCDE_OVLXCR_ROTBURSTSIZE_8W <<
  MCDE_OVLXCR_ROTBURSTSIZE_SHIFT;
 writel(val, mcde->regs + cr);





 val = ch << MCDE_OVLXCOMP_CH_ID_SHIFT;
 writel(val, mcde->regs + comp);
}
