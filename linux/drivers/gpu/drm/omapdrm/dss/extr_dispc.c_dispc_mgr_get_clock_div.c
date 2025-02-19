
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
struct dispc_clock_info {unsigned long lck_div; int pck_div; unsigned long lck; int pck; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_DIVISORo (int) ;
 void* REG_GET (struct dispc_device*,int ,int,int) ;
 unsigned long dispc_fclk_rate (struct dispc_device*) ;

int dispc_mgr_get_clock_div(struct dispc_device *dispc,
       enum omap_channel channel,
       struct dispc_clock_info *cinfo)
{
 unsigned long fck;

 fck = dispc_fclk_rate(dispc);

 cinfo->lck_div = REG_GET(dispc, DISPC_DIVISORo(channel), 23, 16);
 cinfo->pck_div = REG_GET(dispc, DISPC_DIVISORo(channel), 7, 0);

 cinfo->lck = fck / cinfo->lck_div;
 cinfo->pck = cinfo->lck / cinfo->pck_div;

 return 0;
}
