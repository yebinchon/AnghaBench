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
struct icp_qat_uclo_aedata {unsigned int slice_num; TYPE_1__* ae_slices; } ;
struct TYPE_2__ {int /*<<< orphan*/ * page; int /*<<< orphan*/ * region; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct icp_qat_uclo_aedata *ae_data)
{
	unsigned int i;

	if (!ae_data) {
		FUNC1("QAT: bad argument, ae_data is NULL\n ");
		return -EINVAL;
	}

	for (i = 0; i < ae_data->slice_num; i++) {
		FUNC0(ae_data->ae_slices[i].region);
		ae_data->ae_slices[i].region = NULL;
		FUNC0(ae_data->ae_slices[i].page);
		ae_data->ae_slices[i].page = NULL;
	}
	return 0;
}