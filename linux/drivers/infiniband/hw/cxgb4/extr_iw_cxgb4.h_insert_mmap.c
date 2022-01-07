
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_ucontext {int mmap_lock; int mmaps; } ;
struct c4iw_mm_entry {int entry; int len; scalar_t__ addr; int key; } ;


 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,unsigned long long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void insert_mmap(struct c4iw_ucontext *ucontext,
          struct c4iw_mm_entry *mm)
{
 spin_lock(&ucontext->mmap_lock);
 pr_debug("key 0x%x addr 0x%llx len %d\n",
   mm->key, (unsigned long long)mm->addr, mm->len);
 list_add_tail(&mm->entry, &ucontext->mmaps);
 spin_unlock(&ucontext->mmap_lock);
}
