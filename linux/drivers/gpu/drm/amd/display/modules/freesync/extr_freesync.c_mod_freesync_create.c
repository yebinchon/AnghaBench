
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_freesync {int dummy; } ;
struct dc {int dummy; } ;
struct core_freesync {struct mod_freesync public; struct dc* dc; } ;


 int GFP_KERNEL ;
 int kfree (struct core_freesync*) ;
 struct core_freesync* kzalloc (int,int ) ;

struct mod_freesync *mod_freesync_create(struct dc *dc)
{
 struct core_freesync *core_freesync =
   kzalloc(sizeof(struct core_freesync), GFP_KERNEL);

 if (core_freesync == ((void*)0))
  goto fail_alloc_context;

 if (dc == ((void*)0))
  goto fail_construct;

 core_freesync->dc = dc;
 return &core_freesync->public;

fail_construct:
 kfree(core_freesync);

fail_alloc_context:
 return ((void*)0);
}
