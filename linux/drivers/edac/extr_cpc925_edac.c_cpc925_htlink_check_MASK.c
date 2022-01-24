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
typedef  int u32 ;
struct edac_device_ctl_info {int /*<<< orphan*/  ctl_name; struct cpc925_dev_info* pvt_info; } ;
struct cpc925_dev_info {scalar_t__ vbase; } ;

/* Variables and functions */
 int BRGCTRL_DETSERR ; 
 int BRGCTRL_SECBUSRESET ; 
 int ERRCTRL_CHN_FAL ; 
 int ERRCTRL_RSP_ERR ; 
 int HT_ERRCTRL_DETECTED ; 
 int HT_LINKCTRL_DETECTED ; 
 int HT_LINKERR_DETECTED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ REG_BRGCTRL_OFFSET ; 
 scalar_t__ REG_ERRCTRL_OFFSET ; 
 scalar_t__ REG_LINKCTRL_OFFSET ; 
 scalar_t__ REG_LINKERR_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct edac_device_ctl_info *edac_dev)
{
	struct cpc925_dev_info *dev_info = edac_dev->pvt_info;
	u32 brgctrl = FUNC0(dev_info->vbase + REG_BRGCTRL_OFFSET);
	u32 linkctrl = FUNC0(dev_info->vbase + REG_LINKCTRL_OFFSET);
	u32 errctrl = FUNC0(dev_info->vbase + REG_ERRCTRL_OFFSET);
	u32 linkerr = FUNC0(dev_info->vbase + REG_LINKERR_OFFSET);

	if (!((brgctrl & BRGCTRL_DETSERR) ||
	      (linkctrl & HT_LINKCTRL_DETECTED) ||
	      (errctrl & HT_ERRCTRL_DETECTED) ||
	      (linkerr & HT_LINKERR_DETECTED)))
		return;

	FUNC2(KERN_INFO, "HT Link Fault\n"
				 "HT register dump:\n");
	FUNC2(KERN_INFO, "Bridge Ctrl			0x%08x\n",
		      brgctrl);
	FUNC2(KERN_INFO, "Link Config Ctrl		0x%08x\n",
		      linkctrl);
	FUNC2(KERN_INFO, "Error Enum and Ctrl		0x%08x\n",
		      errctrl);
	FUNC2(KERN_INFO, "Link Error			0x%08x\n",
		      linkerr);

	/* Clear by write 1 */
	if (brgctrl & BRGCTRL_DETSERR)
		FUNC1(BRGCTRL_DETSERR,
				dev_info->vbase + REG_BRGCTRL_OFFSET);

	if (linkctrl & HT_LINKCTRL_DETECTED)
		FUNC1(HT_LINKCTRL_DETECTED,
				dev_info->vbase + REG_LINKCTRL_OFFSET);

	/* Initiate Secondary Bus Reset to clear the chain failure */
	if (errctrl & ERRCTRL_CHN_FAL)
		FUNC1(BRGCTRL_SECBUSRESET,
				dev_info->vbase + REG_BRGCTRL_OFFSET);

	if (errctrl & ERRCTRL_RSP_ERR)
		FUNC1(ERRCTRL_RSP_ERR,
				dev_info->vbase + REG_ERRCTRL_OFFSET);

	if (linkerr & HT_LINKERR_DETECTED)
		FUNC1(HT_LINKERR_DETECTED,
				dev_info->vbase + REG_LINKERR_OFFSET);

	FUNC3(edac_dev, 0, 0, edac_dev->ctl_name);
}