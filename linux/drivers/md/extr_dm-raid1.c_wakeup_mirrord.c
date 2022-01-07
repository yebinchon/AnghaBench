
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int kmirrord_work; int kmirrord_wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void wakeup_mirrord(void *context)
{
 struct mirror_set *ms = context;

 queue_work(ms->kmirrord_wq, &ms->kmirrord_work);
}
