
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int* args; } ;
struct mbox_controller {int num_chans; struct mbox_chan* chans; } ;
struct mbox_chan {scalar_t__ con_priv; } ;
struct cmdq_thread {int priority; int atomic_exec; struct mbox_chan* chan; } ;


 int EINVAL ;
 struct mbox_chan* ERR_PTR (int ) ;

__attribute__((used)) static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,
  const struct of_phandle_args *sp)
{
 int ind = sp->args[0];
 struct cmdq_thread *thread;

 if (ind >= mbox->num_chans)
  return ERR_PTR(-EINVAL);

 thread = (struct cmdq_thread *)mbox->chans[ind].con_priv;
 thread->priority = sp->args[1];
 thread->atomic_exec = (sp->args[2] != 0);
 thread->chan = &mbox->chans[ind];

 return &mbox->chans[ind];
}
