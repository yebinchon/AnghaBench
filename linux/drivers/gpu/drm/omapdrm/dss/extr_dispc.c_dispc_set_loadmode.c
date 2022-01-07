
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_dss_load_mode { ____Placeholder_omap_dss_load_mode } omap_dss_load_mode ;


 int DISPC_CONFIG ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;

__attribute__((used)) static void dispc_set_loadmode(struct dispc_device *dispc,
          enum omap_dss_load_mode mode)
{
 REG_FLD_MOD(dispc, DISPC_CONFIG, mode, 2, 1);
}
