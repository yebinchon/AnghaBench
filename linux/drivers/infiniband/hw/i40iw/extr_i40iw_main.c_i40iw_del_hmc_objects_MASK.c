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
struct i40iw_sc_dev {int dummy; } ;
struct i40iw_hmc_info {int dummy; } ;

/* Variables and functions */
 unsigned int IW_HMC_OBJ_TYPE_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct i40iw_sc_dev*,int /*<<< orphan*/ ,struct i40iw_hmc_info*,int,int) ; 
 int /*<<< orphan*/ * iw_hmc_obj_types ; 

__attribute__((used)) static void FUNC1(struct i40iw_sc_dev *dev,
				  struct i40iw_hmc_info *hmc_info,
				  bool is_pf,
				  bool reset)
{
	unsigned int i;

	for (i = 0; i < IW_HMC_OBJ_TYPE_NUM; i++)
		FUNC0(dev, iw_hmc_obj_types[i], hmc_info, is_pf, reset);
}