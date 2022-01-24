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
struct mdp5_pipeline {struct mdp5_interface* intf; } ;
struct mdp5_interface {int /*<<< orphan*/  num; } ;
struct mdp5_ctl {int encoder_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_ctl*) ; 
 scalar_t__ FUNC3 (struct mdp5_ctl*,struct mdp5_pipeline*) ; 

int FUNC4(struct mdp5_ctl *ctl,
			       struct mdp5_pipeline *pipeline,
			       bool enabled)
{
	struct mdp5_interface *intf = pipeline->intf;

	if (FUNC1(!ctl))
		return -EINVAL;

	ctl->encoder_enabled = enabled;
	FUNC0("intf_%d: %s", intf->num, enabled ? "on" : "off");

	if (FUNC3(ctl, pipeline)) {
		FUNC2(ctl);
	}

	return 0;
}