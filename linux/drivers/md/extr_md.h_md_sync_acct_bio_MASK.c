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
struct bio {TYPE_1__* bi_disk; } ;
struct TYPE_2__ {int /*<<< orphan*/  sync_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct bio *bio, unsigned long nr_sectors)
{
	FUNC0(nr_sectors, &bio->bi_disk->sync_io);
}