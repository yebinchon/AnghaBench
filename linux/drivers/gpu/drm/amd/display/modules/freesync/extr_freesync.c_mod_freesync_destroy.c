
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_freesync {int dummy; } ;
struct core_freesync {int dummy; } ;


 struct core_freesync* MOD_FREESYNC_TO_CORE (struct mod_freesync*) ;
 int kfree (struct core_freesync*) ;

void mod_freesync_destroy(struct mod_freesync *mod_freesync)
{
 struct core_freesync *core_freesync = ((void*)0);
 if (mod_freesync == ((void*)0))
  return;
 core_freesync = MOD_FREESYNC_TO_CORE(mod_freesync);
 kfree(core_freesync);
}
