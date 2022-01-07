
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; int ops; } ;
struct nxt200x_state {int demod_chip; struct dvb_frontend frontend; scalar_t__ initialised; struct i2c_adapter* i2c; struct nxt200x_config const* config; } ;
struct nxt200x_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;


 int dprintk (char*,int,int*) ;
 int kfree (struct nxt200x_state*) ;
 struct nxt200x_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int nxt200x_ops ;
 int nxt200x_readbytes (struct nxt200x_state*,int,int*,int) ;
 int pr_err (char*,int,int*) ;
 int pr_info (char*) ;

struct dvb_frontend* nxt200x_attach(const struct nxt200x_config* config,
       struct i2c_adapter* i2c)
{
 struct nxt200x_state* state = ((void*)0);
 u8 buf [] = {0,0,0,0,0};


 state = kzalloc(sizeof(struct nxt200x_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->config = config;
 state->i2c = i2c;
 state->initialised = 0;


 nxt200x_readbytes(state, 0x00, buf, 5);
 dprintk("NXT info: %*ph\n", 5, buf);


 switch (buf[0]) {
  case 0x04:
   state->demod_chip = 129;
   pr_info("NXT2002 Detected\n");
   break;
  case 0x05:
   state->demod_chip = 128;
   pr_info("NXT2004 Detected\n");
   break;
  default:
   goto error;
 }


 switch (state->demod_chip) {
  case 129:
   if (buf[0] != 0x04) goto error;
   if (buf[1] != 0x02) goto error;
   if (buf[2] != 0x11) goto error;
   if (buf[3] != 0x20) goto error;
   if (buf[4] != 0x00) goto error;
   break;
  case 128:
   if (buf[0] != 0x05) goto error;
   break;
  default:
   goto error;
 }


 memcpy(&state->frontend.ops, &nxt200x_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 pr_err("Unknown/Unsupported NXT chip: %*ph\n", 5, buf);
 return ((void*)0);
}
