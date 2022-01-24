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
typedef  int /*<<< orphan*/  u32 ;
struct tiger_hw {int base; int base_s; int /*<<< orphan*/  isac; int /*<<< orphan*/  name; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  ISAC ; 
 int /*<<< orphan*/  nj ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct tiger_hw *card)
{
	card->base = FUNC2(card->pdev, 0);
	card->base_s = FUNC1(card->pdev, 0);
	if (!FUNC4(card->base, card->base_s, card->name)) {
		FUNC3("%s: NETjet config port %#x-%#x already in use\n",
			card->name, card->base,
			(u32)(card->base + card->base_s - 1));
		card->base_s = 0;
		return -EIO;
	}
	FUNC0(nj, ISAC, card->isac);
	return 0;
}