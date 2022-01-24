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
struct fw_card {int /*<<< orphan*/  bm_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct fw_card *card, unsigned long delay)
{
	FUNC0(card);
	if (!FUNC2(&card->bm_work, delay))
		FUNC1(card);
}