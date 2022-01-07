
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct nvif_mmu_v0 {int heap_nr; int type_nr; int kind_nr; int dmabits; scalar_t__ version; } ;
struct nvif_mmu_type_v0 {int index; int count; int data; scalar_t__ version; int heap; scalar_t__ uncached; scalar_t__ coherent; scalar_t__ mappable; scalar_t__ kind; scalar_t__ disp; scalar_t__ comp; scalar_t__ host; scalar_t__ vram; int size; } ;
struct nvif_mmu_kind_v0 {int index; int count; int data; scalar_t__ version; int heap; scalar_t__ uncached; scalar_t__ coherent; scalar_t__ mappable; scalar_t__ kind; scalar_t__ disp; scalar_t__ comp; scalar_t__ host; scalar_t__ vram; int size; } ;
struct nvif_mmu_heap_v0 {int index; int count; int data; scalar_t__ version; int heap; scalar_t__ uncached; scalar_t__ coherent; scalar_t__ mappable; scalar_t__ kind; scalar_t__ disp; scalar_t__ comp; scalar_t__ host; scalar_t__ vram; int size; } ;
struct nvif_mmu {int heap_nr; int type_nr; int kind_nr; int * kind; int object; TYPE_2__* type; TYPE_1__* heap; int mem; int dmabits; } ;
struct nvif_mclass {int member_1; int oclass; int member_0; } ;
typedef int s32 ;
typedef int args ;
struct TYPE_4__ {int heap; int type; } ;
struct TYPE_3__ {int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;



 int NVIF_MEM_COHERENT ;
 int NVIF_MEM_COMP ;
 int NVIF_MEM_DISP ;
 int NVIF_MEM_HOST ;
 int NVIF_MEM_KIND ;
 int NVIF_MEM_MAPPABLE ;
 int NVIF_MEM_UNCACHED ;
 int NVIF_MEM_VRAM ;
 int NVIF_MMU_V0_HEAP ;
 int NVIF_MMU_V0_KIND ;
 int NVIF_MMU_V0_TYPE ;
 int data ;
 int kfree (struct nvif_mmu_type_v0*) ;
 struct nvif_mmu_type_v0* kmalloc (size_t,int ) ;
 void* kmalloc_array (int,int,int ) ;
 int memcpy (int *,int ,int) ;
 int nvif_mclass (int *,struct nvif_mclass const*) ;
 int nvif_mmu_fini (struct nvif_mmu*) ;
 int nvif_object_init (struct nvif_object*,int ,int ,struct nvif_mmu_v0*,int,int *) ;
 int nvif_object_mthd (int *,int ,struct nvif_mmu_type_v0*,size_t) ;
 size_t struct_size (struct nvif_mmu_type_v0*,int ,int) ;

int
nvif_mmu_init(struct nvif_object *parent, s32 oclass, struct nvif_mmu *mmu)
{
 static const struct nvif_mclass mems[] = {
  { 130, -1 },
  { 128 , -1 },
  { 129 , -1 },
  {}
 };
 struct nvif_mmu_v0 args;
 int ret, i;

 args.version = 0;
 mmu->heap = ((void*)0);
 mmu->type = ((void*)0);
 mmu->kind = ((void*)0);

 ret = nvif_object_init(parent, 0, oclass, &args, sizeof(args),
          &mmu->object);
 if (ret)
  goto done;

 mmu->dmabits = args.dmabits;
 mmu->heap_nr = args.heap_nr;
 mmu->type_nr = args.type_nr;
 mmu->kind_nr = args.kind_nr;

 ret = nvif_mclass(&mmu->object, mems);
 if (ret < 0)
  goto done;
 mmu->mem = mems[ret].oclass;

 mmu->heap = kmalloc_array(mmu->heap_nr, sizeof(*mmu->heap),
      GFP_KERNEL);
 mmu->type = kmalloc_array(mmu->type_nr, sizeof(*mmu->type),
      GFP_KERNEL);
 if (ret = -ENOMEM, !mmu->heap || !mmu->type)
  goto done;

 mmu->kind = kmalloc_array(mmu->kind_nr, sizeof(*mmu->kind),
      GFP_KERNEL);
 if (!mmu->kind && mmu->kind_nr)
  goto done;

 for (i = 0; i < mmu->heap_nr; i++) {
  struct nvif_mmu_heap_v0 args = { .index = i };

  ret = nvif_object_mthd(&mmu->object, NVIF_MMU_V0_HEAP,
           &args, sizeof(args));
  if (ret)
   goto done;

  mmu->heap[i].size = args.size;
 }

 for (i = 0; i < mmu->type_nr; i++) {
  struct nvif_mmu_type_v0 args = { .index = i };

  ret = nvif_object_mthd(&mmu->object, NVIF_MMU_V0_TYPE,
           &args, sizeof(args));
  if (ret)
   goto done;

  mmu->type[i].type = 0;
  if (args.vram) mmu->type[i].type |= NVIF_MEM_VRAM;
  if (args.host) mmu->type[i].type |= NVIF_MEM_HOST;
  if (args.comp) mmu->type[i].type |= NVIF_MEM_COMP;
  if (args.disp) mmu->type[i].type |= NVIF_MEM_DISP;
  if (args.kind ) mmu->type[i].type |= NVIF_MEM_KIND;
  if (args.mappable) mmu->type[i].type |= NVIF_MEM_MAPPABLE;
  if (args.coherent) mmu->type[i].type |= NVIF_MEM_COHERENT;
  if (args.uncached) mmu->type[i].type |= NVIF_MEM_UNCACHED;
  mmu->type[i].heap = args.heap;
 }

 if (mmu->kind_nr) {
  struct nvif_mmu_kind_v0 *kind;
  size_t argc = struct_size(kind, data, mmu->kind_nr);

  if (ret = -ENOMEM, !(kind = kmalloc(argc, GFP_KERNEL)))
   goto done;
  kind->version = 0;
  kind->count = mmu->kind_nr;

  ret = nvif_object_mthd(&mmu->object, NVIF_MMU_V0_KIND,
           kind, argc);
  if (ret == 0)
   memcpy(mmu->kind, kind->data, kind->count);
  kfree(kind);
 }

done:
 if (ret)
  nvif_mmu_fini(mmu);
 return ret;
}
