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
struct inode {int dummy; } ;
struct file {struct drm_dp_aux_dev* private_data; } ;
struct drm_dp_aux_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct drm_dp_aux_dev* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct inode*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	unsigned int minor = FUNC1(inode);
	struct drm_dp_aux_dev *aux_dev;

	aux_dev = FUNC0(minor);
	if (!aux_dev)
		return -ENODEV;

	file->private_data = aux_dev;
	return 0;
}