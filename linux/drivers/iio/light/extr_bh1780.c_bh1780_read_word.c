
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bh1780_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int BH1780_CMD_BIT ;
 int dev_err (int *,char*,int,int) ;
 int i2c_smbus_read_word_data (TYPE_1__*,int) ;

__attribute__((used)) static int bh1780_read_word(struct bh1780_data *bh1780, u8 reg)
{
 int ret = i2c_smbus_read_word_data(bh1780->client,
        BH1780_CMD_BIT | reg);
 if (ret < 0)
  dev_err(&bh1780->client->dev,
   "i2c_smbus_read_word_data failed error "
   "%d, register %01x\n",
   ret, reg);
 return ret;
}
