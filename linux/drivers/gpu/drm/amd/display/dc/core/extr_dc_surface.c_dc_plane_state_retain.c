
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_plane_state {int refcount; } ;


 int kref_get (int *) ;

void dc_plane_state_retain(struct dc_plane_state *plane_state)
{
 kref_get(&plane_state->refcount);
}
