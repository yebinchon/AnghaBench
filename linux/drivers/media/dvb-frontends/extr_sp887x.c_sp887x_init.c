
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sp887x_state {int initialised; TYPE_1__* config; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {struct sp887x_state* demodulator_priv; } ;
struct TYPE_2__ {int (* request_firmware ) (struct dvb_frontend*,struct firmware const**,int ) ;} ;


 int SP887X_DEFAULT_FIRMWARE ;
 int printk (char*,...) ;
 int release_firmware (struct firmware const*) ;
 int sp887x_initial_setup (struct dvb_frontend*,struct firmware const*) ;
 int sp887x_writereg (struct sp887x_state*,int,int) ;
 int stub1 (struct dvb_frontend*,struct firmware const**,int ) ;

__attribute__((used)) static int sp887x_init(struct dvb_frontend* fe)
{
 struct sp887x_state* state = fe->demodulator_priv;
 const struct firmware *fw = ((void*)0);
 int ret;

 if (!state->initialised) {

  printk("sp887x: waiting for firmware upload (%s)...\n", SP887X_DEFAULT_FIRMWARE);
  ret = state->config->request_firmware(fe, &fw, SP887X_DEFAULT_FIRMWARE);
  if (ret) {
   printk("sp887x: no firmware upload (timeout or file not found?)\n");
   return ret;
  }

  ret = sp887x_initial_setup(fe, fw);
  release_firmware(fw);
  if (ret) {
   printk("sp887x: writing firmware to device failed\n");
   return ret;
  }
  printk("sp887x: firmware upload complete\n");
  state->initialised = 1;
 }


 sp887x_writereg(state, 0xc18, 0x00d);

 return 0;
}
