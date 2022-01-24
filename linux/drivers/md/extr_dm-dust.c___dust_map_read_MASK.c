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
struct dust_device {int /*<<< orphan*/  badblocklist; } ;
struct badblock {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 struct badblock* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dust_device *dd, sector_t thisblock)
{
	struct badblock *bblk = FUNC0(&dd->badblocklist, thisblock);

	if (bblk)
		return DM_MAPIO_KILL;

	return DM_MAPIO_REMAPPED;
}