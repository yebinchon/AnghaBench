
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dm_file* private_data; } ;
struct dm_file {int global_event_nr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_read (int *) ;
 int dm_global_event_nr ;
 struct dm_file* kmalloc (int,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dm_open(struct inode *inode, struct file *filp)
{
 int r;
 struct dm_file *priv;

 r = nonseekable_open(inode, filp);
 if (unlikely(r))
  return r;

 priv = filp->private_data = kmalloc(sizeof(struct dm_file), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->global_event_nr = atomic_read(&dm_global_event_nr);

 return 0;
}
