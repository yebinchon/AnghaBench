
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int kfd_locked ;

bool kfd_is_locked(void)
{
 return (atomic_read(&kfd_locked) > 0);
}
