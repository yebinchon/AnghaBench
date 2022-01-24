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
struct dmz_reclaim {int /*<<< orphan*/  kc; int /*<<< orphan*/  wq; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_reclaim*) ; 

void FUNC4(struct dmz_reclaim *zrc)
{
	FUNC0(&zrc->work);
	FUNC1(zrc->wq);
	FUNC2(zrc->kc);
	FUNC3(zrc);
}