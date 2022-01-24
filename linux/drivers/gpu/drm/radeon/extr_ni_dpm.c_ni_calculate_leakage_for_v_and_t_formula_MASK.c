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
struct ni_leakage_coeffients {int /*<<< orphan*/  bv; int /*<<< orphan*/  av; int /*<<< orphan*/  bt; int /*<<< orphan*/  at; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct ni_leakage_coeffients *coeff,
						     u16 v, s32 t,
						     u32 ileakage,
						     u32 *leakage)
{
	s64 kt, kv, leakage_w, i_leakage, vddc, temperature;

	i_leakage = FUNC0(FUNC4(ileakage), 1000);
	vddc = FUNC0(FUNC4(v), 1000);
	temperature = FUNC0(FUNC4(t), 1000);

	kt = FUNC3(FUNC0(FUNC4(coeff->at), 1000),
			  FUNC2(FUNC3(FUNC0(FUNC4(coeff->bt), 1000), temperature)));
	kv = FUNC3(FUNC0(FUNC4(coeff->av), 1000),
			  FUNC2(FUNC3(FUNC0(FUNC4(coeff->bv), 1000), vddc)));

	leakage_w = FUNC3(FUNC3(FUNC3(i_leakage, kt), kv), vddc);

	*leakage = FUNC1(leakage_w * 1000);
}