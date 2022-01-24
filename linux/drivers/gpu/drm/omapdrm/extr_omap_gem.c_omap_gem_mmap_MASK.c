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
struct vm_area_struct {int /*<<< orphan*/  vm_private_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct file*,struct vm_area_struct*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 

int FUNC3(struct file *filp, struct vm_area_struct *vma)
{
	int ret;

	ret = FUNC1(filp, vma);
	if (ret) {
		FUNC0("mmap failed: %d", ret);
		return ret;
	}

	return FUNC2(vma->vm_private_data, vma);
}