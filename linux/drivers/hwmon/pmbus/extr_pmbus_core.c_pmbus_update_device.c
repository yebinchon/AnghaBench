
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_sensor {int reg; int page; int data; scalar_t__ update; struct pmbus_sensor* next; } ;
struct pmbus_driver_info {int pages; int* func; } ;
struct pmbus_data {int valid; int update_lock; scalar_t__ last_updated; struct pmbus_sensor* sensors; void** status; void* (* read_status ) (struct i2c_client*,int) ;struct pmbus_driver_info* info; } ;
struct i2c_client {int dummy; } ;
struct device {int parent; } ;
struct _pmbus_status {int func; int base; int reg; } ;


 int ARRAY_SIZE (struct _pmbus_status*) ;
 scalar_t__ HZ ;
 int PB_STATUS_BASE ;
 size_t PB_STATUS_INPUT_BASE ;
 size_t PB_STATUS_VMON_BASE ;
 int PMBUS_HAVE_STATUS_INPUT ;
 int PMBUS_HAVE_STATUS_VMON ;
 int PMBUS_STATUS_INPUT ;
 int PMBUS_VIRT_STATUS_VMON ;
 void* _pmbus_read_byte_data (struct i2c_client*,int,int ) ;
 int _pmbus_read_word_data (struct i2c_client*,int ,int ) ;
 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmbus_clear_faults (struct i2c_client*) ;
 struct _pmbus_status* pmbus_status ;
 void* stub1 (struct i2c_client*,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static struct pmbus_data *pmbus_update_device(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct pmbus_data *data = i2c_get_clientdata(client);
 const struct pmbus_driver_info *info = data->info;
 struct pmbus_sensor *sensor;

 mutex_lock(&data->update_lock);
 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  int i, j;

  for (i = 0; i < info->pages; i++) {
   data->status[PB_STATUS_BASE + i]
       = data->read_status(client, i);
   for (j = 0; j < ARRAY_SIZE(pmbus_status); j++) {
    struct _pmbus_status *s = &pmbus_status[j];

    if (!(info->func[i] & s->func))
     continue;
    data->status[s->base + i]
     = _pmbus_read_byte_data(client, i,
        s->reg);
   }
  }

  if (info->func[0] & PMBUS_HAVE_STATUS_INPUT)
   data->status[PB_STATUS_INPUT_BASE]
     = _pmbus_read_byte_data(client, 0,
        PMBUS_STATUS_INPUT);

  if (info->func[0] & PMBUS_HAVE_STATUS_VMON)
   data->status[PB_STATUS_VMON_BASE]
     = _pmbus_read_byte_data(client, 0,
        PMBUS_VIRT_STATUS_VMON);

  for (sensor = data->sensors; sensor; sensor = sensor->next) {
   if (!data->valid || sensor->update)
    sensor->data
        = _pmbus_read_word_data(client,
           sensor->page,
           sensor->reg);
  }
  pmbus_clear_faults(client);
  data->last_updated = jiffies;
  data->valid = 1;
 }
 mutex_unlock(&data->update_lock);
 return data;
}
