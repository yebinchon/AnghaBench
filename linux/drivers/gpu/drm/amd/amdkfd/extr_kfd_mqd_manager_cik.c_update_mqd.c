
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_properties {int dummy; } ;
struct mqd_manager {int dummy; } ;


 int __update_mqd (struct mqd_manager*,void*,struct queue_properties*,int) ;

__attribute__((used)) static void update_mqd(struct mqd_manager *mm, void *mqd,
   struct queue_properties *q)
{
 __update_mqd(mm, mqd, q, 1);
}
