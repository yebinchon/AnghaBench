
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int device; } ;
struct efa_ucontext {int uarn; } ;
struct efa_dev {int dummy; } ;


 int efa_dealloc_uar (struct efa_dev*,int ) ;
 int mmap_entries_remove_free (struct efa_dev*,struct efa_ucontext*) ;
 struct efa_dev* to_edev (int ) ;
 struct efa_ucontext* to_eucontext (struct ib_ucontext*) ;

void efa_dealloc_ucontext(struct ib_ucontext *ibucontext)
{
 struct efa_ucontext *ucontext = to_eucontext(ibucontext);
 struct efa_dev *dev = to_edev(ibucontext->device);

 mmap_entries_remove_free(dev, ucontext);
 efa_dealloc_uar(dev, ucontext->uarn);
}
