
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int PCA9541_CONTROL ;
 int PCA9541_CTL_NBUSON ;
 int busoff (int) ;
 scalar_t__ mybus (int) ;
 int pca9541_reg_read (struct i2c_client*,int ) ;
 int pca9541_reg_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static void pca9541_release_bus(struct i2c_client *client)
{
 int reg;

 reg = pca9541_reg_read(client, PCA9541_CONTROL);
 if (reg >= 0 && !busoff(reg) && mybus(reg))
  pca9541_reg_write(client, PCA9541_CONTROL,
      (reg & PCA9541_CTL_NBUSON) >> 1);
}
