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
struct vmw_user_buffer_object {int dummy; } ;
struct vmw_private {scalar_t__ map_mode; } ;
struct vmw_buffer_object {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t PAGE_SHIFT ; 
 size_t TTM_OBJ_EXTRA_SIZE ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ vmw_dma_alloc_coherent ; 
 size_t vmw_tt_size ; 

__attribute__((used)) static size_t FUNC3(struct vmw_private *dev_priv, size_t size,
			      bool user)
{
	static size_t struct_size, user_struct_size;
	size_t num_pages = FUNC0(size) >> PAGE_SHIFT;
	size_t page_array_size = FUNC1(num_pages * sizeof(void *));

	if (FUNC2(struct_size == 0)) {
		size_t backend_size = FUNC1(vmw_tt_size);

		struct_size = backend_size +
			FUNC1(sizeof(struct vmw_buffer_object));
		user_struct_size = backend_size +
		  FUNC1(sizeof(struct vmw_user_buffer_object)) +
				      TTM_OBJ_EXTRA_SIZE;
	}

	if (dev_priv->map_mode == vmw_dma_alloc_coherent)
		page_array_size +=
			FUNC1(num_pages * sizeof(dma_addr_t));

	return ((user) ? user_struct_size : struct_size) +
		page_array_size;
}