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
struct w6692_hw {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * W6692Ver ; 
 int /*<<< orphan*/  W_D_RBCH ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct w6692_hw *card)
{
	int val;

	val = FUNC0(card, W_D_RBCH);
	FUNC1("%s: Winbond W6692 version: %s\n", card->name,
		  W6692Ver[(val >> 6) & 3]);
}