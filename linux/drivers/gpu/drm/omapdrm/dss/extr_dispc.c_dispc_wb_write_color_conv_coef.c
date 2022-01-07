
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
struct csc_coef_rgb2yuv {int full_range; int cbb; int cbr; int cbg; int crg; int crb; int yb; int crr; int yr; int yg; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int CVAL (int ,int ) ;
 int DISPC_OVL_ATTRIBUTES (int const) ;
 int DISPC_OVL_CONV_COEF (int const,int) ;
 int OMAP_DSS_WB ;
 int REG_FLD_MOD (struct dispc_device*,int ,int ,int,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_wb_write_color_conv_coef(struct dispc_device *dispc,
        const struct csc_coef_rgb2yuv *ct)
{
 const enum omap_plane_id plane = OMAP_DSS_WB;



 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 0), (FLD_VAL(ct->yg, 26, 16) | FLD_VAL(ct->yr, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 1), (FLD_VAL(ct->crr, 26, 16) | FLD_VAL(ct->yb, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 2), (FLD_VAL(ct->crb, 26, 16) | FLD_VAL(ct->crg, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 3), (FLD_VAL(ct->cbg, 26, 16) | FLD_VAL(ct->cbr, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 4), (FLD_VAL(0, 26, 16) | FLD_VAL(ct->cbb, 10, 0)));

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), ct->full_range, 11, 11);


}
