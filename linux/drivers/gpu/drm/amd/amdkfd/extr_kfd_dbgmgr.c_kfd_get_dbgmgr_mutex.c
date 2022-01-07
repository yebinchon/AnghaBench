
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 struct mutex kfd_dbgmgr_mutex ;

struct mutex *kfd_get_dbgmgr_mutex(void)
{
 return &kfd_dbgmgr_mutex;
}
