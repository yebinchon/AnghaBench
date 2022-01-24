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
typedef  int u32 ;
struct fritzcard {struct bchannel* bch; } ;
struct bchannel {int nr; int /*<<< orphan*/  Flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bchannel *
FUNC1(struct fritzcard *fc, u32 channel)
{
	if (FUNC0(FLG_ACTIVE, &fc->bch[0].Flags) &&
	    (fc->bch[0].nr & channel))
		return &fc->bch[0];
	else if (FUNC0(FLG_ACTIVE, &fc->bch[1].Flags) &&
		 (fc->bch[1].nr & channel))
		return &fc->bch[1];
	else
		return NULL;
}