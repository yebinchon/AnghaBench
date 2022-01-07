
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_15__ {int vm; } ;
struct radeon_cs_parser {int nrelocs; scalar_t__ ring; int cs_flags; int validated; int ticket; TYPE_6__* rdev; TYPE_4__ ib; int vm_bos; TYPE_8__* relocs; int filp; scalar_t__ dma_reloc_idx; struct radeon_cs_chunk* chunk_relocs; } ;
struct radeon_cs_chunk {int length_dw; int * kdata; } ;
struct radeon_cs_buckets {int dummy; } ;
struct radeon_bo_list {int dummy; } ;
struct drm_radeon_cs_reloc {int flags; int write_domain; int read_domains; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_13__ {int ttm; } ;
struct TYPE_19__ {TYPE_2__ tbo; scalar_t__ prime_shared_count; } ;
struct TYPE_14__ {int num_shared; int head; TYPE_2__* bo; } ;
struct TYPE_18__ {int preferred_domains; int allowed_domains; TYPE_3__ tv; TYPE_9__* robj; } ;
struct TYPE_17__ {scalar_t__ family; TYPE_1__* ddev; } ;
struct TYPE_16__ {int mmap_sem; } ;
struct TYPE_12__ {int pdev; } ;
struct TYPE_11__ {TYPE_5__* mm; } ;


 scalar_t__ CHIP_RS780 ;
 scalar_t__ CHIP_RS880 ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_CAP_ID_AGP ;
 scalar_t__ R600_RING_TYPE_UVD_INDEX ;
 unsigned int RADEON_CS_MAX_PRIORITY ;
 int RADEON_CS_USE_VM ;
 int RADEON_GEM_DOMAIN_CPU ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int RADEON_RELOC_PRIO_MASK ;
 int __GFP_ZERO ;
 TYPE_10__* current ;
 int down_read (int *) ;
 struct drm_gem_object* drm_gem_object_lookup (int ,int ) ;
 TYPE_9__* gem_to_radeon_bo (struct drm_gem_object*) ;
 TYPE_8__* kvmalloc_array (int,int,int) ;
 scalar_t__ pci_find_capability (int ,int ) ;
 int radeon_bo_list_validate (TYPE_6__*,int *,int *,scalar_t__) ;
 int radeon_cs_buckets_add (struct radeon_cs_buckets*,int *,unsigned int) ;
 int radeon_cs_buckets_get_list (struct radeon_cs_buckets*,int *) ;
 int radeon_cs_buckets_init (struct radeon_cs_buckets*) ;
 scalar_t__ radeon_ttm_tt_has_userptr (int ) ;
 int radeon_vm_get_bos (TYPE_6__*,int ,int *) ;
 int up_read (int *) ;

__attribute__((used)) static int radeon_cs_parser_relocs(struct radeon_cs_parser *p)
{
 struct radeon_cs_chunk *chunk;
 struct radeon_cs_buckets buckets;
 unsigned i;
 bool need_mmap_lock = 0;
 int r;

 if (p->chunk_relocs == ((void*)0)) {
  return 0;
 }
 chunk = p->chunk_relocs;
 p->dma_reloc_idx = 0;

 p->nrelocs = chunk->length_dw / 4;
 p->relocs = kvmalloc_array(p->nrelocs, sizeof(struct radeon_bo_list),
   GFP_KERNEL | __GFP_ZERO);
 if (p->relocs == ((void*)0)) {
  return -ENOMEM;
 }

 radeon_cs_buckets_init(&buckets);

 for (i = 0; i < p->nrelocs; i++) {
  struct drm_radeon_cs_reloc *r;
  struct drm_gem_object *gobj;
  unsigned priority;

  r = (struct drm_radeon_cs_reloc *)&chunk->kdata[i*4];
  gobj = drm_gem_object_lookup(p->filp, r->handle);
  if (gobj == ((void*)0)) {
   DRM_ERROR("gem object lookup failed 0x%x\n",
      r->handle);
   return -ENOENT;
  }
  p->relocs[i].robj = gem_to_radeon_bo(gobj);







  priority = (r->flags & RADEON_RELOC_PRIO_MASK) * 2
      + !!r->write_domain;






  if (p->ring == R600_RING_TYPE_UVD_INDEX &&
      (i <= 0 || pci_find_capability(p->rdev->ddev->pdev,
         PCI_CAP_ID_AGP) ||
       p->rdev->family == CHIP_RS780 ||
       p->rdev->family == CHIP_RS880)) {


   p->relocs[i].preferred_domains =
    RADEON_GEM_DOMAIN_VRAM;

   p->relocs[i].allowed_domains =
    RADEON_GEM_DOMAIN_VRAM;


   priority = RADEON_CS_MAX_PRIORITY;
  } else {
   uint32_t domain = r->write_domain ?
    r->write_domain : r->read_domains;

   if (domain & RADEON_GEM_DOMAIN_CPU) {
    DRM_ERROR("RADEON_GEM_DOMAIN_CPU is not valid "
       "for command submission\n");
    return -EINVAL;
   }

   p->relocs[i].preferred_domains = domain;
   if (domain == RADEON_GEM_DOMAIN_VRAM)
    domain |= RADEON_GEM_DOMAIN_GTT;
   p->relocs[i].allowed_domains = domain;
  }

  if (radeon_ttm_tt_has_userptr(p->relocs[i].robj->tbo.ttm)) {
   uint32_t domain = p->relocs[i].preferred_domains;
   if (!(domain & RADEON_GEM_DOMAIN_GTT)) {
    DRM_ERROR("Only RADEON_GEM_DOMAIN_GTT is "
       "allowed for userptr BOs\n");
    return -EINVAL;
   }
   need_mmap_lock = 1;
   domain = RADEON_GEM_DOMAIN_GTT;
   p->relocs[i].preferred_domains = domain;
   p->relocs[i].allowed_domains = domain;
  }


  if (p->relocs[i].robj->prime_shared_count) {
   p->relocs[i].allowed_domains &= ~RADEON_GEM_DOMAIN_VRAM;
   if (!p->relocs[i].allowed_domains) {
    DRM_ERROR("BO associated with dma-buf cannot "
       "be moved to VRAM\n");
    return -EINVAL;
   }
  }

  p->relocs[i].tv.bo = &p->relocs[i].robj->tbo;
  p->relocs[i].tv.num_shared = !r->write_domain;

  radeon_cs_buckets_add(&buckets, &p->relocs[i].tv.head,
          priority);
 }

 radeon_cs_buckets_get_list(&buckets, &p->validated);

 if (p->cs_flags & RADEON_CS_USE_VM)
  p->vm_bos = radeon_vm_get_bos(p->rdev, p->ib.vm,
           &p->validated);
 if (need_mmap_lock)
  down_read(&current->mm->mmap_sem);

 r = radeon_bo_list_validate(p->rdev, &p->ticket, &p->validated, p->ring);

 if (need_mmap_lock)
  up_read(&current->mm->mmap_sem);

 return r;
}
