
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; int ops; } ;
struct gp8psk_fe_state {int is_rev1; struct dvb_frontend fe; void* priv; struct gp8psk_fe_ops const* ops; } ;
struct gp8psk_fe_ops {int reload; int out; int in; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int gp8psk_fe_ops ;
 struct gp8psk_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int pr_err (char*) ;
 int pr_info (char*,char*) ;

struct dvb_frontend *gp8psk_fe_attach(const struct gp8psk_fe_ops *ops,
          void *priv, bool is_rev1)
{
 struct gp8psk_fe_state *st;

 if (!ops || !ops->in || !ops->out || !ops->reload) {
  pr_err("Error! gp8psk-fe ops not defined.\n");
  return ((void*)0);
 }

 st = kzalloc(sizeof(struct gp8psk_fe_state), GFP_KERNEL);
 if (!st)
  return ((void*)0);

 memcpy(&st->fe.ops, &gp8psk_fe_ops, sizeof(struct dvb_frontend_ops));
 st->fe.demodulator_priv = st;
 st->ops = ops;
 st->priv = priv;
 st->is_rev1 = is_rev1;

 pr_info("Frontend %sattached\n", is_rev1 ? "revision 1 " : "");

 return &st->fe;
}
