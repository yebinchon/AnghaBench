
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {struct cx24113_state* tuner_priv; TYPE_1__ ops; } ;
struct cx24113_state {int rev; void* ver; struct i2c_adapter* i2c; struct cx24113_config const* config; } ;
struct cx24113_config {int dummy; } ;


 int GFP_KERNEL ;

 void* cx24113_readreg (struct cx24113_state*,int) ;
 int cx24113_tuner_ops ;
 int cx_err (char*,int) ;
 int cx_info (char*,...) ;
 int kfree (struct cx24113_state*) ;
 struct cx24113_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *cx24113_attach(struct dvb_frontend *fe,
  const struct cx24113_config *config, struct i2c_adapter *i2c)
{

 struct cx24113_state *state = kzalloc(sizeof(*state), GFP_KERNEL);
 int rc;

 if (!state)
  return ((void*)0);


 state->config = config;
 state->i2c = i2c;

 cx_info("trying to detect myself\n");



 cx24113_readreg(state, 0x00);

 rc = cx24113_readreg(state, 0x00);
 if (rc < 0) {
  cx_info("CX24113 not found.\n");
  goto error;
 }
 state->rev = rc;

 switch (rc) {
 case 0x43:
  cx_info("detected CX24113 variant\n");
  break;
 case 128:
  cx_info("successfully detected\n");
  break;
 default:
  cx_err("unsupported device id: %x\n", state->rev);
  goto error;
 }
 state->ver = cx24113_readreg(state, 0x01);
 cx_info("version: %x\n", state->ver);


 memcpy(&fe->ops.tuner_ops, &cx24113_tuner_ops,
   sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = state;
 return fe;

error:
 kfree(state);

 return ((void*)0);
}
