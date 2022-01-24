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
struct dm_integrity_io {int /*<<< orphan*/  fua; } ;
struct dm_integrity_c {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 struct bio* FUNC0 (struct dm_integrity_io*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_integrity_c*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_integrity_c*,struct bio*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_integrity_c*,struct dm_integrity_io*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dm_integrity_c *ic, struct dm_integrity_io *dio)
{
	struct bio *bio = FUNC0(dio, sizeof(struct dm_integrity_io));

	if (FUNC5(dio->fua) && FUNC3(!bio->bi_status) && FUNC3(!FUNC1(ic)))
		FUNC4(ic, dio);
	else
		FUNC2(ic, bio);
}