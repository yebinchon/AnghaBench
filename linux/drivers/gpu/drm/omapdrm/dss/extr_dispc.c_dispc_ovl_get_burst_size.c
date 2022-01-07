
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dispc_device {TYPE_1__* feat; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
struct TYPE_2__ {int burst_size_unit; } ;



__attribute__((used)) static u32 dispc_ovl_get_burst_size(struct dispc_device *dispc,
        enum omap_plane_id plane)
{

 return dispc->feat->burst_size_unit * 8;
}
