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
struct intel_encoder {int dummy; } ;
struct intel_connector {int dummy; } ;
typedef  enum intel_hotplug_state { ____Placeholder_intel_hotplug_state } intel_hotplug_state ;

/* Variables and functions */
 int FUNC0 (struct intel_encoder*,struct intel_connector*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*) ; 

__attribute__((used)) static enum intel_hotplug_state
FUNC2(struct intel_encoder *encoder,
		   struct intel_connector *connector,
		   bool irq_received)
{
	FUNC1(encoder);

	return FUNC0(encoder, connector, irq_received);
}