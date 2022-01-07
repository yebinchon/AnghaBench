
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcde {int regs; int dev; } ;
typedef enum mcde_extsrc { ____Placeholder_mcde_extsrc } mcde_extsrc ;
 int EINVAL ;
 int MCDE_EXTSRC0CONF ;
 int MCDE_EXTSRC0CR ;
 int MCDE_EXTSRC1CONF ;
 int MCDE_EXTSRC1CR ;
 int MCDE_EXTSRC2CONF ;
 int MCDE_EXTSRC2CR ;
 int MCDE_EXTSRC3CONF ;
 int MCDE_EXTSRC3CR ;
 int MCDE_EXTSRC4CONF ;
 int MCDE_EXTSRC4CR ;
 int MCDE_EXTSRC5CONF ;
 int MCDE_EXTSRC5CR ;
 int MCDE_EXTSRC6CONF ;
 int MCDE_EXTSRC6CR ;
 int MCDE_EXTSRC7CONF ;
 int MCDE_EXTSRC7CR ;
 int MCDE_EXTSRC8CONF ;
 int MCDE_EXTSRC8CR ;
 int MCDE_EXTSRC9CONF ;
 int MCDE_EXTSRC9CR ;
 int MCDE_EXTSRCXCONF_BGR ;
 int MCDE_EXTSRCXCONF_BPP_ARGB4444 ;
 int MCDE_EXTSRCXCONF_BPP_ARGB8888 ;
 int MCDE_EXTSRCXCONF_BPP_IRGB1555 ;
 int MCDE_EXTSRCXCONF_BPP_RGB444 ;
 int MCDE_EXTSRCXCONF_BPP_RGB565 ;
 int MCDE_EXTSRCXCONF_BPP_RGB888 ;
 int MCDE_EXTSRCXCONF_BPP_SHIFT ;
 int MCDE_EXTSRCXCONF_BPP_XRGB8888 ;
 int MCDE_EXTSRCXCONF_BPP_YCBCR422 ;
 int MCDE_EXTSRCXCONF_BUF_ID_SHIFT ;
 int MCDE_EXTSRCXCONF_BUF_NB_SHIFT ;
 int MCDE_EXTSRCXCONF_PRI_OVLID_SHIFT ;
 int MCDE_EXTSRCXCR_MULTIOVL_CTRL_PRIMARY ;
 int MCDE_EXTSRCXCR_SEL_MOD_SOFTWARE_SEL ;
 int dev_err (int ,char*,int) ;
 int writel (int,int) ;

__attribute__((used)) static int mcde_configure_extsrc(struct mcde *mcde, enum mcde_extsrc src,
     u32 format)
{
 u32 val;
 u32 conf;
 u32 cr;

 switch (src) {
 case 137:
  conf = MCDE_EXTSRC0CONF;
  cr = MCDE_EXTSRC0CR;
  break;
 case 136:
  conf = MCDE_EXTSRC1CONF;
  cr = MCDE_EXTSRC1CR;
  break;
 case 135:
  conf = MCDE_EXTSRC2CONF;
  cr = MCDE_EXTSRC2CR;
  break;
 case 134:
  conf = MCDE_EXTSRC3CONF;
  cr = MCDE_EXTSRC3CR;
  break;
 case 133:
  conf = MCDE_EXTSRC4CONF;
  cr = MCDE_EXTSRC4CR;
  break;
 case 132:
  conf = MCDE_EXTSRC5CONF;
  cr = MCDE_EXTSRC5CR;
  break;
 case 131:
  conf = MCDE_EXTSRC6CONF;
  cr = MCDE_EXTSRC6CR;
  break;
 case 130:
  conf = MCDE_EXTSRC7CONF;
  cr = MCDE_EXTSRC7CR;
  break;
 case 129:
  conf = MCDE_EXTSRC8CONF;
  cr = MCDE_EXTSRC8CR;
  break;
 case 128:
  conf = MCDE_EXTSRC9CONF;
  cr = MCDE_EXTSRC9CR;
  break;
 }






 val = 0 << MCDE_EXTSRCXCONF_BUF_ID_SHIFT;
 val |= 1 << MCDE_EXTSRCXCONF_BUF_NB_SHIFT;
 val |= 0 << MCDE_EXTSRCXCONF_PRI_OVLID_SHIFT;




 switch (format) {
 case 149:
  val |= MCDE_EXTSRCXCONF_BPP_ARGB8888 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  val |= MCDE_EXTSRCXCONF_BGR;
  break;
 case 151:
  val |= MCDE_EXTSRCXCONF_BPP_ARGB8888 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 case 139:
  val |= MCDE_EXTSRCXCONF_BPP_XRGB8888 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  val |= MCDE_EXTSRCXCONF_BGR;
  break;
 case 142:
  val |= MCDE_EXTSRCXCONF_BPP_XRGB8888 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 case 145:
  val |= MCDE_EXTSRCXCONF_BPP_RGB888 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  val |= MCDE_EXTSRCXCONF_BGR;
  break;
 case 147:
  val |= MCDE_EXTSRCXCONF_BPP_RGB888 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 case 150:
  val |= MCDE_EXTSRCXCONF_BPP_ARGB4444 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  val |= MCDE_EXTSRCXCONF_BGR;
  break;
 case 152:
  val |= MCDE_EXTSRCXCONF_BPP_ARGB4444 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 case 140:
  val |= MCDE_EXTSRCXCONF_BPP_RGB444 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  val |= MCDE_EXTSRCXCONF_BGR;
  break;
 case 143:
  val |= MCDE_EXTSRCXCONF_BPP_RGB444 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 case 141:
  val |= MCDE_EXTSRCXCONF_BPP_IRGB1555 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  val |= MCDE_EXTSRCXCONF_BGR;
  break;
 case 144:
  val |= MCDE_EXTSRCXCONF_BPP_IRGB1555 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 case 146:
  val |= MCDE_EXTSRCXCONF_BPP_RGB565 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  val |= MCDE_EXTSRCXCONF_BGR;
  break;
 case 148:
  val |= MCDE_EXTSRCXCONF_BPP_RGB565 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 case 138:
  val |= MCDE_EXTSRCXCONF_BPP_YCBCR422 <<
   MCDE_EXTSRCXCONF_BPP_SHIFT;
  break;
 default:
  dev_err(mcde->dev, "Unknown pixel format 0x%08x\n",
   format);
  return -EINVAL;
 }
 writel(val, mcde->regs + conf);


 val = MCDE_EXTSRCXCR_SEL_MOD_SOFTWARE_SEL;
 val |= MCDE_EXTSRCXCR_MULTIOVL_CTRL_PRIMARY;
 writel(val, mcde->regs + cr);

 return 0;
}
