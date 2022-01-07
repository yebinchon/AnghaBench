
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct msc_iter {struct msc* msc; } ;
struct msc {int mmap_count; } ;
struct TYPE_2__ {struct msc_iter* private_data; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void msc_mmap_open(struct vm_area_struct *vma)
{
 struct msc_iter *iter = vma->vm_file->private_data;
 struct msc *msc = iter->msc;

 atomic_inc(&msc->mmap_count);
}
