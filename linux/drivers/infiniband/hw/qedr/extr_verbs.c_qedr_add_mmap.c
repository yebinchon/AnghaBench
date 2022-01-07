
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qedr_ucontext {int dev; int mm_list_lock; int mm_head; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ phy_addr; } ;
struct qedr_mm {TYPE_1__ key; int entry; } ;


 int DP_DEBUG (int ,int ,char*,unsigned long long,unsigned long,struct qedr_ucontext*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int QEDR_MSG_MISC ;
 struct qedr_mm* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ roundup (unsigned long,int ) ;

__attribute__((used)) static int qedr_add_mmap(struct qedr_ucontext *uctx, u64 phy_addr,
    unsigned long len)
{
 struct qedr_mm *mm;

 mm = kzalloc(sizeof(*mm), GFP_KERNEL);
 if (!mm)
  return -ENOMEM;

 mm->key.phy_addr = phy_addr;







 mm->key.len = roundup(len, PAGE_SIZE);
 INIT_LIST_HEAD(&mm->entry);

 mutex_lock(&uctx->mm_list_lock);
 list_add(&mm->entry, &uctx->mm_head);
 mutex_unlock(&uctx->mm_list_lock);

 DP_DEBUG(uctx->dev, QEDR_MSG_MISC,
   "added (addr=0x%llx,len=0x%lx) for ctx=%p\n",
   (unsigned long long)mm->key.phy_addr,
   (unsigned long)mm->key.len, uctx);

 return 0;
}
