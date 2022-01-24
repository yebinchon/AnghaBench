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
typedef  int /*<<< orphan*/  uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC1 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct kgd_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSH_MEM_APE1_BASE ; 
 int /*<<< orphan*/  mmSH_MEM_APE1_LIMIT ; 
 int /*<<< orphan*/  mmSH_MEM_BASES ; 
 int /*<<< orphan*/  mmSH_MEM_CONFIG ; 
 int /*<<< orphan*/  FUNC3 (struct kgd_dev*) ; 

__attribute__((used)) static void FUNC4(struct kgd_dev *kgd, uint32_t vmid,
					uint32_t sh_mem_config,
					uint32_t sh_mem_ape1_base,
					uint32_t sh_mem_ape1_limit,
					uint32_t sh_mem_bases)
{
	struct amdgpu_device *adev = FUNC1(kgd);

	FUNC2(kgd, 0, 0, 0, vmid);

	FUNC0(mmSH_MEM_CONFIG, sh_mem_config);
	FUNC0(mmSH_MEM_APE1_BASE, sh_mem_ape1_base);
	FUNC0(mmSH_MEM_APE1_LIMIT, sh_mem_ape1_limit);
	FUNC0(mmSH_MEM_BASES, sh_mem_bases);

	FUNC3(kgd);
}