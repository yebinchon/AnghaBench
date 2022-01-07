
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct komeda_dev* private; } ;
struct komeda_dev {int n_pipelines; int * pipelines; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* dump_register ) (struct komeda_dev*,struct seq_file*) ;} ;


 int komeda_pipeline_dump_register (int ,struct seq_file*) ;
 int stub1 (struct komeda_dev*,struct seq_file*) ;

__attribute__((used)) static int komeda_register_show(struct seq_file *sf, void *x)
{
 struct komeda_dev *mdev = sf->private;
 int i;

 if (mdev->funcs->dump_register)
  mdev->funcs->dump_register(mdev, sf);

 for (i = 0; i < mdev->n_pipelines; i++)
  komeda_pipeline_dump_register(mdev->pipelines[i], sf);

 return 0;
}
