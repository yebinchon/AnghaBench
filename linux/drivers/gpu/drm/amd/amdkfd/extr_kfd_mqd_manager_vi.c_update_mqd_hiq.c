
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_mqd {int cp_hqd_vmid; } ;
struct queue_properties {int vmid; } ;
struct mqd_manager {int dummy; } ;


 int MTYPE_UC ;
 int __update_mqd (struct mqd_manager*,void*,struct queue_properties*,int ,int ) ;
 struct vi_mqd* get_mqd (void*) ;

__attribute__((used)) static void update_mqd_hiq(struct mqd_manager *mm, void *mqd,
   struct queue_properties *q)
{
 struct vi_mqd *m;
 __update_mqd(mm, mqd, q, MTYPE_UC, 0);

 m = get_mqd(mqd);
 m->cp_hqd_vmid = q->vmid;
}
