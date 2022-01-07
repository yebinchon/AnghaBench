
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_plane_state {int refcount; } ;
struct dc {int ctx; } ;


 int GFP_KERNEL ;
 int construct (int ,struct dc_plane_state*) ;
 int kref_init (int *) ;
 struct dc_plane_state* kvzalloc (int,int ) ;

struct dc_plane_state *dc_create_plane_state(struct dc *dc)
{
 struct dc *core_dc = dc;

 struct dc_plane_state *plane_state = kvzalloc(sizeof(*plane_state),
            GFP_KERNEL);

 if (((void*)0) == plane_state)
  return ((void*)0);

 kref_init(&plane_state->refcount);
 construct(core_dc->ctx, plane_state);

 return plane_state;
}
