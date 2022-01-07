
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct efa_ucontext {int mmap_xa; } ;
struct efa_mmap_entry {scalar_t__ length; int address; int obj; } ;
struct efa_dev {int ibdev; } ;


 scalar_t__ EFA_MMAP_PAGE_MASK ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ U32_MAX ;
 scalar_t__ get_mmap_key (struct efa_mmap_entry*) ;
 int ibdev_dbg (int *,char*,int ,scalar_t__,int ,scalar_t__) ;
 struct efa_mmap_entry* xa_load (int *,scalar_t__) ;

__attribute__((used)) static struct efa_mmap_entry *mmap_entry_get(struct efa_dev *dev,
          struct efa_ucontext *ucontext,
          u64 key, u64 len)
{
 struct efa_mmap_entry *entry;
 u64 mmap_page;

 mmap_page = (key & EFA_MMAP_PAGE_MASK) >> PAGE_SHIFT;
 if (mmap_page > U32_MAX)
  return ((void*)0);

 entry = xa_load(&ucontext->mmap_xa, mmap_page);
 if (!entry || get_mmap_key(entry) != key || entry->length != len)
  return ((void*)0);

 ibdev_dbg(&dev->ibdev,
    "mmap: obj[0x%p] key[%#llx] addr[%#llx] len[%#llx] removed\n",
    entry->obj, key, entry->address, entry->length);

 return entry;
}
