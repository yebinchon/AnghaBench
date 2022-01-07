
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxt_data {int max_reportid; int update_input; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EBUSY ;
 int dev_err (struct device*,char*) ;
 int mxt_input_sync (struct mxt_data*) ;
 int mxt_read_and_process_messages (struct mxt_data*,int) ;

__attribute__((used)) static int mxt_process_messages_until_invalid(struct mxt_data *data)
{
 struct device *dev = &data->client->dev;
 int count, read;
 u8 tries = 2;

 count = data->max_reportid;


 do {
  read = mxt_read_and_process_messages(data, count);
  if (read < count)
   return 0;
 } while (--tries);

 if (data->update_input) {
  mxt_input_sync(data);
  data->update_input = 0;
 }

 dev_err(dev, "CHG pin isn't cleared\n");
 return -EBUSY;
}
