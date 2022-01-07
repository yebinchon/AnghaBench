
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct lm8323_chip {TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int EREMOTEIO ;
 int dev_err (int *,char*,int,...) ;
 int i2c_master_recv (TYPE_1__*,int *,int) ;
 int i2c_master_send (TYPE_1__*,int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lm8323_read(struct lm8323_chip *lm, u8 cmd, u8 *buf, int len)
{
 int ret;





 ret = i2c_master_send(lm->client, &cmd, 1);
 if (unlikely(ret == -EREMOTEIO))
  ret = i2c_master_send(lm->client, &cmd, 1);
 if (unlikely(ret != 1)) {
  dev_err(&lm->client->dev, "sending read cmd 0x%02x failed\n",
   cmd);
  return 0;
 }

 ret = i2c_master_recv(lm->client, buf, len);
 if (unlikely(ret != len))
  dev_err(&lm->client->dev, "wanted %d bytes, got %d\n",
   len, ret);

 return ret;
}
