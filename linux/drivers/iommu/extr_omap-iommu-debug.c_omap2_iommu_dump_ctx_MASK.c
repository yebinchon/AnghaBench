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
struct omap_iommu {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM ; 
 int /*<<< orphan*/  CNTL ; 
 int /*<<< orphan*/  EMU_FAULT_AD ; 
 int /*<<< orphan*/  FAULT_AD ; 
 int /*<<< orphan*/  FLUSH_ENTRY ; 
 int /*<<< orphan*/  GFLUSH ; 
 int /*<<< orphan*/  IRQENABLE ; 
 int /*<<< orphan*/  IRQSTATUS ; 
 int /*<<< orphan*/  LD_TLB ; 
 int /*<<< orphan*/  LOCK ; 
 int /*<<< orphan*/  RAM ; 
 int /*<<< orphan*/  READ_CAM ; 
 int /*<<< orphan*/  READ_RAM ; 
 int /*<<< orphan*/  REVISION ; 
 int /*<<< orphan*/  TTB ; 
 int /*<<< orphan*/  WALKING_ST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC1(struct omap_iommu *obj, char *buf, ssize_t len)
{
	char *p = buf;

	FUNC0(REVISION);
	FUNC0(IRQSTATUS);
	FUNC0(IRQENABLE);
	FUNC0(WALKING_ST);
	FUNC0(CNTL);
	FUNC0(FAULT_AD);
	FUNC0(TTB);
	FUNC0(LOCK);
	FUNC0(LD_TLB);
	FUNC0(CAM);
	FUNC0(RAM);
	FUNC0(GFLUSH);
	FUNC0(FLUSH_ENTRY);
	FUNC0(READ_CAM);
	FUNC0(READ_RAM);
	FUNC0(EMU_FAULT_AD);
out:
	return p - buf;
}