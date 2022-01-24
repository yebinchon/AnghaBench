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
struct amd64_pvt {int /*<<< orphan*/  F2; int /*<<< orphan*/  F1; int /*<<< orphan*/  F6; int /*<<< orphan*/  F0; scalar_t__ umc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct amd64_pvt *pvt)
{
	if (pvt->umc) {
		FUNC0(pvt->F0);
		FUNC0(pvt->F6);
	} else {
		FUNC0(pvt->F1);
		FUNC0(pvt->F2);
	}
}