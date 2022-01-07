
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_logical_unit {int work; } ;


 int fw_workqueue ;
 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void sbp2_queue_work(struct sbp2_logical_unit *lu, unsigned long delay)
{
 queue_delayed_work(fw_workqueue, &lu->work, delay);
}
