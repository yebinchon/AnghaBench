
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct i2c_msg {int addr; int len; scalar_t__* buf; int flags; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct dvb_pll_priv {int pll_i2c_address; int nr; struct dvb_pll_desc const* pll_desc; struct i2c_adapter* i2c; } ;
struct dvb_pll_desc {int name; int sleepdata; int initdata; int max; int min; } ;
struct TYPE_4__ {int frequency_max_hz; int frequency_min_hz; int name; } ;
struct TYPE_6__ {int * sleep; int * init; TYPE_1__ info; } ;
struct TYPE_5__ {TYPE_3__ tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {struct dvb_pll_priv* tuner_priv; TYPE_2__ ops; } ;


 unsigned int ARRAY_SIZE (struct dvb_pll_desc**) ;
 int BUG_ON (int) ;
 int DVB_PLL_MAX ;
 unsigned int DVB_PLL_UNDEFINED ;
 int GFP_KERNEL ;
 int I2C_M_RD ;
 scalar_t__ debug ;
 int dprintk (char*,size_t,...) ;
 int dvb_pll_tuner_ops ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 unsigned int* id ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 struct dvb_pll_priv* kzalloc (int,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int pll_ida ;
 struct dvb_pll_desc** pll_list ;
 int pr_cont (char*,unsigned int,int,...) ;
 int strscpy (int ,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

struct dvb_frontend *dvb_pll_attach(struct dvb_frontend *fe, int pll_addr,
        struct i2c_adapter *i2c,
        unsigned int pll_desc_id)
{
 u8 *b1;
 struct i2c_msg msg = { .addr = pll_addr, .flags = I2C_M_RD, .len = 1 };
 struct dvb_pll_priv *priv = ((void*)0);
 int ret;
 const struct dvb_pll_desc *desc;
 int nr;

 b1 = kmalloc(1, GFP_KERNEL);
 if (!b1)
  return ((void*)0);

 b1[0] = 0;
 msg.buf = b1;

 nr = ida_simple_get(&pll_ida, 0, DVB_PLL_MAX, GFP_KERNEL);
 if (nr < 0) {
  kfree(b1);
  return ((void*)0);
 }

 if (id[nr] > DVB_PLL_UNDEFINED && id[nr] < ARRAY_SIZE(pll_list))
  pll_desc_id = id[nr];

 BUG_ON(pll_desc_id < 1 || pll_desc_id >= ARRAY_SIZE(pll_list));

 desc = pll_list[pll_desc_id];

 if (i2c != ((void*)0)) {
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 1);

  ret = i2c_transfer (i2c, &msg, 1);
  if (ret != 1)
   goto out;
  if (fe->ops.i2c_gate_ctrl)
        fe->ops.i2c_gate_ctrl(fe, 0);
 }

 priv = kzalloc(sizeof(struct dvb_pll_priv), GFP_KERNEL);
 if (!priv)
  goto out;

 priv->pll_i2c_address = pll_addr;
 priv->i2c = i2c;
 priv->pll_desc = desc;
 priv->nr = nr;

 memcpy(&fe->ops.tuner_ops, &dvb_pll_tuner_ops,
        sizeof(struct dvb_tuner_ops));

 strscpy(fe->ops.tuner_ops.info.name, desc->name,
  sizeof(fe->ops.tuner_ops.info.name));

 fe->ops.tuner_ops.info.frequency_min_hz = desc->min;
 fe->ops.tuner_ops.info.frequency_max_hz = desc->max;

 dprintk("%s tuner, frequency range: %u...%u\n",
  desc->name, desc->min, desc->max);

 if (!desc->initdata)
  fe->ops.tuner_ops.init = ((void*)0);
 if (!desc->sleepdata)
  fe->ops.tuner_ops.sleep = ((void*)0);

 fe->tuner_priv = priv;

 if ((debug) || (id[priv->nr] == pll_desc_id)) {
  dprintk("dvb-pll[%d]", priv->nr);
  if (i2c != ((void*)0))
   pr_cont(" %d-%04x", i2c_adapter_id(i2c), pll_addr);
  pr_cont(": id# %d (%s) attached, %s\n", pll_desc_id, desc->name,
         id[priv->nr] == pll_desc_id ?
    "insmod option" : "autodetected");
 }

 kfree(b1);

 return fe;
out:
 kfree(b1);
 ida_simple_remove(&pll_ida, nr);

 return ((void*)0);
}
