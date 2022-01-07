
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int demod_lock; TYPE_2__** fe; } ;
struct TYPE_3__ {int (* sleep ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINTR ;
 size_t MAX_NUMBER_OF_FRONTENDS ;
 int OUT_MSG_FE_SLEEP ;
 int dib9000_mbx_send (struct dib9000_state*,int ,int *,int ) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int dib9000_sleep(struct dvb_frontend *fe)
{
 struct dib9000_state *state = fe->demodulator_priv;
 u8 index_frontend;
 int ret = 0;

 if (mutex_lock_interruptible(&state->demod_lock) < 0) {
  dprintk("could not get the lock\n");
  return -EINTR;
 }
 for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != ((void*)0)); index_frontend++) {
  ret = state->fe[index_frontend]->ops.sleep(state->fe[index_frontend]);
  if (ret < 0)
   goto error;
 }
 ret = dib9000_mbx_send(state, OUT_MSG_FE_SLEEP, ((void*)0), 0);

error:
 mutex_unlock(&state->demod_lock);
 return ret;
}
