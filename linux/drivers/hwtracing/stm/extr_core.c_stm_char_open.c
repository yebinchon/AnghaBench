
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm_file {TYPE_1__* stm; int output; } ;
struct inode {int dummy; } ;
struct file {struct stm_file* private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int owner; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct device* class_find_device (int *,int *,unsigned int*,int ) ;
 unsigned int imajor (struct inode*) ;
 int kfree (struct stm_file*) ;
 struct stm_file* kzalloc (int,int ) ;
 int major_match ;
 int nonseekable_open (struct inode*,struct file*) ;
 int put_device (struct device*) ;
 int stm_class ;
 int stm_output_init (int *) ;
 TYPE_1__* to_stm_device (struct device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int stm_char_open(struct inode *inode, struct file *file)
{
 struct stm_file *stmf;
 struct device *dev;
 unsigned int major = imajor(inode);
 int err = -ENOMEM;

 dev = class_find_device(&stm_class, ((void*)0), &major, major_match);
 if (!dev)
  return -ENODEV;

 stmf = kzalloc(sizeof(*stmf), GFP_KERNEL);
 if (!stmf)
  goto err_put_device;

 err = -ENODEV;
 stm_output_init(&stmf->output);
 stmf->stm = to_stm_device(dev);

 if (!try_module_get(stmf->stm->owner))
  goto err_free;

 file->private_data = stmf;

 return nonseekable_open(inode, file);

err_free:
 kfree(stmf);
err_put_device:

 put_device(dev);

 return err;
}
