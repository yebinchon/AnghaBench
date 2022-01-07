
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sp2 {TYPE_1__* client; } ;
struct dvb_ca_en50221 {struct sp2* data; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int SP2_MOD_CTL_RST ;
 int dev_dbg (int *,char*,int) ;
 int msleep (int) ;
 int sp2_write_i2c (struct sp2*,int,int*,int) ;
 int usleep_range (int,int) ;

int sp2_ci_slot_reset(struct dvb_ca_en50221 *en50221, int slot)
{
 struct sp2 *s = en50221->data;
 u8 buf;
 int ret;

 dev_dbg(&s->client->dev, "slot: %d\n", slot);

 if (slot != 0)
  return -EINVAL;


 buf = SP2_MOD_CTL_RST;
 ret = sp2_write_i2c(s, 0x00, &buf, 1);

 if (ret)
  return ret;

 usleep_range(500, 600);


 buf = 0x00;
 ret = sp2_write_i2c(s, 0x00, &buf, 1);

 if (ret)
  return ret;

 msleep(1000);

 return 0;
}
