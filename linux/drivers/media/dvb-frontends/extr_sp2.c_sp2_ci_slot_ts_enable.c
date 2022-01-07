
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
 int SP2_MOD_CTL_TSIEN ;
 int SP2_MOD_CTL_TSOEN ;
 int dev_dbg (int *,char*,int) ;
 int sp2_read_i2c (struct sp2*,int,int*,int) ;
 int sp2_write_i2c (struct sp2*,int ,int*,int) ;

int sp2_ci_slot_ts_enable(struct dvb_ca_en50221 *en50221, int slot)
{
 struct sp2 *s = en50221->data;
 u8 buf;

 dev_dbg(&s->client->dev, "slot:%d\n", slot);

 if (slot != 0)
  return -EINVAL;

 sp2_read_i2c(s, 0x00, &buf, 1);


 buf |= (SP2_MOD_CTL_TSOEN | SP2_MOD_CTL_TSIEN);
 return sp2_write_i2c(s, 0, &buf, 1);
}
