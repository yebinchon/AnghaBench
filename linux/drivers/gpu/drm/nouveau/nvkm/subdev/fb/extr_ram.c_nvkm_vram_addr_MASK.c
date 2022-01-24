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
typedef  unsigned long long u64 ;
struct nvkm_vram {int /*<<< orphan*/  mn; } ;
struct nvkm_memory {int dummy; } ;

/* Variables and functions */
 unsigned long long NVKM_RAM_MM_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nvkm_vram* FUNC2 (struct nvkm_memory*) ; 

__attribute__((used)) static u64
FUNC3(struct nvkm_memory *memory)
{
	struct nvkm_vram *vram = FUNC2(memory);
	if (!FUNC1(vram->mn))
		return ~0ULL;
	return (u64)FUNC0(vram->mn) << NVKM_RAM_MM_SHIFT;
}