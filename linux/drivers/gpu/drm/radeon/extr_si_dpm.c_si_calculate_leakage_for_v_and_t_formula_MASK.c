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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ni_leakage_coeffients {int /*<<< orphan*/  t_ref; int /*<<< orphan*/  bv; int /*<<< orphan*/  av; int /*<<< orphan*/  t_intercept; int /*<<< orphan*/  t_slope; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct ni_leakage_coeffients *coeff,
						     u16 v, s32 t, u32 ileakage, u32 *leakage)
{
	s64 kt, kv, leakage_w, i_leakage, vddc;
	s64 temperature, t_slope, t_intercept, av, bv, t_ref;
	s64 tmp;

	i_leakage = FUNC0(FUNC5(ileakage), 100);
	vddc = FUNC0(FUNC5(v), 1000);
	temperature = FUNC0(FUNC5(t), 1000);

	t_slope = FUNC0(FUNC5(coeff->t_slope), 100000000);
	t_intercept = FUNC0(FUNC5(coeff->t_intercept), 100000000);
	av = FUNC0(FUNC5(coeff->av), 100000000);
	bv = FUNC0(FUNC5(coeff->bv), 100000000);
	t_ref = FUNC5(coeff->t_ref);

	tmp = FUNC4(t_slope, vddc) + t_intercept;
	kt = FUNC3(FUNC4(tmp, temperature));
	kt = FUNC2(kt, FUNC3(FUNC4(tmp, t_ref)));
	kv = FUNC4(av, FUNC3(FUNC4(bv, vddc)));

	leakage_w = FUNC4(FUNC4(FUNC4(i_leakage, kt), kv), vddc);

	*leakage = FUNC1(leakage_w * 1000);
}