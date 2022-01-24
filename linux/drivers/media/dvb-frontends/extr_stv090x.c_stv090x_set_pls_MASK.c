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
typedef  int u32 ;
struct stv090x_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  PLROOT0 ; 
 int /*<<< orphan*/  PLROOT1 ; 
 int /*<<< orphan*/  PLROOT2 ; 
 scalar_t__ FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,...) ; 

__attribute__((used)) static int FUNC2(struct stv090x_state *state, u32 pls_code)
{
	FUNC1(FE_DEBUG, 1, "Set Gold PLS code %d", pls_code);
	if (FUNC0(state, PLROOT0, pls_code & 0xff) < 0)
		goto err;
	if (FUNC0(state, PLROOT1, (pls_code >> 8) & 0xff) < 0)
		goto err;
	if (FUNC0(state, PLROOT2, 0x04 | (pls_code >> 16)) < 0)
		goto err;
	return 0;
err:
	FUNC1(FE_ERROR, 1, "I/O error");
	return -1;
}