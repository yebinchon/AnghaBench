
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_rdev; } ;
struct dax_device {int * host; } ;


 int MINOR (scalar_t__) ;
 int dax_cache ;
 int dax_minor_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (int *) ;
 int kmem_cache_free (int ,struct dax_device*) ;
 struct dax_device* to_dax_dev (struct inode*) ;

__attribute__((used)) static void dax_free_inode(struct inode *inode)
{
 struct dax_device *dax_dev = to_dax_dev(inode);
 kfree(dax_dev->host);
 dax_dev->host = ((void*)0);
 if (inode->i_rdev)
  ida_simple_remove(&dax_minor_ida, MINOR(inode->i_rdev));
 kmem_cache_free(dax_cache, dax_dev);
}
