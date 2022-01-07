
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct bcm3510_state* demodulator_priv; int ops; } ;
struct bcm3510_state {struct dvb_frontend frontend; int hab_mutex; struct i2c_adapter* i2c; struct bcm3510_config const* config; } ;
struct bcm3510_config {int dummy; } ;
struct TYPE_4__ {int REV; int LAYER; } ;
struct TYPE_5__ {TYPE_1__ REVID_e0; } ;
typedef TYPE_2__ bcm3510_register_value ;


 int GFP_KERNEL ;
 int bcm3510_ops ;
 int bcm3510_readB (struct bcm3510_state*,int,TYPE_2__*) ;
 int bcm3510_reset (struct bcm3510_state*) ;
 int deb_info (char*,int,int) ;
 int info (char*,int,int) ;
 int kfree (struct bcm3510_state*) ;
 struct bcm3510_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_init (int *) ;

struct dvb_frontend* bcm3510_attach(const struct bcm3510_config *config,
       struct i2c_adapter *i2c)
{
 struct bcm3510_state* state = ((void*)0);
 int ret;
 bcm3510_register_value v;


 state = kzalloc(sizeof(struct bcm3510_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;



 state->config = config;
 state->i2c = i2c;


 memcpy(&state->frontend.ops, &bcm3510_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;

 mutex_init(&state->hab_mutex);

 if ((ret = bcm3510_readB(state,0xe0,&v)) < 0)
  goto error;

 deb_info("Revision: 0x%1x, Layer: 0x%1x.\n",v.REVID_e0.REV,v.REVID_e0.LAYER);

 if ((v.REVID_e0.REV != 0x1 && v.REVID_e0.LAYER != 0xb) &&
  (v.REVID_e0.REV != 0x8 && v.REVID_e0.LAYER != 0x0))
  goto error;

 info("Revision: 0x%1x, Layer: 0x%1x.",v.REVID_e0.REV,v.REVID_e0.LAYER);

 bcm3510_reset(state);

 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}
