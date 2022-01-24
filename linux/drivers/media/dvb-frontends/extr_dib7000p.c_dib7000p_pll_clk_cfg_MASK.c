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
typedef  int u16 ;
struct dib7000p_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000p_state*,int,int) ; 

__attribute__((used)) static void FUNC2(struct dib7000p_state *state)
{
	u16 tmp = 0;
	tmp = FUNC0(state, 903);
	FUNC1(state, 903, (tmp | 0x1));
	tmp = FUNC0(state, 900);
	FUNC1(state, 900, (tmp & 0x7fff) | (1 << 6));
}