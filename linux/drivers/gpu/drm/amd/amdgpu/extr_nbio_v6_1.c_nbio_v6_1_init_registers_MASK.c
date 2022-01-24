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
typedef  scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CI_SLV_ORDERING_DIS ; 
 int /*<<< orphan*/  CI_SWUS_MAX_READ_REQUEST_SIZE_MODE ; 
 int /*<<< orphan*/  CI_SWUS_MAX_READ_REQUEST_SIZE_PRIV ; 
 int /*<<< orphan*/  PCIE_CI_CNTL ; 
 int /*<<< orphan*/  PCIE_CONFIG_CNTL ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  smnPCIE_CI_CNTL ; 
 int /*<<< orphan*/  smnPCIE_CONFIG_CNTL ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	uint32_t def, data;

	def = data = FUNC1(smnPCIE_CONFIG_CNTL);
	data = FUNC0(data, PCIE_CONFIG_CNTL, CI_SWUS_MAX_READ_REQUEST_SIZE_MODE, 1);
	data = FUNC0(data, PCIE_CONFIG_CNTL, CI_SWUS_MAX_READ_REQUEST_SIZE_PRIV, 1);

	if (def != data)
		FUNC2(smnPCIE_CONFIG_CNTL, data);

	def = data = FUNC1(smnPCIE_CI_CNTL);
	data = FUNC0(data, PCIE_CI_CNTL, CI_SLV_ORDERING_DIS, 1);

	if (def != data)
		FUNC2(smnPCIE_CI_CNTL, data);
}