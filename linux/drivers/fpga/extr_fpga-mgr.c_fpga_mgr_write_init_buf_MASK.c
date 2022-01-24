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
struct fpga_manager {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; TYPE_1__* mops; } ;
struct fpga_image_info {int dummy; } ;
struct TYPE_2__ {int (* write_init ) (struct fpga_manager*,struct fpga_image_info*,char const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  initial_header_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPGA_MGR_STATE_WRITE_INIT ; 
 int /*<<< orphan*/  FPGA_MGR_STATE_WRITE_INIT_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (struct fpga_manager*,struct fpga_image_info*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fpga_manager*,struct fpga_image_info*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fpga_manager *mgr,
				   struct fpga_image_info *info,
				   const char *buf, size_t count)
{
	int ret;

	mgr->state = FPGA_MGR_STATE_WRITE_INIT;
	if (!mgr->mops->initial_header_size)
		ret = mgr->mops->write_init(mgr, info, NULL, 0);
	else
		ret = mgr->mops->write_init(
		    mgr, info, buf, FUNC1(mgr->mops->initial_header_size, count));

	if (ret) {
		FUNC0(&mgr->dev, "Error preparing FPGA for writing\n");
		mgr->state = FPGA_MGR_STATE_WRITE_INIT_ERR;
		return ret;
	}

	return 0;
}