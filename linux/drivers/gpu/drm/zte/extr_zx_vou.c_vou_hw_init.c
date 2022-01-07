
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vou_hw {scalar_t__ osd; scalar_t__ otfppu; scalar_t__ timing; scalar_t__ vouctl; } ;


 scalar_t__ OSD_INT_CLRSTA ;
 int OSD_INT_ENABLE ;
 scalar_t__ OSD_INT_MSK ;
 scalar_t__ OSD_RST_CLR ;
 scalar_t__ OTFPPU_RSZ_DATA_SOURCE ;
 int RST_PER_FRAME ;
 scalar_t__ TIMING_INT_CTRL ;
 int TIMING_INT_ENABLE ;
 scalar_t__ TIMING_INT_STATE ;
 scalar_t__ VOU_CLK_EN ;
 scalar_t__ VOU_SOFT_RST ;
 int vou_dtrc_init (struct zx_vou_hw*) ;
 int zx_writel (scalar_t__,int) ;
 int zx_writel_mask (scalar_t__,int ,int ) ;

__attribute__((used)) static void vou_hw_init(struct zx_vou_hw *vou)
{

 zx_writel(vou->vouctl + VOU_SOFT_RST, ~0);


 zx_writel(vou->vouctl + VOU_CLK_EN, ~0);


 zx_writel(vou->osd + OSD_INT_CLRSTA, ~0);
 zx_writel(vou->timing + TIMING_INT_STATE, ~0);


 zx_writel(vou->osd + OSD_INT_MSK, OSD_INT_ENABLE);
 zx_writel(vou->timing + TIMING_INT_CTRL, TIMING_INT_ENABLE);


 zx_writel(vou->otfppu + OTFPPU_RSZ_DATA_SOURCE, 0x2a);





 zx_writel_mask(vou->osd + OSD_RST_CLR, RST_PER_FRAME, RST_PER_FRAME);

 vou_dtrc_init(vou);
}
