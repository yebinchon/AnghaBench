#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pxad_chan {TYPE_1__* phy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DALGN ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct pxad_chan *chan)
{
	u32 dalgn;

	FUNC1(!chan->phy);
	dalgn = FUNC2(chan->phy, DALGN);
	return dalgn & (FUNC0(chan->phy->idx));
}