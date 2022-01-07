
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; int vm_flags; } ;
struct drm_local_map {scalar_t__ type; int flags; } ;
typedef int pgprot_t ;


 scalar_t__ _DRM_REGISTERS ;
 int _DRM_WRITE_COMBINING ;
 scalar_t__ efi_range_is_wc (scalar_t__,scalar_t__) ;
 int pgprot_decrypted (int ) ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 int vm_get_page_prot (int ) ;

__attribute__((used)) static pgprot_t drm_io_prot(struct drm_local_map *map,
       struct vm_area_struct *vma)
{
 pgprot_t tmp = vm_get_page_prot(vma->vm_flags);


 tmp = pgprot_decrypted(tmp);



 if (map->type == _DRM_REGISTERS && !(map->flags & _DRM_WRITE_COMBINING))
  tmp = pgprot_noncached(tmp);
 else
  tmp = pgprot_writecombine(tmp);
 return tmp;
}
