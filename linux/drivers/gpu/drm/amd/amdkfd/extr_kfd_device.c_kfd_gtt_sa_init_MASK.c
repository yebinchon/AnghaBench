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
struct kfd_dev {unsigned int gtt_sa_chunk_size; unsigned int gtt_sa_num_of_chunks; int /*<<< orphan*/  gtt_sa_lock; int /*<<< orphan*/  gtt_sa_bitmap; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kfd_dev *kfd, unsigned int buf_size,
				unsigned int chunk_size)
{
	unsigned int num_of_longs;

	if (FUNC0(buf_size < chunk_size))
		return -EINVAL;
	if (FUNC0(buf_size == 0))
		return -EINVAL;
	if (FUNC0(chunk_size == 0))
		return -EINVAL;

	kfd->gtt_sa_chunk_size = chunk_size;
	kfd->gtt_sa_num_of_chunks = buf_size / chunk_size;

	num_of_longs = (kfd->gtt_sa_num_of_chunks + BITS_PER_LONG - 1) /
		BITS_PER_LONG;

	kfd->gtt_sa_bitmap = FUNC1(num_of_longs, sizeof(long), GFP_KERNEL);

	if (!kfd->gtt_sa_bitmap)
		return -ENOMEM;

	FUNC3("gtt_sa_num_of_chunks = %d, gtt_sa_bitmap = %p\n",
			kfd->gtt_sa_num_of_chunks, kfd->gtt_sa_bitmap);

	FUNC2(&kfd->gtt_sa_lock);

	return 0;

}