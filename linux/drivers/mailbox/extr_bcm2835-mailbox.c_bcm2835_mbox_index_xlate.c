
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {scalar_t__ args_count; } ;
struct mbox_controller {struct mbox_chan* chans; } ;
struct mbox_chan {int dummy; } ;


 int EINVAL ;
 struct mbox_chan* ERR_PTR (int ) ;

__attribute__((used)) static struct mbox_chan *bcm2835_mbox_index_xlate(struct mbox_controller *mbox,
      const struct of_phandle_args *sp)
{
 if (sp->args_count != 0)
  return ERR_PTR(-EINVAL);

 return &mbox->chans[0];
}
