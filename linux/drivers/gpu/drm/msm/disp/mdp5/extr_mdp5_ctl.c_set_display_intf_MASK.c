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
struct mdp5_kms {int /*<<< orphan*/  resource_lock; } ;
struct mdp5_interface {int num; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDP5_DISP_INTF_SEL_INTF0__MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDP5_DISP_INTF_SEL_INTF1__MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDP5_DISP_INTF_SEL_INTF2__MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDP5_DISP_INTF_SEL_INTF3__MASK ; 
 int /*<<< orphan*/  REG_MDP5_DISP_INTF_SEL ; 
 int /*<<< orphan*/  FUNC5 (struct mdp5_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mdp5_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct mdp5_kms *mdp5_kms,
		struct mdp5_interface *intf)
{
	unsigned long flags;
	u32 intf_sel;

	FUNC7(&mdp5_kms->resource_lock, flags);
	intf_sel = FUNC5(mdp5_kms, REG_MDP5_DISP_INTF_SEL);

	switch (intf->num) {
	case 0:
		intf_sel &= ~MDP5_DISP_INTF_SEL_INTF0__MASK;
		intf_sel |= FUNC1(intf->type);
		break;
	case 1:
		intf_sel &= ~MDP5_DISP_INTF_SEL_INTF1__MASK;
		intf_sel |= FUNC2(intf->type);
		break;
	case 2:
		intf_sel &= ~MDP5_DISP_INTF_SEL_INTF2__MASK;
		intf_sel |= FUNC3(intf->type);
		break;
	case 3:
		intf_sel &= ~MDP5_DISP_INTF_SEL_INTF3__MASK;
		intf_sel |= FUNC4(intf->type);
		break;
	default:
		FUNC0();
		break;
	}

	FUNC6(mdp5_kms, REG_MDP5_DISP_INTF_SEL, intf_sel);
	FUNC8(&mdp5_kms->resource_lock, flags);
}