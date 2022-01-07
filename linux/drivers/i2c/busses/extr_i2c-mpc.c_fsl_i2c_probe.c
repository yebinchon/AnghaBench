
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct resource {scalar_t__ start; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct mpc_i2c_data* data; } ;
struct mpc_i2c_data {int (* setup ) (int ,struct mpc_i2c*,int) ;} ;
struct TYPE_9__ {int of_node; TYPE_2__* parent; } ;
struct TYPE_11__ {int timeout; TYPE_1__ dev; int name; } ;
struct mpc_i2c {int base; scalar_t__ irq; struct clk* clk_per; TYPE_3__ adap; TYPE_2__* dev; int queue; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int const HZ ;
 int IRQF_SHARED ;
 int IS_ERR (struct clk*) ;
 int MPC_I2C_CLOCK_LEGACY ;
 int MPC_I2C_CLOCK_PRESERVE ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,int) ;
 struct clk* devm_clk_get (TYPE_2__*,int *) ;
 int free_irq (scalar_t__,struct mpc_i2c*) ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_set_adapdata (TYPE_3__*,struct mpc_i2c*) ;
 int init_waitqueue_head (int *) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (scalar_t__) ;
 scalar_t__ irq_of_parse_and_map (int ,int ) ;
 int kfree (struct mpc_i2c*) ;
 struct mpc_i2c* kzalloc (int,int ) ;
 int mpc_i2c_isr ;
 int mpc_i2c_of_match ;
 int mpc_i2c_setup_8xxx (int ,struct mpc_i2c*,int) ;
 TYPE_3__ mpc_ops ;
 int of_address_to_resource (int ,int ,struct resource*) ;
 int* of_get_property (int ,char*,int*) ;
 int of_iomap (int ,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_node_get (int ) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct mpc_i2c*) ;
 int request_irq (scalar_t__,int ,int ,char*,struct mpc_i2c*) ;
 int scnprintf (int ,int,char*,unsigned long long) ;
 int stub1 (int ,struct mpc_i2c*,int) ;

__attribute__((used)) static int fsl_i2c_probe(struct platform_device *op)
{
 const struct of_device_id *match;
 struct mpc_i2c *i2c;
 const u32 *prop;
 u32 clock = MPC_I2C_CLOCK_LEGACY;
 int result = 0;
 int plen;
 struct resource res;
 struct clk *clk;
 int err;

 match = of_match_device(mpc_i2c_of_match, &op->dev);
 if (!match)
  return -EINVAL;

 i2c = kzalloc(sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 i2c->dev = &op->dev;

 init_waitqueue_head(&i2c->queue);

 i2c->base = of_iomap(op->dev.of_node, 0);
 if (!i2c->base) {
  dev_err(i2c->dev, "failed to map controller\n");
  result = -ENOMEM;
  goto fail_map;
 }

 i2c->irq = irq_of_parse_and_map(op->dev.of_node, 0);
 if (i2c->irq) {
  result = request_irq(i2c->irq, mpc_i2c_isr,
         IRQF_SHARED, "i2c-mpc", i2c);
  if (result < 0) {
   dev_err(i2c->dev, "failed to attach interrupt\n");
   goto fail_request;
  }
 }





 clk = devm_clk_get(&op->dev, ((void*)0));
 if (!IS_ERR(clk)) {
  err = clk_prepare_enable(clk);
  if (err) {
   dev_err(&op->dev, "failed to enable clock\n");
   goto fail_request;
  } else {
   i2c->clk_per = clk;
  }
 }

 if (of_property_read_bool(op->dev.of_node, "fsl,preserve-clocking")) {
  clock = MPC_I2C_CLOCK_PRESERVE;
 } else {
  prop = of_get_property(op->dev.of_node, "clock-frequency",
     &plen);
  if (prop && plen == sizeof(u32))
   clock = *prop;
 }

 if (match->data) {
  const struct mpc_i2c_data *data = match->data;
  data->setup(op->dev.of_node, i2c, clock);
 } else {

  if (of_get_property(op->dev.of_node, "dfsrr", ((void*)0)))
   mpc_i2c_setup_8xxx(op->dev.of_node, i2c, clock);
 }

 prop = of_get_property(op->dev.of_node, "fsl,timeout", &plen);
 if (prop && plen == sizeof(u32)) {
  mpc_ops.timeout = *prop * HZ / 1000000;
  if (mpc_ops.timeout < 5)
   mpc_ops.timeout = 5;
 }
 dev_info(i2c->dev, "timeout %u us\n", mpc_ops.timeout * 1000000 / HZ);

 platform_set_drvdata(op, i2c);

 i2c->adap = mpc_ops;
 of_address_to_resource(op->dev.of_node, 0, &res);
 scnprintf(i2c->adap.name, sizeof(i2c->adap.name),
    "MPC adapter at 0x%llx", (unsigned long long)res.start);
 i2c_set_adapdata(&i2c->adap, i2c);
 i2c->adap.dev.parent = &op->dev;
 i2c->adap.dev.of_node = of_node_get(op->dev.of_node);

 result = i2c_add_adapter(&i2c->adap);
 if (result < 0)
  goto fail_add;

 return result;

 fail_add:
 if (i2c->clk_per)
  clk_disable_unprepare(i2c->clk_per);
 free_irq(i2c->irq, i2c);
 fail_request:
 irq_dispose_mapping(i2c->irq);
 iounmap(i2c->base);
 fail_map:
 kfree(i2c);
 return result;
}
