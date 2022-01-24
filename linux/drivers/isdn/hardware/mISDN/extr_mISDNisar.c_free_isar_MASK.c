#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct isar_hw {TYPE_2__* ch; } ;
struct TYPE_3__ {int /*<<< orphan*/  Flags; } ;
struct TYPE_4__ {TYPE_1__ bch; int /*<<< orphan*/  ftimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_INITIALIZED ; 
 int /*<<< orphan*/  ISDN_P_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct isar_hw *isar)
{
	FUNC1(&isar->ch[0], ISDN_P_NONE);
	FUNC1(&isar->ch[1], ISDN_P_NONE);
	FUNC0(&isar->ch[0].ftimer);
	FUNC0(&isar->ch[1].ftimer);
	FUNC2(FLG_INITIALIZED, &isar->ch[0].bch.Flags);
	FUNC2(FLG_INITIALIZED, &isar->ch[1].bch.Flags);
}