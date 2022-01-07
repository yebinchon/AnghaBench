
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83793_data {int kref; int watchdog_is_open; TYPE_1__* client; scalar_t__ watchdog_expect_close; } ;
struct inode {int dummy; } ;
struct file {struct w83793_data* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int clear_bit (int ,int *) ;
 int dev_crit (int *,char*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w83793_release_resources ;
 int watchdog_data_mutex ;
 int watchdog_disable (struct w83793_data*) ;
 int watchdog_trigger (struct w83793_data*) ;

__attribute__((used)) static int watchdog_close(struct inode *inode, struct file *filp)
{
 struct w83793_data *data = filp->private_data;

 if (data->watchdog_expect_close) {
  watchdog_disable(data);
  data->watchdog_expect_close = 0;
 } else {
  watchdog_trigger(data);
  dev_crit(&data->client->dev,
   "unexpected close, not stopping watchdog!\n");
 }

 clear_bit(0, &data->watchdog_is_open);


 mutex_lock(&watchdog_data_mutex);
 kref_put(&data->kref, w83793_release_resources);
 mutex_unlock(&watchdog_data_mutex);

 return 0;
}
