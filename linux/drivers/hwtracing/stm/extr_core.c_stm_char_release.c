
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; int master; } ;
struct stm_file {TYPE_2__ output; struct stm_device* stm; } ;
struct stm_device {TYPE_1__* data; } ;
struct inode {int dummy; } ;
struct file {struct stm_file* private_data; } ;
struct TYPE_3__ {int (* unlink ) (TYPE_1__*,int ,int ) ;} ;


 int kfree (struct stm_file*) ;
 int stm_output_free (struct stm_device*,TYPE_2__*) ;
 int stm_put_device (struct stm_device*) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int stm_char_release(struct inode *inode, struct file *file)
{
 struct stm_file *stmf = file->private_data;
 struct stm_device *stm = stmf->stm;

 if (stm->data->unlink)
  stm->data->unlink(stm->data, stmf->output.master,
      stmf->output.channel);

 stm_output_free(stm, &stmf->output);





 stm_put_device(stm);
 kfree(stmf);

 return 0;
}
