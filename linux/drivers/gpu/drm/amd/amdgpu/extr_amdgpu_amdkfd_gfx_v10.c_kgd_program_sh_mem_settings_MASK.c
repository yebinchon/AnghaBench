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
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct kgd_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSH_MEM_BASES ; 
 int /*<<< orphan*/  mmSH_MEM_CONFIG ; 
 int /*<<< orphan*/  FUNC4 (struct kgd_dev*) ; 

__attribute__((used)) static void FUNC5(struct kgd_dev *kgd, uint32_t vmid,
					uint32_t sh_mem_config,
					uint32_t sh_mem_ape1_base,
					uint32_t sh_mem_ape1_limit,
					uint32_t sh_mem_bases)
{
	struct amdgpu_device *adev = FUNC2(kgd);

	FUNC3(kgd, 0, 0, 0, vmid);

	FUNC1(FUNC0(GC, 0, mmSH_MEM_CONFIG), sh_mem_config);
	FUNC1(FUNC0(GC, 0, mmSH_MEM_BASES), sh_mem_bases);
	/* APE1 no longer exists on GFX9 */

	FUNC4(kgd);
}