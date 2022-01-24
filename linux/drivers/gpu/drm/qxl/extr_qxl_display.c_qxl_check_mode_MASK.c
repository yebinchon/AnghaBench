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
struct qxl_device {unsigned int vram_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC1(struct qxl_device *qdev,
			  unsigned int width,
			  unsigned int height)
{
	unsigned int stride;
	unsigned int size;

	if (FUNC0(width, 4u, &stride))
		return -EINVAL;
	if (FUNC0(stride, height, &size))
		return -EINVAL;
	if (size > qdev->vram_size)
		return -ENOMEM;
	return 0;
}