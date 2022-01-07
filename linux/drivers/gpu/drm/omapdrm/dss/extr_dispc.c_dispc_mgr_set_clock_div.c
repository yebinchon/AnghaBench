
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
struct dispc_clock_info {int pck_div; int lck_div; int pck; int lck; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DSSDBG (char*,int ,int ) ;
 int dispc_mgr_set_lcd_divisor (struct dispc_device*,int,int ,int ) ;

void dispc_mgr_set_clock_div(struct dispc_device *dispc,
        enum omap_channel channel,
        const struct dispc_clock_info *cinfo)
{
 DSSDBG("lck = %lu (%u)\n", cinfo->lck, cinfo->lck_div);
 DSSDBG("pck = %lu (%u)\n", cinfo->pck, cinfo->pck_div);

 dispc_mgr_set_lcd_divisor(dispc, channel, cinfo->lck_div,
      cinfo->pck_div);
}
