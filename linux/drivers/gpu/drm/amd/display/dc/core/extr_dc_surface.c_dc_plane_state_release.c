
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_plane_state {int refcount; } ;


 int dc_plane_state_free ;
 int kref_put (int *,int ) ;

void dc_plane_state_release(struct dc_plane_state *plane_state)
{
 kref_put(&plane_state->refcount, dc_plane_state_free);
}
