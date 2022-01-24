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
struct w6692_hw {scalar_t__ state; int /*<<< orphan*/  dch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_PHCHANGE ; 
 int /*<<< orphan*/  W_L1CMD_DRC ; 
 scalar_t__ W_L1CMD_RST ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct w6692_hw *card)
{
	if (card->state == W_L1CMD_RST)
		FUNC0(card, W_L1CMD_DRC);
	FUNC1(&card->dch, FLG_PHCHANGE);
}