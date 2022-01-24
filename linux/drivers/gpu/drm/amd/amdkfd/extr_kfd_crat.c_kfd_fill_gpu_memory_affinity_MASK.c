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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kfd_local_mem_info {int /*<<< orphan*/  vram_width; } ;
struct kfd_dev {int dummy; } ;
struct crat_subtype_memory {int length; int /*<<< orphan*/  visibility_type; int /*<<< orphan*/  width; int /*<<< orphan*/  length_high; int /*<<< orphan*/  length_low; int /*<<< orphan*/  proximity_domain; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRAT_SUBTYPE_FLAGS_ENABLED ; 
 int /*<<< orphan*/  CRAT_SUBTYPE_MEMORY_AFFINITY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int *avail_size,
		struct kfd_dev *kdev, uint8_t type, uint64_t size,
		struct crat_subtype_memory *sub_type_hdr,
		uint32_t proximity_domain,
		const struct kfd_local_mem_info *local_mem_info)
{
	*avail_size -= sizeof(struct crat_subtype_memory);
	if (*avail_size < 0)
		return -ENOMEM;

	FUNC1((void *)sub_type_hdr, 0, sizeof(struct crat_subtype_memory));
	sub_type_hdr->type = CRAT_SUBTYPE_MEMORY_AFFINITY;
	sub_type_hdr->length = sizeof(struct crat_subtype_memory);
	sub_type_hdr->flags |= CRAT_SUBTYPE_FLAGS_ENABLED;

	sub_type_hdr->proximity_domain = proximity_domain;

	FUNC2("Fill gpu memory affinity - type 0x%x size 0x%llx\n",
			type, size);

	sub_type_hdr->length_low = FUNC0(size);
	sub_type_hdr->length_high = FUNC3(size);

	sub_type_hdr->width = local_mem_info->vram_width;
	sub_type_hdr->visibility_type = type;

	return 0;
}