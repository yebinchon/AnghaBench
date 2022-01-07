
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9_mqd {int cp_hqd_vmid; } ;
struct queue_properties {int vmid; } ;
struct mqd_manager {int dummy; } ;


 struct v9_mqd* get_mqd (void*) ;
 int update_mqd (struct mqd_manager*,void*,struct queue_properties*) ;

__attribute__((used)) static void update_mqd_hiq(struct mqd_manager *mm, void *mqd,
   struct queue_properties *q)
{
 struct v9_mqd *m;

 update_mqd(mm, mqd, q);


 m = get_mqd(mqd);
 m->cp_hqd_vmid = q->vmid;
}
