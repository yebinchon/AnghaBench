
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supplies; } ;
struct i2c_hid {TYPE_1__ pdata; scalar_t__ bufsize; struct hid_device* hid; } ;
struct i2c_client {int irq; } ;
struct hid_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int free_irq (int ,struct i2c_hid*) ;
 int hid_destroy_device (struct hid_device*) ;
 struct i2c_hid* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_hid_free_buffers (struct i2c_hid*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int i2c_hid_remove(struct i2c_client *client)
{
 struct i2c_hid *ihid = i2c_get_clientdata(client);
 struct hid_device *hid;

 hid = ihid->hid;
 hid_destroy_device(hid);

 free_irq(client->irq, ihid);

 if (ihid->bufsize)
  i2c_hid_free_buffers(ihid);

 regulator_bulk_disable(ARRAY_SIZE(ihid->pdata.supplies),
          ihid->pdata.supplies);

 return 0;
}
