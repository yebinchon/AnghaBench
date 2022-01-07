
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct taos_data {char* buffer; scalar_t__ addr; int pos; scalar_t__ state; } ;
struct serio {int dummy; } ;
struct i2c_adapter {int dev; struct serio* algo_data; } ;


 int EIO ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EPROTO ;


 char I2C_SMBUS_WRITE ;
 scalar_t__ TAOS_STATE_IDLE ;
 scalar_t__ TAOS_STATE_RECV ;
 int dev_dbg (int *,char*,char*) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ kstrtou8 (char*,int,int*) ;
 int msecs_to_jiffies (int) ;
 struct taos_data* serio_get_drvdata (struct serio*) ;
 int serio_write (struct serio*,char) ;
 int sprintf (char*,char*,...) ;
 int strcmp (char*,char*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int wq ;

__attribute__((used)) static int taos_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
      unsigned short flags, char read_write, u8 command,
      int size, union i2c_smbus_data *data)
{
 struct serio *serio = adapter->algo_data;
 struct taos_data *taos = serio_get_drvdata(serio);
 char *p;



 p = taos->buffer;



 if (addr != taos->addr)
  p += sprintf(p, "@%02X", addr);

 switch (size) {
 case 129:
  if (read_write == I2C_SMBUS_WRITE)
   sprintf(p, "$#%02X", command);
  else
   sprintf(p, "$");
  break;
 case 128:
  if (read_write == I2C_SMBUS_WRITE)
   sprintf(p, "$%02X#%02X", command, data->byte);
  else
   sprintf(p, "$%02X", command);
  break;
 default:
  dev_warn(&adapter->dev, "Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }


 dev_dbg(&adapter->dev, "Command buffer: %s\n", taos->buffer);
 for (p = taos->buffer; *p; p++)
  serio_write(serio, *p);

 taos->addr = addr;


 taos->pos = 0;
 taos->state = TAOS_STATE_RECV;
 serio_write(serio, read_write == I2C_SMBUS_WRITE ? '>' : '<');
 wait_event_interruptible_timeout(wq, taos->state == TAOS_STATE_IDLE,
      msecs_to_jiffies(150));
 if (taos->state != TAOS_STATE_IDLE
  || taos->pos != 5) {
  dev_err(&adapter->dev, "Transaction timeout (pos=%d)\n",
   taos->pos);
  return -EIO;
 }
 dev_dbg(&adapter->dev, "Answer buffer: %s\n", taos->buffer);


 p = taos->buffer + 1;
 p[3] = '\0';
 if (!strcmp(p, "NAK"))
  return -ENODEV;

 if (read_write == I2C_SMBUS_WRITE) {
  if (!strcmp(p, "ACK"))
   return 0;
 } else {
  if (p[0] == 'x') {





   if (kstrtou8(p + 1, 16, &data->byte))
    return -EPROTO;
   return 0;
  }
 }

 return -EIO;
}
