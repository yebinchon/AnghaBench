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
struct dmz_reclaim {int /*<<< orphan*/  flags; int /*<<< orphan*/  kc_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_RECLAIM_KCOPY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int read_err, unsigned long write_err,
				  void *context)
{
	struct dmz_reclaim *zrc = context;

	if (read_err || write_err)
		zrc->kc_err = -EIO;
	else
		zrc->kc_err = 0;

	FUNC0(DMZ_RECLAIM_KCOPY, &zrc->flags);
	FUNC1();
	FUNC2(&zrc->flags, DMZ_RECLAIM_KCOPY);
}