#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; int /*<<< orphan*/  vm_flags; } ;
struct drm_local_map {scalar_t__ type; int flags; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 scalar_t__ _DRM_REGISTERS ; 
 int _DRM_WRITE_COMBINING ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pgprot_t FUNC5(struct drm_local_map *map,
			    struct vm_area_struct *vma)
{
	pgprot_t tmp = FUNC4(vma->vm_flags);

	/* We don't want graphics memory to be mapped encrypted */
	tmp = FUNC1(tmp);

#if defined(__i386__) || defined(__x86_64__) || defined(__powerpc__) || \
    defined(__mips__)
	if (map->type == _DRM_REGISTERS && !(map->flags & _DRM_WRITE_COMBINING))
		tmp = FUNC2(tmp);
	else
		tmp = FUNC3(tmp);
#elif defined(__ia64__)
	if (efi_range_is_wc(vma->vm_start, vma->vm_end -
				    vma->vm_start))
		tmp = pgprot_writecombine(tmp);
	else
		tmp = pgprot_noncached(tmp);
#elif defined(__sparc__) || defined(__arm__)
	tmp = pgprot_noncached(tmp);
#endif
	return tmp;
}