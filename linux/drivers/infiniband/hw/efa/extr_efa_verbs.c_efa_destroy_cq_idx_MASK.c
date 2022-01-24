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
struct efa_dev {int /*<<< orphan*/  edev; } ;
struct efa_com_destroy_cq_params {int cq_idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct efa_com_destroy_cq_params*) ; 

__attribute__((used)) static int FUNC1(struct efa_dev *dev, int cq_idx)
{
	struct efa_com_destroy_cq_params params = { .cq_idx = cq_idx };

	return FUNC0(&dev->edev, &params);
}