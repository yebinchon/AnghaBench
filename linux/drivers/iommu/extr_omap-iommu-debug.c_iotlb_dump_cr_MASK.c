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
struct seq_file {int dummy; } ;
struct omap_iommu {int dummy; } ;
struct cr_regs {int cam; int /*<<< orphan*/  ram; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int MMU_CAM_P ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC1(struct omap_iommu *obj, struct cr_regs *cr,
			     struct seq_file *s)
{
	FUNC0(s, "%08x %08x %01x\n", cr->cam, cr->ram,
		   (cr->cam & MMU_CAM_P) ? 1 : 0);
	return 0;
}