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
struct adf_accel_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct adf_accel_dev*) ; 
 struct adf_accel_dev* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct adf_accel_dev *accel_dev = FUNC4(pdev);

	if (!accel_dev) {
		FUNC6("QAT: Driver removal failed\n");
		return;
	}
	FUNC3(accel_dev);
	FUNC2(accel_dev);
	FUNC0(accel_dev);
	FUNC1(accel_dev);
	FUNC5(accel_dev);
}