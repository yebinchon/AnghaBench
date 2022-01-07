
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca953x_chip {int driver_data; struct i2c_client* client; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;


 int PCA_INT ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int pca953x_irq_setup(struct pca953x_chip *chip,
        int irq_base)
{
 struct i2c_client *client = chip->client;

 if (client->irq && irq_base != -1 && (chip->driver_data & PCA_INT))
  dev_warn(&client->dev, "interrupt support not compiled in\n");

 return 0;
}
