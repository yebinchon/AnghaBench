
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
struct csc_coef_yuv2rgb {int full_range; int bcb; int by; int bcr; int gcr; int gcb; int rcb; int gy; int ry; int rcr; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int CVAL (int ,int ) ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int DISPC_OVL_CONV_COEF (int,int) ;
 int REG_FLD_MOD (struct dispc_device*,int ,int ,int,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_ovl_write_color_conv_coef(struct dispc_device *dispc,
         enum omap_plane_id plane,
         const struct csc_coef_yuv2rgb *ct)
{


 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 0), (FLD_VAL(ct->rcr, 26, 16) | FLD_VAL(ct->ry, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 1), (FLD_VAL(ct->gy, 26, 16) | FLD_VAL(ct->rcb, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 2), (FLD_VAL(ct->gcb, 26, 16) | FLD_VAL(ct->gcr, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 3), (FLD_VAL(ct->bcr, 26, 16) | FLD_VAL(ct->by, 10, 0)));
 dispc_write_reg(dispc, DISPC_OVL_CONV_COEF(plane, 4), (FLD_VAL(0, 26, 16) | FLD_VAL(ct->bcb, 10, 0)));

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), ct->full_range, 11, 11);


}
