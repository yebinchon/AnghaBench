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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct amdgpu_bo {scalar_t__ metadata_size; int /*<<< orphan*/ * metadata; int /*<<< orphan*/  metadata_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (void*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC2 (struct amdgpu_bo *bo, void *metadata,
			    uint32_t metadata_size, uint64_t flags)
{
	void *buffer;

	if (!metadata_size) {
		if (bo->metadata_size) {
			FUNC0(bo->metadata);
			bo->metadata = NULL;
			bo->metadata_size = 0;
		}
		return 0;
	}

	if (metadata == NULL)
		return -EINVAL;

	buffer = FUNC1(metadata, metadata_size, GFP_KERNEL);
	if (buffer == NULL)
		return -ENOMEM;

	FUNC0(bo->metadata);
	bo->metadata_flags = flags;
	bo->metadata = buffer;
	bo->metadata_size = metadata_size;

	return 0;
}