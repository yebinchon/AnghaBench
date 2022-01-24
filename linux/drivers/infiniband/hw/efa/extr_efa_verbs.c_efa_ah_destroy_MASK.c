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
struct efa_dev {int /*<<< orphan*/  edev; } ;
struct efa_com_destroy_ah_params {int /*<<< orphan*/  pdn; int /*<<< orphan*/  ah; } ;
struct TYPE_3__ {int /*<<< orphan*/  pd; } ;
struct efa_ah {TYPE_1__ ibah; int /*<<< orphan*/  ah; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct efa_com_destroy_ah_params*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct efa_dev *dev, struct efa_ah *ah)
{
	struct efa_com_destroy_ah_params params = {
		.ah = ah->ah,
		.pdn = FUNC1(ah->ibah.pd)->pdn,
	};

	return FUNC0(&dev->edev, &params);
}