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
struct psmouse_protocol {unsigned int type; int /*<<< orphan*/  maxproto; } ;
struct kernel_param {scalar_t__ arg; } ;

/* Variables and functions */
 int EINVAL ; 
 struct psmouse_protocol* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *val, const struct kernel_param *kp)
{
	const struct psmouse_protocol *proto;

	if (!val)
		return -EINVAL;

	proto = FUNC0(val, FUNC1(val));

	if (!proto || !proto->maxproto)
		return -EINVAL;

	*((unsigned int *)kp->arg) = proto->type;

	return 0;
}