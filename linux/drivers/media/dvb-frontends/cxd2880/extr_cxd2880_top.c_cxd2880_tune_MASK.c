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
struct dvb_frontend {int dummy; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int FUNC0 (struct dvb_frontend*,int*) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
			bool retune,
			unsigned int mode_flags,
			unsigned int *delay,
			enum fe_status *status)
{
	int ret;

	if (!fe || !delay || !status) {
		FUNC2("invalid arg.");
		return -EINVAL;
	}

	if (retune) {
		ret = FUNC1(fe);
		if (ret) {
			FUNC2("cxd2880_set_frontend failed %d\n", ret);
			return ret;
		}
	}

	*delay = HZ / 5;

	return FUNC0(fe, status);
}