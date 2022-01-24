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
struct rdma_ud_param {int /*<<< orphan*/  qkey; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  ah_attr; scalar_t__ private_data_len; int /*<<< orphan*/  private_data; } ;
struct rdma_ucm_ud_param {int /*<<< orphan*/  qkey; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  ah_attr; scalar_t__ private_data_len; int /*<<< orphan*/  private_data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ib_device *device,
			       struct rdma_ucm_ud_param *dst,
			       struct rdma_ud_param *src)
{
	if (src->private_data_len)
		FUNC1(dst->private_data, src->private_data,
		       src->private_data_len);
	dst->private_data_len = src->private_data_len;
	FUNC0(device, &dst->ah_attr, &src->ah_attr);
	dst->qp_num = src->qp_num;
	dst->qkey = src->qkey;
}