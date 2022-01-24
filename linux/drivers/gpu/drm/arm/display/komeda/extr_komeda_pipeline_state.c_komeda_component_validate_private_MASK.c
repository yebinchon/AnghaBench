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
struct komeda_component_state {int dummy; } ;
struct komeda_component {int /*<<< orphan*/  name; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* validate ) (struct komeda_component*,struct komeda_component_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct komeda_component*,struct komeda_component_state*) ; 

__attribute__((used)) static int
FUNC2(struct komeda_component *c,
				  struct komeda_component_state *st)
{
	int err;

	if (!c->funcs->validate)
		return 0;

	err = c->funcs->validate(c, st);
	if (err)
		FUNC0("%s validate private failed.\n", c->name);

	return err;
}