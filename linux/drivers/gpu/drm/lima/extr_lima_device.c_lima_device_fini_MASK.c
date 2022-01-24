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
struct lima_device {int /*<<< orphan*/  empty_vm; int /*<<< orphan*/  dlbu_dma; scalar_t__ dlbu_cpu; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lima_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct lima_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lima_device*) ; 
 int lima_ip_num ; 
 int /*<<< orphan*/  FUNC5 (struct lima_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct lima_device *ldev)
{
	int i;

	FUNC4(ldev);
	FUNC2(ldev);

	for (i = lima_ip_num - 1; i >= 0; i--)
		FUNC3(ldev, i);

	if (ldev->dlbu_cpu)
		FUNC0(ldev->dev, LIMA_PAGE_SIZE,
			    ldev->dlbu_cpu, ldev->dlbu_dma);

	FUNC6(ldev->empty_vm);

	FUNC5(ldev);

	FUNC1(ldev);
}