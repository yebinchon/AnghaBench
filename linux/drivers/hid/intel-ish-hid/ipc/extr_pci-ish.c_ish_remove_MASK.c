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
struct ishtp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_device*,int) ; 
 struct ishtp_device* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct ishtp_device *ishtp_dev = FUNC2(pdev);

	FUNC1(ishtp_dev, false);
	FUNC0(ishtp_dev);
}