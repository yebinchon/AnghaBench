
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vou_hw {scalar_t__ dtrc; } ;


 int DETILE_ARIDR_MODE_MASK ;
 int DETILE_ARID_IN_ARIDR ;
 scalar_t__ DTRC_ARID ;
 int DTRC_ARID0 (int) ;
 int DTRC_ARID1 (int) ;
 int DTRC_ARID2 (int) ;
 int DTRC_ARID3 (int) ;
 int DTRC_DECOMPRESS_BYPASS ;
 scalar_t__ DTRC_DETILE_CTRL ;
 scalar_t__ DTRC_F0_CTRL ;
 scalar_t__ DTRC_F1_CTRL ;
 int TILE2RASTESCAN_BYPASS_MODE ;
 int zx_writel (scalar_t__,int) ;
 int zx_writel_mask (scalar_t__,int ,int ) ;

__attribute__((used)) static void vou_dtrc_init(struct zx_vou_hw *vou)
{

 zx_writel_mask(vou->dtrc + DTRC_DETILE_CTRL,
         TILE2RASTESCAN_BYPASS_MODE, 0);


 zx_writel_mask(vou->dtrc + DTRC_DETILE_CTRL, DETILE_ARIDR_MODE_MASK,
         DETILE_ARID_IN_ARIDR);


 zx_writel_mask(vou->dtrc + DTRC_F0_CTRL, DTRC_DECOMPRESS_BYPASS,
         DTRC_DECOMPRESS_BYPASS);
 zx_writel_mask(vou->dtrc + DTRC_F1_CTRL, DTRC_DECOMPRESS_BYPASS,
         DTRC_DECOMPRESS_BYPASS);


 zx_writel(vou->dtrc + DTRC_ARID, DTRC_ARID3(0xf) | DTRC_ARID2(0xe) |
    DTRC_ARID1(0xf) | DTRC_ARID0(0xe));
}
