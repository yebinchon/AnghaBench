
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dispc_device {int* fifo_assignment; scalar_t__* fifo_size; TYPE_1__* feat; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
struct TYPE_2__ {int num_fifos; } ;



__attribute__((used)) static u32 dispc_ovl_get_fifo_size(struct dispc_device *dispc,
       enum omap_plane_id plane)
{
 int fifo;
 u32 size = 0;

 for (fifo = 0; fifo < dispc->feat->num_fifos; ++fifo) {
  if (dispc->fifo_assignment[fifo] == plane)
   size += dispc->fifo_size[fifo];
 }

 return size;
}
