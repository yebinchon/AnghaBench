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
struct malidp_se_config {int /*<<< orphan*/  hcoeff; int /*<<< orphan*/  vcoeff; } ;
struct malidp_hw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MALIDP550_SE_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MALIDP550_SE_CTL_SEL_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_hw_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct malidp_hw_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct malidp_hw_device *hwdev,
					   struct malidp_se_config *se_config,
					   struct malidp_se_config *old_config)
{
	u32 mask = FUNC1(MALIDP550_SE_CTL_SEL_MASK) |
		   FUNC0(MALIDP550_SE_CTL_SEL_MASK);
	u32 new_value = FUNC1(se_config->vcoeff) |
			FUNC0(se_config->hcoeff);

	FUNC2(hwdev, mask, MALIDP550_SE_CONTROL);
	FUNC3(hwdev, new_value, MALIDP550_SE_CONTROL);
	return 0;
}