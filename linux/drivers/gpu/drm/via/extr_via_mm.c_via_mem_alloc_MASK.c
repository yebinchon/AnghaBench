#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned long start; } ;
struct via_memblock {TYPE_3__ mm_node; int /*<<< orphan*/  owner_list; } ;
struct via_file_private {int /*<<< orphan*/  obj_list; } ;
struct drm_file {struct via_file_private* driver_priv; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; scalar_t__ dev_private; } ;
struct TYPE_5__ {scalar_t__ vram_initialized; scalar_t__ agp_initialized; scalar_t__ agp_offset; scalar_t__ vram_offset; int /*<<< orphan*/  object_idr; int /*<<< orphan*/  vram_mm; int /*<<< orphan*/  agp_mm; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_6__ {scalar_t__ type; unsigned long size; int index; scalar_t__ offset; } ;
typedef  TYPE_2__ drm_via_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ VIA_MEM_AGP ; 
 scalar_t__ VIA_MEM_VIDEO ; 
 unsigned long VIA_MM_ALIGN_MASK ; 
 unsigned long VIA_MM_ALIGN_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct via_memblock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct via_memblock*) ; 
 struct via_memblock* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct drm_device *dev, void *data,
		  struct drm_file *file)
{
	drm_via_mem_t *mem = data;
	int retval = 0, user_key;
	struct via_memblock *item;
	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
	struct via_file_private *file_priv = file->driver_priv;
	unsigned long tmpSize;

	if (mem->type > VIA_MEM_AGP) {
		FUNC1("Unknown memory type allocation\n");
		return -EINVAL;
	}
	FUNC8(&dev->struct_mutex);
	if (0 == ((mem->type == VIA_MEM_VIDEO) ? dev_priv->vram_initialized :
		      dev_priv->agp_initialized)) {
		FUNC1
		    ("Attempt to allocate from uninitialized memory manager.\n");
		FUNC9(&dev->struct_mutex);
		return -EINVAL;
	}

	item = FUNC6(sizeof(*item), GFP_KERNEL);
	if (!item) {
		retval = -ENOMEM;
		goto fail_alloc;
	}

	tmpSize = (mem->size + VIA_MM_ALIGN_MASK) >> VIA_MM_ALIGN_SHIFT;
	if (mem->type == VIA_MEM_AGP)
		retval = FUNC2(&dev_priv->agp_mm,
					    &item->mm_node,
					    tmpSize);
	else
		retval = FUNC2(&dev_priv->vram_mm,
					    &item->mm_node,
					    tmpSize);
	if (retval)
		goto fail_alloc;

	retval = FUNC4(&dev_priv->object_idr, item, 1, 0, GFP_KERNEL);
	if (retval < 0)
		goto fail_idr;
	user_key = retval;

	FUNC7(&item->owner_list, &file_priv->obj_list);
	FUNC9(&dev->struct_mutex);

	mem->offset = ((mem->type == VIA_MEM_VIDEO) ?
		      dev_priv->vram_offset : dev_priv->agp_offset) +
	    ((item->mm_node.start) << VIA_MM_ALIGN_SHIFT);
	mem->index = user_key;

	return 0;

fail_idr:
	FUNC3(&item->mm_node);
fail_alloc:
	FUNC5(item);
	FUNC9(&dev->struct_mutex);

	mem->offset = 0;
	mem->size = 0;
	mem->index = 0;
	FUNC0("Video memory allocation failed\n");

	return retval;
}