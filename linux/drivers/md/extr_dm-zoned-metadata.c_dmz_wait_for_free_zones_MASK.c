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
struct dmz_metadata {int /*<<< orphan*/  free_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC8(struct dmz_metadata *zmd)
{
	FUNC0(wait);

	FUNC7(&zmd->free_wq, &wait, TASK_UNINTERRUPTIBLE);
	FUNC3(zmd);
	FUNC4(zmd);

	FUNC6(HZ);

	FUNC2(zmd);
	FUNC1(zmd);
	FUNC5(&zmd->free_wq, &wait);
}