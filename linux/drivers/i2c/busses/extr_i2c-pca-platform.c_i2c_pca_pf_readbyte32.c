
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_pca_pf_data {scalar_t__ reg_base; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static int i2c_pca_pf_readbyte32(void *pd, int reg)
{
 struct i2c_pca_pf_data *i2c = pd;
 return ioread8(i2c->reg_base + reg * 4);
}
