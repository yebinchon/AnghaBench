
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {int dummy; } ;


 int I2C_STATUS ;
 int saa7146_read (struct saa7146_dev*,int ) ;

__attribute__((used)) static inline u32 saa7146_i2c_status(struct saa7146_dev *dev)
{
 u32 iicsta = saa7146_read(dev, I2C_STATUS);

 return iicsta;
}
