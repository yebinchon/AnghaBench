
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dc_plane_state {scalar_t__ irq_source; } ;


 scalar_t__ DC_IRQ_SOURCE_PFLIP1 ;

void enable_surface_flip_reporting(struct dc_plane_state *plane_state,
  uint32_t controller_id)
{
 plane_state->irq_source = controller_id + DC_IRQ_SOURCE_PFLIP1 - 1;

}
