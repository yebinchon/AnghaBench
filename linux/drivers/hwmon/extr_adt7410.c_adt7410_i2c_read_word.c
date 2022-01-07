
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int i2c_smbus_read_word_swapped (int ,int ) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int adt7410_i2c_read_word(struct device *dev, u8 reg)
{
 return i2c_smbus_read_word_swapped(to_i2c_client(dev), reg);
}
