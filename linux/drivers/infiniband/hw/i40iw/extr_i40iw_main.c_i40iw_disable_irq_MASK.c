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
struct i40iw_sc_dev {int /*<<< orphan*/  hw; scalar_t__ is_pf; } ;
struct i40iw_msix_vector {int /*<<< orphan*/  irq; scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct i40iw_sc_dev *dev,
			      struct i40iw_msix_vector *msix_vec,
			      void *dev_id)
{
	if (dev->is_pf)
		FUNC3(dev->hw, FUNC0(msix_vec->idx - 1), 0);
	else
		FUNC3(dev->hw, FUNC1(msix_vec->idx - 1), 0);
	FUNC4(msix_vec->irq, NULL);
	FUNC2(msix_vec->irq, dev_id);
}