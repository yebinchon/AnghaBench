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
struct hns_roce_eq {int cons_index; int entries; } ;
struct hns_roce_dev {struct device* dev; } ;
struct hns_roce_ceqe {int /*<<< orphan*/  comp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EQ_DEPTH_COEFF ; 
 int /*<<< orphan*/  HNS_ROCE_V2_CEQE_COMP_CQN_M ; 
 int /*<<< orphan*/  HNS_ROCE_V2_CEQE_COMP_CQN_S ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 struct hns_roce_ceqe* FUNC3 (struct hns_roce_eq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_eq*) ; 

__attribute__((used)) static int FUNC6(struct hns_roce_dev *hr_dev,
			       struct hns_roce_eq *eq)
{
	struct device *dev = hr_dev->dev;
	struct hns_roce_ceqe *ceqe = FUNC3(eq);
	int ceqe_found = 0;
	u32 cqn;

	while (ceqe) {
		/* Make sure we read CEQ entry after we have checked the
		 * ownership bit
		 */
		FUNC1();

		cqn = FUNC4(ceqe->comp,
				     HNS_ROCE_V2_CEQE_COMP_CQN_M,
				     HNS_ROCE_V2_CEQE_COMP_CQN_S);

		FUNC2(hr_dev, cqn);

		++eq->cons_index;
		ceqe_found = 1;

		if (eq->cons_index > (EQ_DEPTH_COEFF * eq->entries - 1)) {
			FUNC0(dev, "cons_index overflow, set back to 0.\n");
			eq->cons_index = 0;
		}

		ceqe = FUNC3(eq);
	}

	FUNC5(eq);

	return ceqe_found;
}