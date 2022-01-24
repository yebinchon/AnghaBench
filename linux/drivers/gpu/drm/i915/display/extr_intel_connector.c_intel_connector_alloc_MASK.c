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
struct intel_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_connector*) ; 
 struct intel_connector* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct intel_connector *FUNC3(void)
{
	struct intel_connector *connector;

	connector = FUNC2(sizeof(*connector), GFP_KERNEL);
	if (!connector)
		return NULL;

	if (FUNC0(connector) < 0) {
		FUNC1(connector);
		return NULL;
	}

	return connector;
}