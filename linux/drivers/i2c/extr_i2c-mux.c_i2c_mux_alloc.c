
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_mux_core {int mux_locked; int arbitrator; int gate; int (* select ) (struct i2c_mux_core*,int) ;int (* deselect ) (struct i2c_mux_core*,int) ;int max_adapters; struct device* dev; struct i2c_adapter* parent; int * adapter; int * priv; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int I2C_MUX_ARBITRATOR ;
 int I2C_MUX_GATE ;
 int I2C_MUX_LOCKED ;
 int adapter ;
 struct i2c_mux_core* devm_kzalloc (struct device*,scalar_t__,int ) ;
 scalar_t__ struct_size (struct i2c_mux_core*,int ,int) ;

struct i2c_mux_core *i2c_mux_alloc(struct i2c_adapter *parent,
       struct device *dev, int max_adapters,
       int sizeof_priv, u32 flags,
       int (*select)(struct i2c_mux_core *, u32),
       int (*deselect)(struct i2c_mux_core *, u32))
{
 struct i2c_mux_core *muxc;

 muxc = devm_kzalloc(dev, struct_size(muxc, adapter, max_adapters)
       + sizeof_priv, GFP_KERNEL);
 if (!muxc)
  return ((void*)0);
 if (sizeof_priv)
  muxc->priv = &muxc->adapter[max_adapters];

 muxc->parent = parent;
 muxc->dev = dev;
 if (flags & I2C_MUX_LOCKED)
  muxc->mux_locked = 1;
 if (flags & I2C_MUX_ARBITRATOR)
  muxc->arbitrator = 1;
 if (flags & I2C_MUX_GATE)
  muxc->gate = 1;
 muxc->select = select;
 muxc->deselect = deselect;
 muxc->max_adapters = max_adapters;

 return muxc;
}
