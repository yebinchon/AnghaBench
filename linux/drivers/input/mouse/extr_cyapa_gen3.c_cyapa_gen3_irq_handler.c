
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct cyapa_reg_data {int device_status; int finger_btn; } ;
struct cyapa {TYPE_1__* client; } ;
typedef int data ;
struct TYPE_2__ {struct device dev; } ;


 int CYAPA_CMD_GROUP_DATA ;
 int CYAPA_DEV_NORMAL ;
 int EINVAL ;
 int OP_DATA_VALID ;
 int OP_STATUS_DEV ;
 int OP_STATUS_SRC ;
 int cyapa_gen3_event_process (struct cyapa*,struct cyapa_reg_data*) ;
 int cyapa_read_block (struct cyapa*,int ,int *) ;
 int dev_err (struct device*,char*,int,...) ;

__attribute__((used)) static int cyapa_gen3_irq_handler(struct cyapa *cyapa)
{
 struct device *dev = &cyapa->client->dev;
 struct cyapa_reg_data data;
 int ret;

 ret = cyapa_read_block(cyapa, CYAPA_CMD_GROUP_DATA, (u8 *)&data);
 if (ret != sizeof(data)) {
  dev_err(dev, "failed to read report data, (%d)\n", ret);
  return -EINVAL;
 }

 if ((data.device_status & OP_STATUS_SRC) != OP_STATUS_SRC ||
     (data.device_status & OP_STATUS_DEV) != CYAPA_DEV_NORMAL ||
     (data.finger_btn & OP_DATA_VALID) != OP_DATA_VALID) {
  dev_err(dev, "invalid device state bytes: %02x %02x\n",
   data.device_status, data.finger_btn);
  return -EINVAL;
 }

 return cyapa_gen3_event_process(cyapa, &data);
}
