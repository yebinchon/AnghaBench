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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct sg_mapping_iter {scalar_t__ length; char* addr; } ;
struct fpga_manager {TYPE_1__* mops; } ;
struct fpga_image_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ initial_header_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SG_MITER_FROM_SG ; 
 int FUNC0 (struct fpga_manager*,struct fpga_image_info*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_mapping_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_mapping_iter*) ; 

__attribute__((used)) static int FUNC7(struct fpga_manager *mgr,
				  struct fpga_image_info *info,
				  struct sg_table *sgt)
{
	struct sg_mapping_iter miter;
	size_t len;
	char *buf;
	int ret;

	if (!mgr->mops->initial_header_size)
		return FUNC0(mgr, info, NULL, 0);

	/*
	 * First try to use miter to map the first fragment to access the
	 * header, this is the typical path.
	 */
	FUNC5(&miter, sgt->sgl, sgt->nents, SG_MITER_FROM_SG);
	if (FUNC4(&miter) &&
	    miter.length >= mgr->mops->initial_header_size) {
		ret = FUNC0(mgr, info, miter.addr,
					      miter.length);
		FUNC6(&miter);
		return ret;
	}
	FUNC6(&miter);

	/* Otherwise copy the fragments into temporary memory. */
	buf = FUNC2(mgr->mops->initial_header_size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	len = FUNC3(sgt->sgl, sgt->nents, buf,
				mgr->mops->initial_header_size);
	ret = FUNC0(mgr, info, buf, len);

	FUNC1(buf);

	return ret;
}