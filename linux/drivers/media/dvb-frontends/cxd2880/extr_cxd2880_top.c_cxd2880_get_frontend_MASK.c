#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int delivery_system; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; } ;
struct dtv_frontend_properties {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SYS_DVBT 129 
#define  SYS_DVBT2 128 
 int FUNC0 (struct dvb_frontend*,struct dtv_frontend_properties*) ; 
 int FUNC1 (struct dvb_frontend*,struct dtv_frontend_properties*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
				struct dtv_frontend_properties *props)
{
	int ret;

	if (!fe || !props) {
		FUNC3("invalid arg.");
		return -EINVAL;
	}

	FUNC2("system=%d\n", fe->dtv_property_cache.delivery_system);
	switch (fe->dtv_property_cache.delivery_system) {
	case SYS_DVBT:
		ret = FUNC0(fe, props);
		break;
	case SYS_DVBT2:
		ret = FUNC1(fe, props);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}