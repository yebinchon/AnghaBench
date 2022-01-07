
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa_reg_data {int device_status; int finger_btn; } ;
struct cyapa {int dummy; } ;
typedef int data ;


 int CYAPA_CMD_GROUP_DATA ;
 int CYAPA_DEV_NORMAL ;
 int EINVAL ;
 int OP_DATA_VALID ;
 int OP_STATUS_DEV ;
 int OP_STATUS_SRC ;
 int cyapa_gen3_event_process (struct cyapa*,struct cyapa_reg_data*) ;
 int cyapa_read_block (struct cyapa*,int ,int *) ;

__attribute__((used)) static int cyapa_gen3_try_poll_handler(struct cyapa *cyapa)
{
 struct cyapa_reg_data data;
 int ret;

 ret = cyapa_read_block(cyapa, CYAPA_CMD_GROUP_DATA, (u8 *)&data);
 if (ret != sizeof(data))
  return -EINVAL;

 if ((data.device_status & OP_STATUS_SRC) != OP_STATUS_SRC ||
     (data.device_status & OP_STATUS_DEV) != CYAPA_DEV_NORMAL ||
     (data.finger_btn & OP_DATA_VALID) != OP_DATA_VALID)
  return -EINVAL;

 return cyapa_gen3_event_process(cyapa, &data);

}
