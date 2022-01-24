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
typedef  void uint8_t ;
struct ttm_buffer_object {int dummy; } ;
struct ttm_bo_kmap_obj {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,scalar_t__) ; 
 int FUNC3 (struct ttm_buffer_object*,unsigned long,int,struct ttm_bo_kmap_obj*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_bo_kmap_obj*) ; 
 scalar_t__ FUNC5 (struct ttm_bo_kmap_obj*,int*) ; 

__attribute__((used)) static int FUNC6(struct ttm_buffer_object *bo,
				 unsigned long offset,
				 uint8_t *buf, int len, int write)
{
	unsigned long page = offset >> PAGE_SHIFT;
	unsigned long bytes_left = len;
	int ret;

	/* Copy a page at a time, that way no extra virtual address
	 * mapping is needed
	 */
	offset -= page << PAGE_SHIFT;
	do {
		unsigned long bytes = FUNC2(bytes_left, PAGE_SIZE - offset);
		struct ttm_bo_kmap_obj map;
		void *ptr;
		bool is_iomem;

		ret = FUNC3(bo, page, 1, &map);
		if (ret)
			return ret;

		ptr = (uint8_t *)FUNC5(&map, &is_iomem) + offset;
		FUNC0(is_iomem);
		if (write)
			FUNC1(ptr, buf, bytes);
		else
			FUNC1(buf, ptr, bytes);
		FUNC4(&map);

		page++;
		buf += bytes;
		bytes_left -= bytes;
		offset = 0;
	} while (bytes_left);

	return len;
}