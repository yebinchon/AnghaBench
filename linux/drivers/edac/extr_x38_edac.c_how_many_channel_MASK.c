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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ X38_CAPID0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,unsigned char*) ; 
 int x38_channel_num ; 

__attribute__((used)) static int FUNC2(struct pci_dev *pdev)
{
	unsigned char capid0_8b; /* 8th byte of CAPID0 */

	FUNC1(pdev, X38_CAPID0 + 8, &capid0_8b);
	if (capid0_8b & 0x20) {	/* check DCD: Dual Channel Disable */
		FUNC0(0, "In single channel mode\n");
		x38_channel_num = 1;
	} else {
		FUNC0(0, "In dual channel mode\n");
		x38_channel_num = 2;
	}

	return x38_channel_num;
}