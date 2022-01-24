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
struct kfd_mem_obj {unsigned int range_start; unsigned int range_end; int /*<<< orphan*/  cpu_ptr; scalar_t__ gpu_addr; } ;
struct kfd_dev {unsigned int gtt_sa_num_of_chunks; unsigned int gtt_sa_chunk_size; int /*<<< orphan*/  gtt_sa_lock; int /*<<< orphan*/  gtt_sa_bitmap; int /*<<< orphan*/  gtt_start_cpu_ptr; int /*<<< orphan*/  gtt_start_gpu_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct kfd_mem_obj**) ; 
 struct kfd_mem_obj* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC9(struct kfd_dev *kfd, unsigned int size,
			struct kfd_mem_obj **mem_obj)
{
	unsigned int found, start_search, cur_size;

	if (size == 0)
		return -EINVAL;

	if (size > kfd->gtt_sa_num_of_chunks * kfd->gtt_sa_chunk_size)
		return -ENOMEM;

	*mem_obj = FUNC4(sizeof(struct kfd_mem_obj), GFP_KERNEL);
	if (!(*mem_obj))
		return -ENOMEM;

	FUNC7("Allocated mem_obj = %p for size = %d\n", *mem_obj, size);

	start_search = 0;

	FUNC5(&kfd->gtt_sa_lock);

kfd_gtt_restart_search:
	/* Find the first chunk that is free */
	found = FUNC0(kfd->gtt_sa_bitmap,
					kfd->gtt_sa_num_of_chunks,
					start_search);

	FUNC7("Found = %d\n", found);

	/* If there wasn't any free chunk, bail out */
	if (found == kfd->gtt_sa_num_of_chunks)
		goto kfd_gtt_no_free_chunk;

	/* Update fields of mem_obj */
	(*mem_obj)->range_start = found;
	(*mem_obj)->range_end = found;
	(*mem_obj)->gpu_addr = FUNC2(
					kfd->gtt_start_gpu_addr,
					found,
					kfd->gtt_sa_chunk_size);
	(*mem_obj)->cpu_ptr = FUNC1(
					kfd->gtt_start_cpu_ptr,
					found,
					kfd->gtt_sa_chunk_size);

	FUNC7("gpu_addr = %p, cpu_addr = %p\n",
			(uint64_t *) (*mem_obj)->gpu_addr, (*mem_obj)->cpu_ptr);

	/* If we need only one chunk, mark it as allocated and get out */
	if (size <= kfd->gtt_sa_chunk_size) {
		FUNC7("Single bit\n");
		FUNC8(found, kfd->gtt_sa_bitmap);
		goto kfd_gtt_out;
	}

	/* Otherwise, try to see if we have enough contiguous chunks */
	cur_size = size - kfd->gtt_sa_chunk_size;
	do {
		(*mem_obj)->range_end =
			FUNC0(kfd->gtt_sa_bitmap,
					kfd->gtt_sa_num_of_chunks, ++found);
		/*
		 * If next free chunk is not contiguous than we need to
		 * restart our search from the last free chunk we found (which
		 * wasn't contiguous to the previous ones
		 */
		if ((*mem_obj)->range_end != found) {
			start_search = found;
			goto kfd_gtt_restart_search;
		}

		/*
		 * If we reached end of buffer, bail out with error
		 */
		if (found == kfd->gtt_sa_num_of_chunks)
			goto kfd_gtt_no_free_chunk;

		/* Check if we don't need another chunk */
		if (cur_size <= kfd->gtt_sa_chunk_size)
			cur_size = 0;
		else
			cur_size -= kfd->gtt_sa_chunk_size;

	} while (cur_size > 0);

	FUNC7("range_start = %d, range_end = %d\n",
		(*mem_obj)->range_start, (*mem_obj)->range_end);

	/* Mark the chunks as allocated */
	for (found = (*mem_obj)->range_start;
		found <= (*mem_obj)->range_end;
		found++)
		FUNC8(found, kfd->gtt_sa_bitmap);

kfd_gtt_out:
	FUNC6(&kfd->gtt_sa_lock);
	return 0;

kfd_gtt_no_free_chunk:
	FUNC7("Allocation failed with mem_obj = %p\n", mem_obj);
	FUNC6(&kfd->gtt_sa_lock);
	FUNC3(mem_obj);
	return -ENOMEM;
}