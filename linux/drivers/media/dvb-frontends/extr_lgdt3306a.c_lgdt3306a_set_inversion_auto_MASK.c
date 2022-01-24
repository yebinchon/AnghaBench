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
struct lgdt3306a_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct lgdt3306a_state*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct lgdt3306a_state *state,
				       int enabled)
{
	int ret;

	FUNC0("(%d)\n", enabled);

	/* 0=Manual 1=Auto(QAM only) - SPECINVAUTO=0x04 */
	ret = FUNC1(state, 0x0002, 3, enabled);
	return ret;
}