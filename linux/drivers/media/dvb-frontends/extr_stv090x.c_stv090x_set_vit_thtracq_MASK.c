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
struct stv090x_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_ERROR ; 
 scalar_t__ FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VTH12 ; 
 int /*<<< orphan*/  VTH23 ; 
 int /*<<< orphan*/  VTH34 ; 
 int /*<<< orphan*/  VTH56 ; 
 int /*<<< orphan*/  VTH67 ; 
 int /*<<< orphan*/  VTH78 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC2(struct stv090x_state *state)
{
	if (FUNC0(state, VTH12, 0xd0) < 0)
		goto err;
	if (FUNC0(state, VTH23, 0x7d) < 0)
		goto err;
	if (FUNC0(state, VTH34, 0x53) < 0)
		goto err;
	if (FUNC0(state, VTH56, 0x2f) < 0)
		goto err;
	if (FUNC0(state, VTH67, 0x24) < 0)
		goto err;
	if (FUNC0(state, VTH78, 0x1f) < 0)
		goto err;
	return 0;
err:
	FUNC1(FE_ERROR, 1, "I/O error");
	return -1;
}