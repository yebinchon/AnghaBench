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
struct tpci200_slot {int dummy; } ;
struct tpci200_board {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * slots; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TPCI200_NB_SLOT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tpci200_board*) ; 

__attribute__((used)) static int FUNC4(struct tpci200_board *tpci200)
{
	int res;

	tpci200->slots = FUNC0(TPCI200_NB_SLOT, sizeof(struct tpci200_slot),
				 GFP_KERNEL);
	if (tpci200->slots == NULL)
		return -ENOMEM;

	res = FUNC3(tpci200);
	if (res) {
		FUNC1(tpci200->slots);
		tpci200->slots = NULL;
		return res;
	}

	FUNC2(&tpci200->mutex);
	return 0;
}