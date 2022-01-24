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
struct host1x_channel {int /*<<< orphan*/  id; } ;
struct host1x_cdma {int torndown; } ;
struct host1x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct host1x*,struct host1x_channel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x_cdma*,int /*<<< orphan*/ ) ; 
 struct host1x_channel* FUNC2 (struct host1x_cdma*) ; 
 struct host1x* FUNC3 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct host1x_cdma *cdma, u32 getptr)
{
	struct host1x *host1x = FUNC3(cdma);
	struct host1x_channel *ch = FUNC2(cdma);

	FUNC4(host1x->dev,
		"resuming channel (id %u, DMAGET restart = 0x%x)\n",
		ch->id, getptr);

	FUNC0(host1x, ch, false);

	cdma->torndown = false;
	FUNC1(cdma, getptr);
}