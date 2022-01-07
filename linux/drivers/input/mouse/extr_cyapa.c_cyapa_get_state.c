
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct cyapa {scalar_t__ state; scalar_t__ gen; void** status; scalar_t__ smbus; TYPE_1__* client; } ;
struct TYPE_6__ {int (* state_parse ) (struct cyapa*,void**,int) ;} ;
struct TYPE_5__ {int (* state_parse ) (struct cyapa*,void**,int) ;} ;
struct TYPE_4__ {int addr; } ;


 int BL_HEAD_OFFSET ;
 int BL_STATUS_SIZE ;
 int CYAPA_CMD_BL_STATUS ;
 scalar_t__ CYAPA_GEN3 ;
 scalar_t__ CYAPA_GEN5 ;
 scalar_t__ CYAPA_GEN6 ;
 scalar_t__ CYAPA_GEN_UNKNOWN ;
 scalar_t__ CYAPA_STATE_BL_BUSY ;
 scalar_t__ CYAPA_STATE_NO_DEVICE ;
 int EAGAIN ;
 int ENXIO ;
 int ETIMEDOUT ;
 size_t REG_BL_ERROR ;
 size_t REG_BL_STATUS ;
 size_t REG_OP_STATUS ;
 TYPE_3__ cyapa_gen3_ops ;
 TYPE_2__ cyapa_gen5_ops ;
 int cyapa_i2c_read (struct cyapa*,int ,int,void**) ;
 int cyapa_i2c_reg_read_block (struct cyapa*,int ,int,void**) ;
 int cyapa_i2c_write (struct cyapa*,int ,int,void**) ;
 int cyapa_pip_state_parse (struct cyapa*,void**,int) ;
 int cyapa_read_block (struct cyapa*,int ,void**) ;
 int msleep (int) ;
 int stub1 (struct cyapa*,void**,int) ;
 int stub2 (struct cyapa*,void**,int) ;

__attribute__((used)) static int cyapa_get_state(struct cyapa *cyapa)
{
 u8 status[BL_STATUS_SIZE];
 u8 cmd[32];

 bool even_addr = ((cyapa->client->addr & 0x0001) == 0);
 bool smbus = 0;
 int retries = 2;
 int error;

 cyapa->state = CYAPA_STATE_NO_DEVICE;







 error = cyapa_i2c_reg_read_block(cyapa, BL_HEAD_OFFSET, BL_STATUS_SIZE,
           status);






 if (cyapa->smbus && (error == -ETIMEDOUT || error == -ENXIO)) {
  if (!even_addr)
   error = cyapa_read_block(cyapa,
     CYAPA_CMD_BL_STATUS, status);
  smbus = 1;
 }

 if (error != BL_STATUS_SIZE)
  goto error;




 do {
  cyapa->status[REG_OP_STATUS] = status[REG_OP_STATUS];
  cyapa->status[REG_BL_STATUS] = status[REG_BL_STATUS];
  cyapa->status[REG_BL_ERROR] = status[REG_BL_ERROR];

  if (cyapa->gen == CYAPA_GEN_UNKNOWN ||
    cyapa->gen == CYAPA_GEN3) {
   error = cyapa_gen3_ops.state_parse(cyapa,
     status, BL_STATUS_SIZE);
   if (!error)
    goto out_detected;
  }
  if (cyapa->gen == CYAPA_GEN_UNKNOWN ||
    cyapa->gen == CYAPA_GEN6 ||
    cyapa->gen == CYAPA_GEN5) {
   error = cyapa_pip_state_parse(cyapa,
     status, BL_STATUS_SIZE);
   if (!error)
    goto out_detected;
  }

  if ((cyapa->gen == CYAPA_GEN_UNKNOWN ||
    cyapa->gen == CYAPA_GEN5) &&
   !smbus && even_addr) {
   error = cyapa_gen5_ops.state_parse(cyapa,
     status, BL_STATUS_SIZE);
   if (!error)
    goto out_detected;
  }





  if (!smbus) {
   cmd[0] = 0x00;
   cmd[1] = 0x00;
   error = cyapa_i2c_write(cyapa, 0, 2, cmd);
   if (error)
    goto error;

   msleep(50);

   error = cyapa_i2c_read(cyapa, BL_HEAD_OFFSET,
     BL_STATUS_SIZE, status);
   if (error)
    goto error;
  }
 } while (--retries > 0 && !smbus);

 goto error;

out_detected:
 if (cyapa->state <= CYAPA_STATE_BL_BUSY)
  return -EAGAIN;
 return 0;

error:
 return (error < 0) ? error : -EAGAIN;
}
