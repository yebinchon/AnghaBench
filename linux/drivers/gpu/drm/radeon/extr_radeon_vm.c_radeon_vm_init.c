
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_vm_pt {int dummy; } ;
struct radeon_vm {int * page_directory; int * page_tables; int cleared; int freed; int invalidated; int status_lock; int va; int mutex; TYPE_1__* ids; int * ib_bo_va; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int * last_id_use; int * flushed_updates; scalar_t__ id; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int RADEON_NUM_RINGS ;
 int RADEON_VM_PTB_ALIGN_SIZE ;
 int RADEON_VM_PTE_COUNT ;
 int RB_ROOT_CACHED ;
 int * kzalloc (unsigned int,int ) ;
 unsigned int min (int ,int) ;
 int mutex_init (int *) ;
 int radeon_bo_create (struct radeon_device*,unsigned int,unsigned int const,int,int ,int ,int *,int *,int **) ;
 int radeon_bo_unref (int **) ;
 int radeon_vm_clear_bo (struct radeon_device*,int *) ;
 unsigned int radeon_vm_directory_size (struct radeon_device*) ;
 unsigned int radeon_vm_num_pdes (struct radeon_device*) ;
 int spin_lock_init (int *) ;

int radeon_vm_init(struct radeon_device *rdev, struct radeon_vm *vm)
{
 const unsigned align = min(RADEON_VM_PTB_ALIGN_SIZE,
  RADEON_VM_PTE_COUNT * 8);
 unsigned pd_size, pd_entries, pts_size;
 int i, r;

 vm->ib_bo_va = ((void*)0);
 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  vm->ids[i].id = 0;
  vm->ids[i].flushed_updates = ((void*)0);
  vm->ids[i].last_id_use = ((void*)0);
 }
 mutex_init(&vm->mutex);
 vm->va = RB_ROOT_CACHED;
 spin_lock_init(&vm->status_lock);
 INIT_LIST_HEAD(&vm->invalidated);
 INIT_LIST_HEAD(&vm->freed);
 INIT_LIST_HEAD(&vm->cleared);

 pd_size = radeon_vm_directory_size(rdev);
 pd_entries = radeon_vm_num_pdes(rdev);


 pts_size = pd_entries * sizeof(struct radeon_vm_pt);
 vm->page_tables = kzalloc(pts_size, GFP_KERNEL);
 if (vm->page_tables == ((void*)0)) {
  DRM_ERROR("Cannot allocate memory for page table array\n");
  return -ENOMEM;
 }

 r = radeon_bo_create(rdev, pd_size, align, 1,
        RADEON_GEM_DOMAIN_VRAM, 0, ((void*)0),
        ((void*)0), &vm->page_directory);
 if (r)
  return r;

 r = radeon_vm_clear_bo(rdev, vm->page_directory);
 if (r) {
  radeon_bo_unref(&vm->page_directory);
  vm->page_directory = ((void*)0);
  return r;
 }

 return 0;
}
