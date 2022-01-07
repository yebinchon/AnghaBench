
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_lvds {TYPE_1__* soc_data; int grf; TYPE_2__* dev; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {int grf_soc_con6; int has_vop_sel; } ;


 int RK3288_LVDS_SOC_CON6_SEL_VOP_LIT ;
 int drm_of_encoder_active_endpoint_id (int ,struct drm_encoder*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rockchip_lvds_set_vop_source(struct rockchip_lvds *lvds,
     struct drm_encoder *encoder)
{
 u32 val;
 int ret;

 if (!lvds->soc_data->has_vop_sel)
  return 0;

 ret = drm_of_encoder_active_endpoint_id(lvds->dev->of_node, encoder);
 if (ret < 0)
  return ret;

 val = RK3288_LVDS_SOC_CON6_SEL_VOP_LIT << 16;
 if (ret)
  val |= RK3288_LVDS_SOC_CON6_SEL_VOP_LIT;

 ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con6, val);
 if (ret < 0)
  return ret;

 return 0;
}
