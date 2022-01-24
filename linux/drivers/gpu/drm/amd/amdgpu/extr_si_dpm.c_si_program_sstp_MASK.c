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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SSP ; 
 int /*<<< orphan*/  R600_SSTU_DFLT ; 
 int /*<<< orphan*/  R600_SST_DFLT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	FUNC2(CG_SSP, (FUNC1(R600_SSTU_DFLT) | FUNC0(R600_SST_DFLT)));
}