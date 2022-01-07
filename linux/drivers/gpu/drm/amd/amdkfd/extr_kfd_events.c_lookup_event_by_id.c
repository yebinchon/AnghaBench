
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kfd_process {int event_idr; } ;
struct kfd_event {int dummy; } ;


 struct kfd_event* idr_find (int *,int ) ;

__attribute__((used)) static struct kfd_event *lookup_event_by_id(struct kfd_process *p, uint32_t id)
{
 return idr_find(&p->event_idr, id);
}
