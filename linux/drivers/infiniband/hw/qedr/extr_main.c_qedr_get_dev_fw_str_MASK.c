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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  fw_ver; } ;
struct qedr_dev {TYPE_1__ attr; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_FW_VERSION_NAME_MAX ; 
 struct qedr_dev* FUNC0 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct ib_device *ibdev, char *str)
{
	struct qedr_dev *qedr = FUNC0(ibdev);
	u32 fw_ver = (u32)qedr->attr.fw_ver;

	FUNC1(str, IB_FW_VERSION_NAME_MAX, "%d.%d.%d.%d",
		 (fw_ver >> 24) & 0xFF, (fw_ver >> 16) & 0xFF,
		 (fw_ver >> 8) & 0xFF, fw_ver & 0xFF);
}