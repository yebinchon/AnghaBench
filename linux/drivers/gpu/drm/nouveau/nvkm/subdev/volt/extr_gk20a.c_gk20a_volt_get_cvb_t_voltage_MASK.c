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
struct cvb_coef {int c3; int c4; int c5; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,struct cvb_coef const*) ; 

__attribute__((used)) static inline int
FUNC2(int speedo, int temp, int s_scale, int t_scale,
			     const struct cvb_coef *coef)
{
	int cvb_mv, mv;

	cvb_mv = FUNC1(speedo, s_scale, coef);

	mv = FUNC0(coef->c3 * speedo, s_scale) + coef->c4 +
		FUNC0(coef->c5 * temp, t_scale);
	mv = FUNC0(mv * temp, t_scale) + cvb_mv;
	return mv;
}