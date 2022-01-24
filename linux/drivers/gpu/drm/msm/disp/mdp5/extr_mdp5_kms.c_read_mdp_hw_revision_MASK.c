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
typedef  int /*<<< orphan*/  u32 ;
struct mdp5_kms {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDP5_HW_VERSION_MAJOR ; 
 int /*<<< orphan*/  MDP5_HW_VERSION_MINOR ; 
 int /*<<< orphan*/  REG_MDP5_HW_VERSION ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct mdp5_kms *mdp5_kms,
				 u32 *major, u32 *minor)
{
	struct device *dev = &mdp5_kms->pdev->dev;
	u32 version;

	FUNC3(dev);
	version = FUNC2(mdp5_kms, REG_MDP5_HW_VERSION);
	FUNC4(dev);

	*major = FUNC1(version, MDP5_HW_VERSION_MAJOR);
	*minor = FUNC1(version, MDP5_HW_VERSION_MINOR);

	FUNC0(dev, "MDP5 version v%d.%d", *major, *minor);
}