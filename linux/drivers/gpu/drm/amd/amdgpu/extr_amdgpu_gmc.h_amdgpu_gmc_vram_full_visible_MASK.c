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
struct amdgpu_gmc {scalar_t__ real_vram_size; scalar_t__ visible_vram_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline bool FUNC1(struct amdgpu_gmc *gmc)
{
	FUNC0(gmc->real_vram_size < gmc->visible_vram_size);

	return (gmc->real_vram_size == gmc->visible_vram_size);
}