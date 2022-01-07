
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int* args; } ;
struct mbox_controller {int num_chans; struct mbox_chan* chans; } ;
struct mbox_chan {int dummy; } ;


 int EINVAL ;
 struct mbox_chan* ERR_PTR (int ) ;

__attribute__((used)) static struct mbox_chan *
of_mbox_index_xlate(struct mbox_controller *mbox,
      const struct of_phandle_args *sp)
{
 int ind = sp->args[0];

 if (ind >= mbox->num_chans)
  return ERR_PTR(-EINVAL);

 return &mbox->chans[ind];
}
