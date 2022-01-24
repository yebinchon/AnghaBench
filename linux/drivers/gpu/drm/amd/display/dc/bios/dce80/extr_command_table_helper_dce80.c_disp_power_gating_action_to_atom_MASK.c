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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum bp_pipe_control_action { ____Placeholder_bp_pipe_control_action } bp_pipe_control_action ;

/* Variables and functions */
#define  ASIC_PIPE_DISABLE 130 
#define  ASIC_PIPE_ENABLE 129 
#define  ASIC_PIPE_INIT 128 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 int /*<<< orphan*/  ATOM_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static uint8_t FUNC1(
	enum bp_pipe_control_action action)
{
	uint8_t atom_pipe_action = 0;

	switch (action) {
	case ASIC_PIPE_DISABLE:
		atom_pipe_action = ATOM_DISABLE;
		break;
	case ASIC_PIPE_ENABLE:
		atom_pipe_action = ATOM_ENABLE;
		break;
	case ASIC_PIPE_INIT:
		atom_pipe_action = ATOM_INIT;
		break;
	default:
		FUNC0(); /* Unhandle action in driver! */
		break;
	}

	return atom_pipe_action;
}