
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct gb_operation {int work; } ;


 int ETIMEDOUT ;
 struct gb_operation* from_timer (int ,struct timer_list*,int ) ;
 int gb_operation_completion_wq ;
 scalar_t__ gb_operation_result_set (struct gb_operation*,int ) ;
 struct gb_operation* operation ;
 int queue_work (int ,int *) ;
 int timer ;

__attribute__((used)) static void gb_operation_timeout(struct timer_list *t)
{
 struct gb_operation *operation = from_timer(operation, t, timer);

 if (gb_operation_result_set(operation, -ETIMEDOUT)) {




  queue_work(gb_operation_completion_wq, &operation->work);
 }
}
