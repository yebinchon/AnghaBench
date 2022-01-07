
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct hidpp_ff_work_data {int effect_id; int work; int params; void* size; void* command; struct hidpp_ff_private_data* data; } ;
struct hidpp_ff_private_data {TYPE_1__* hidpp; int workqueue_size; int wq; } ;
struct TYPE_2__ {int hid_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int hid_warn (int ,char*,int) ;
 int hidpp_ff_work_handler ;
 struct hidpp_ff_work_data* kzalloc (int,int ) ;
 int memcpy (int ,void**,void*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int hidpp_ff_queue_work(struct hidpp_ff_private_data *data, int effect_id, u8 command, u8 *params, u8 size)
{
 struct hidpp_ff_work_data *wd = kzalloc(sizeof(*wd), GFP_KERNEL);
 int s;

 if (!wd)
  return -ENOMEM;

 INIT_WORK(&wd->work, hidpp_ff_work_handler);

 wd->data = data;
 wd->effect_id = effect_id;
 wd->command = command;
 wd->size = size;
 memcpy(wd->params, params, size);

 atomic_inc(&data->workqueue_size);
 queue_work(data->wq, &wd->work);


 s = atomic_read(&data->workqueue_size);
 if (s >= 20 && s % 20 == 0)
  hid_warn(data->hidpp->hid_dev, "Force feedback command queue contains %d commands, causing substantial delays!", s);

 return 0;
}
