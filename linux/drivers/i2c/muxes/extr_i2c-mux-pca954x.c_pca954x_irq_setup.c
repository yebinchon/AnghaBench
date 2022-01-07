
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pca954x {int irq; TYPE_1__* chip; int lock; struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_2__ dev; } ;
struct TYPE_3__ {int nchans; int has_irq; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_err (TYPE_2__*,char*) ;
 int handle_simple_irq ;
 struct pca954x* i2c_mux_priv (struct i2c_mux_core*) ;
 int irq_create_mapping (int ,int) ;
 int irq_domain_add_linear (int ,int,int *,struct pca954x*) ;
 int irq_domain_simple_ops ;
 int irq_set_chip_and_handler (int,int *,int ) ;
 int irq_set_chip_data (int,struct pca954x*) ;
 int pca954x_irq_chip ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int pca954x_irq_setup(struct i2c_mux_core *muxc)
{
 struct pca954x *data = i2c_mux_priv(muxc);
 struct i2c_client *client = data->client;
 int c, irq;

 if (!data->chip->has_irq || client->irq <= 0)
  return 0;

 raw_spin_lock_init(&data->lock);

 data->irq = irq_domain_add_linear(client->dev.of_node,
       data->chip->nchans,
       &irq_domain_simple_ops, data);
 if (!data->irq)
  return -ENODEV;

 for (c = 0; c < data->chip->nchans; c++) {
  irq = irq_create_mapping(data->irq, c);
  if (!irq) {
   dev_err(&client->dev, "failed irq create map\n");
   return -EINVAL;
  }
  irq_set_chip_data(irq, data);
  irq_set_chip_and_handler(irq, &pca954x_irq_chip,
   handle_simple_irq);
 }

 return 0;
}
