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
typedef  scalar_t__ u32 ;
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HISI_ACC_SGL_SGE_NR_MAX ; 
 int FUNC0 (char const*,int,scalar_t__*) ; 
 int FUNC1 (char const*,struct kernel_param const*) ; 

__attribute__((used)) static int FUNC2(const char *val, const struct kernel_param *kp)
{
	int ret;
	u32 n;

	if (!val)
		return -EINVAL;

	ret = FUNC0(val, 10, &n);
	if (ret != 0 || n > HISI_ACC_SGL_SGE_NR_MAX || n == 0)
		return -EINVAL;

	return FUNC1(val, kp);
}