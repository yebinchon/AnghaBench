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
struct cvb_coef {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int const) ; 
 int FUNC1 (int,int,int,int,struct cvb_coef const*) ; 

__attribute__((used)) static int
FUNC2(const struct cvb_coef *coef, int speedo)
{
	static const int v_scale = 1000;
	int mv;

	mv = FUNC1(speedo, -10, 100, 10, coef);
	mv = FUNC0(mv, v_scale);

	return mv * 1000;
}