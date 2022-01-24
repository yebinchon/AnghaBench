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
struct pci_dev {scalar_t__ device; } ;

/* Variables and functions */
 scalar_t__ CHV_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline bool FUNC1(struct pci_dev *pdev)
{
	return !FUNC0() || pdev->device == CHV_DEVICE_ID;
}