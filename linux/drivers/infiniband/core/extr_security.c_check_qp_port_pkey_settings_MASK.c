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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ib_qp_security {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct ib_ports_pkeys {TYPE_1__ alt; TYPE_1__ main; } ;

/* Variables and functions */
 scalar_t__ IB_PORT_PKEY_NOT_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_qp_security*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ib_ports_pkeys *pps,
				       struct ib_qp_security *sec)
{
	u64 subnet_prefix;
	u16 pkey;
	int ret = 0;

	if (!pps)
		return 0;

	if (pps->main.state != IB_PORT_PKEY_NOT_VALID) {
		ret = FUNC1(&pps->main,
						 &pkey,
						 &subnet_prefix);
		if (ret)
			return ret;

		ret = FUNC0(pkey,
					       subnet_prefix,
					       sec);
		if (ret)
			return ret;
	}

	if (pps->alt.state != IB_PORT_PKEY_NOT_VALID) {
		ret = FUNC1(&pps->alt,
						 &pkey,
						 &subnet_prefix);
		if (ret)
			return ret;

		ret = FUNC0(pkey,
					       subnet_prefix,
					       sec);
	}

	return ret;
}