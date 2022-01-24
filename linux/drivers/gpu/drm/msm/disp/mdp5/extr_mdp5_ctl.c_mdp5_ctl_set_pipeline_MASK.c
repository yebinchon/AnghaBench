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
struct mdp5_kms {int dummy; } ;
struct mdp5_interface {int /*<<< orphan*/  type; } ;
struct mdp5_ctl {int /*<<< orphan*/  ctlm; } ;

/* Variables and functions */
 struct mdp5_kms* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_ctl*,struct mdp5_pipeline*) ; 
 int /*<<< orphan*/  FUNC3 (struct mdp5_kms*,struct mdp5_interface*) ; 

int FUNC4(struct mdp5_ctl *ctl, struct mdp5_pipeline *pipeline)
{
	struct mdp5_kms *mdp5_kms = FUNC0(ctl->ctlm);
	struct mdp5_interface *intf = pipeline->intf;

	/* Virtual interfaces need not set a display intf (e.g.: Writeback) */
	if (!FUNC1(intf->type))
		FUNC3(mdp5_kms, intf);

	FUNC2(ctl, pipeline);

	return 0;
}