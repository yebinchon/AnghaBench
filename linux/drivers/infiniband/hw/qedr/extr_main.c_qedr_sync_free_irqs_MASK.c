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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct TYPE_4__ {int used_cnt; TYPE_1__* msix; scalar_t__ msix_cnt; } ;
struct qedr_dev {int num_hwfns; size_t affin_hwfn_idx; TYPE_2__ int_info; int /*<<< orphan*/ * cnq_array; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qedr_dev *dev)
{
	u32 vector;
	u16 idx;
	int i;

	for (i = 0; i < dev->int_info.used_cnt; i++) {
		if (dev->int_info.msix_cnt) {
			idx = i * dev->num_hwfns + dev->affin_hwfn_idx;
			vector = dev->int_info.msix[idx].vector;
			FUNC1(vector);
			FUNC0(vector, &dev->cnq_array[i]);
		}
	}

	dev->int_info.used_cnt = 0;
}