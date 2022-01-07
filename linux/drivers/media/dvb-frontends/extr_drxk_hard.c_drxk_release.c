
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drxk_state* demodulator_priv; } ;
struct drxk_state {int fw; } ;


 int dprintk (int,char*) ;
 int kfree (struct drxk_state*) ;
 int release_firmware (int ) ;

__attribute__((used)) static void drxk_release(struct dvb_frontend *fe)
{
 struct drxk_state *state = fe->demodulator_priv;

 dprintk(1, "\n");
 release_firmware(state->fw);

 kfree(state);
}
