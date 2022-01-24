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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct dev_pstate_set {int /*<<< orphan*/  pstate; int /*<<< orphan*/  dev_id; } ;
typedef  int /*<<< orphan*/  stat ;
typedef  int /*<<< orphan*/  dev_set ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_DEVICE_PWR_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct dev_pstate_set*,int,int*,int) ; 

__attribute__((used)) static int FUNC2(u16 dev_id, u8 pstate)
{
	int stat;
	struct dev_pstate_set dev_set = {
		.dev_id = FUNC0(dev_id),
		.pstate = pstate,
	};

	return FUNC1(CMD_SET_DEVICE_PWR_STATE, &dev_set,
				 sizeof(dev_set), &stat, sizeof(stat));
}