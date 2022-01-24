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
struct amdgpu_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	int readrq;
	u16 v;

	readrq = FUNC1(adev->pdev);
	v = FUNC0(readrq) - 8;
	if ((v == 0) || (v == 6) || (v == 7))
		FUNC2(adev->pdev, 512);
}