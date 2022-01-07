
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_kcopyd_client {int kcopyd_work; int kcopyd_wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void wake(struct dm_kcopyd_client *kc)
{
 queue_work(kc->kcopyd_wq, &kc->kcopyd_work);
}
