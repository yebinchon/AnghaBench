
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct cs_char* private_data; } ;
struct cs_char {int lock; scalar_t__ opened; int dataind_queue; int chardev_queue; int mmap_base; int * hi; } ;


 int cs_free_char_queue (int *) ;
 int cs_hsi_stop (int *) ;
 int free_page (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int cs_char_release(struct inode *unused, struct file *file)
{
 struct cs_char *csdata = file->private_data;

 cs_hsi_stop(csdata->hi);
 spin_lock_bh(&csdata->lock);
 csdata->hi = ((void*)0);
 free_page(csdata->mmap_base);
 cs_free_char_queue(&csdata->chardev_queue);
 cs_free_char_queue(&csdata->dataind_queue);
 csdata->opened = 0;
 spin_unlock_bh(&csdata->lock);

 return 0;
}
