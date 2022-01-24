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
struct vm_area_struct {int dummy; } ;
struct video_device {int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct video_device* FUNC1 (struct file*) ; 

int FUNC2(struct file *file, struct vm_area_struct *vma)
{
	struct video_device *vdev = FUNC1(file);

	return FUNC0(vdev->queue, vma);
}