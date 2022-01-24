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
 unsigned int FE_TUNE_MODE_ONESHOT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int*) ; 
 int FUNC1 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
			bool re_tune,
			unsigned int mode_flags,
			unsigned int *delay,
			enum fe_status *status)
{
	int retval = 0;

	if (re_tune)
		retval = FUNC1(fe);

	if (!(mode_flags & FE_TUNE_MODE_ONESHOT))
		FUNC0(fe, status);
	*delay = HZ/10;

	return retval;
}