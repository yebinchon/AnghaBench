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
struct mddev {int dummy; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 

__attribute__((used)) static inline int FUNC4(struct mddev *mddev,
			unsigned int chunk_sects, struct bio *bio)
{
	if (FUNC2(FUNC1(chunk_sects))) {
		return chunk_sects >=
			((bio->bi_iter.bi_sector & (chunk_sects-1))
					+ FUNC0(bio));
	} else{
		sector_t sector = bio->bi_iter.bi_sector;
		return chunk_sects >= (FUNC3(sector, chunk_sects)
						+ FUNC0(bio));
	}
}