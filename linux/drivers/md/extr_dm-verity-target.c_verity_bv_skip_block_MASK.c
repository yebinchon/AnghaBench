#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dm_verity_io {int dummy; } ;
struct dm_verity {int data_dev_block_bits; TYPE_1__* ti; } ;
struct bvec_iter {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  per_io_data_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bvec_iter*,int) ; 
 struct bio* FUNC1 (struct dm_verity_io*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct dm_verity *v,
					struct dm_verity_io *io,
					struct bvec_iter *iter)
{
	struct bio *bio = FUNC1(io, v->ti->per_io_data_size);

	FUNC0(bio, iter, 1 << v->data_dev_block_bits);
}