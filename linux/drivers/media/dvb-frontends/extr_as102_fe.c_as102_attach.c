
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct dvb_frontend {TYPE_2__ ops; struct as102_state* demodulator_priv; } ;
struct as102_state {int elna_cfg; void* priv; struct as102_fe_ops const* ops; struct dvb_frontend frontend; } ;
struct as102_fe_ops {int dummy; } ;


 int GFP_KERNEL ;
 int as102_fe_ops ;
 struct as102_state* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,int *,int) ;
 int strscpy (int ,char const*,int) ;

struct dvb_frontend *as102_attach(const char *name,
      const struct as102_fe_ops *ops,
      void *priv,
      uint8_t elna_cfg)
{
 struct as102_state *state;
 struct dvb_frontend *fe;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 fe = &state->frontend;
 fe->demodulator_priv = state;
 state->ops = ops;
 state->priv = priv;
 state->elna_cfg = elna_cfg;


 memcpy(&fe->ops, &as102_fe_ops, sizeof(struct dvb_frontend_ops));
 strscpy(fe->ops.info.name, name, sizeof(fe->ops.info.name));

 return fe;

}
