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
struct intel_digital_connector_state {int /*<<< orphan*/  base; } ;
struct intel_connector {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct intel_digital_connector_state* FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(struct intel_connector *connector)
{
	struct intel_digital_connector_state *conn_state;

	/*
	 * Allocate enough memory to hold intel_digital_connector_state,
	 * This might be a few bytes too many, but for connectors that don't
	 * need it we'll free the state and allocate a smaller one on the first
	 * successful commit anyway.
	 */
	conn_state = FUNC1(sizeof(*conn_state), GFP_KERNEL);
	if (!conn_state)
		return -ENOMEM;

	FUNC0(&connector->base,
					    &conn_state->base);

	return 0;
}