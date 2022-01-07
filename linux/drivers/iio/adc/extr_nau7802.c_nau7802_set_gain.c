
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau7802_state {int lock; int client; scalar_t__ conversion_count; } ;


 int NAU7802_CTRL1_GAINS_BITS ;
 int NAU7802_REG_CTRL1 ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int nau7802_set_gain(struct nau7802_state *st, int gain)
{
 int ret;

 mutex_lock(&st->lock);
 st->conversion_count = 0;

 ret = i2c_smbus_read_byte_data(st->client, NAU7802_REG_CTRL1);
 if (ret < 0)
  goto nau7802_sysfs_set_gain_out;
 ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_CTRL1,
     (ret & (~NAU7802_CTRL1_GAINS_BITS)) |
     gain);

nau7802_sysfs_set_gain_out:
 mutex_unlock(&st->lock);

 return ret;
}
