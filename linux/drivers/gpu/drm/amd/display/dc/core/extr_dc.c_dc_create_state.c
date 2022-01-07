
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
struct TYPE_2__ {int dml; } ;
struct dc_state {int refcount; TYPE_1__ bw_ctx; } ;
struct dc {int dml; } ;


 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct dc_state* kvzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dc_state *dc_create_state(struct dc *dc)
{
 struct dc_state *context = kvzalloc(sizeof(struct dc_state),
         GFP_KERNEL);

 if (!context)
  return ((void*)0);
 kref_init(&context->refcount);

 return context;
}
