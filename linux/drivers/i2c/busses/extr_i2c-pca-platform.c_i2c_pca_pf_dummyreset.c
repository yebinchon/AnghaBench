
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct i2c_pca_pf_data {TYPE_1__ adap; } ;


 int dev_warn (int *,char*) ;

__attribute__((used)) static void i2c_pca_pf_dummyreset(void *pd)
{
 struct i2c_pca_pf_data *i2c = pd;

 dev_warn(&i2c->adap.dev, "No reset-pin found. Chip may get stuck!\n");
}
