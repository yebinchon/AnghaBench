#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  prepare_link_retrain; int /*<<< orphan*/  output_reg; } ;
struct TYPE_3__ {int port; } ;
struct intel_digital_port {TYPE_2__ dp; TYPE_1__ base; } ;
struct intel_connector {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct intel_connector* FUNC1 () ; 
 int /*<<< orphan*/  intel_ddi_prepare_link_retrain ; 
 int /*<<< orphan*/  FUNC2 (struct intel_digital_port*,struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_connector*) ; 

__attribute__((used)) static struct intel_connector *
FUNC4(struct intel_digital_port *intel_dig_port)
{
	struct intel_connector *connector;
	enum port port = intel_dig_port->base.port;

	connector = FUNC1();
	if (!connector)
		return NULL;

	intel_dig_port->dp.output_reg = FUNC0(port);
	intel_dig_port->dp.prepare_link_retrain =
		intel_ddi_prepare_link_retrain;

	if (!FUNC2(intel_dig_port, connector)) {
		FUNC3(connector);
		return NULL;
	}

	return connector;
}