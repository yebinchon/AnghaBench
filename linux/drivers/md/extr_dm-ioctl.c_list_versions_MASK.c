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
struct file {int dummy; } ;
struct dm_ioctl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dm_ioctl*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
	return FUNC0(param, param_size, NULL);
}