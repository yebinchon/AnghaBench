
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;


 int DLM_LOCK_NL ;
 int dlm_lock_sync (struct dlm_lock_resource*,int ) ;

__attribute__((used)) static int dlm_unlock_sync(struct dlm_lock_resource *res)
{
 return dlm_lock_sync(res, DLM_LOCK_NL);
}
