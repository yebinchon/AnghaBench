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
 int /*<<< orphan*/  SIS630_SMB_IOREGION ; 
 scalar_t__ SMB_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sis630_adapter ; 
 scalar_t__ smbus_base ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	if (smbus_base) {
		FUNC0(&sis630_adapter);
		FUNC1(smbus_base + SMB_STS, SIS630_SMB_IOREGION);
		smbus_base = 0;
	}
}