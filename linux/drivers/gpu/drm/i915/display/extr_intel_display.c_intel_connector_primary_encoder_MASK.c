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
struct intel_encoder {int dummy; } ;
struct intel_connector {int /*<<< orphan*/  base; scalar_t__ mst_port; } ;
struct TYPE_2__ {struct intel_encoder base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 struct intel_encoder* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct intel_encoder *
FUNC3(struct intel_connector *connector)
{
	struct intel_encoder *encoder;

	if (connector->mst_port)
		return &FUNC1(connector->mst_port)->base;

	encoder = FUNC2(&connector->base);
	FUNC0(!encoder);

	return encoder;
}