
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int ref; } ;


 int kfd_process_ref_release ;
 int kref_put (int *,int ) ;

void kfd_unref_process(struct kfd_process *p)
{
 kref_put(&p->ref, kfd_process_ref_release);
}
