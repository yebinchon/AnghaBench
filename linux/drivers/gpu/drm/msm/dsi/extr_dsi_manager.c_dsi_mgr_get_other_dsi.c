
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi {int dummy; } ;
struct TYPE_2__ {struct msm_dsi** dsi; } ;


 int DSI_MAX ;
 TYPE_1__ msm_dsim_glb ;

__attribute__((used)) static inline struct msm_dsi *dsi_mgr_get_other_dsi(int id)
{
 return msm_dsim_glb.dsi[(id + 1) % DSI_MAX];
}
