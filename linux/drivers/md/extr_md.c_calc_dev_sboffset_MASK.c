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
struct md_rdev {TYPE_1__* bdev; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline sector_t FUNC2(struct md_rdev *rdev)
{
	sector_t num_sectors = FUNC1(rdev->bdev->bd_inode) / 512;
	return FUNC0(num_sectors);
}