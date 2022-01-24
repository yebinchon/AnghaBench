#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ crtc; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_4__ {scalar_t__ is_mst; } ;
struct intel_digital_port {int /*<<< orphan*/  tc_lock; int /*<<< orphan*/  tc_mode; int /*<<< orphan*/  tc_port_name; scalar_t__ tc_legacy_port; TYPE_1__ dp; struct intel_encoder base; } ;
struct TYPE_6__ {int active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_digital_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_digital_port*) ; 
 int FUNC3 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_digital_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (scalar_t__) ; 

void FUNC10(struct intel_digital_port *dig_port)
{
	struct intel_encoder *encoder = &dig_port->base;
	int active_links = 0;

	FUNC6(&dig_port->tc_lock);

	dig_port->tc_mode = FUNC4(dig_port);
	if (dig_port->dp.is_mst)
		active_links = FUNC3(dig_port);
	else if (encoder->base.crtc)
		active_links = FUNC9(encoder->base.crtc)->active;

	if (active_links) {
		if (!FUNC2(dig_port))
			FUNC0("Port %s: PHY disconnected with %d active link(s)\n",
				      dig_port->tc_port_name, active_links);
		FUNC5(dig_port, active_links);

		goto out;
	}

	if (dig_port->tc_legacy_port)
		FUNC1(dig_port, 1);

out:
	FUNC0("Port %s: sanitize mode (%s)\n",
		      dig_port->tc_port_name,
		      FUNC8(dig_port->tc_mode));

	FUNC7(&dig_port->tc_lock);
}