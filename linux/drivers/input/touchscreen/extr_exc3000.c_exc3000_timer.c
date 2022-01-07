
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct exc3000_data {int input; } ;


 struct exc3000_data* data ;
 struct exc3000_data* from_timer (int ,struct timer_list*,int ) ;
 int input_mt_sync_frame (int ) ;
 int input_sync (int ) ;
 int timer ;

__attribute__((used)) static void exc3000_timer(struct timer_list *t)
{
 struct exc3000_data *data = from_timer(data, t, timer);

 input_mt_sync_frame(data->input);
 input_sync(data->input);
}
