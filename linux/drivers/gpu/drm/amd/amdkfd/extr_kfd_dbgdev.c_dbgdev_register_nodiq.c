
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dbgdev {int * kq; } ;



__attribute__((used)) static int dbgdev_register_nodiq(struct kfd_dbgdev *dbgdev)
{





 dbgdev->kq = ((void*)0);

 return 0;
}
