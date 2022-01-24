#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_4__* func; TYPE_1__ subdev; } ;
struct nvkm_mm {int dummy; } ;
struct nvkm_device {TYPE_5__* bar; TYPE_3__* fb; } ;
struct TYPE_10__ {int /*<<< orphan*/  iomap_uncached; } ;
struct TYPE_9__ {int /*<<< orphan*/  kind; } ;
struct TYPE_8__ {TYPE_2__* ram; } ;
struct TYPE_7__ {struct nvkm_mm vram; } ;

/* Variables and functions */
 int NVKM_MEM_COHERENT ; 
 int NVKM_MEM_COMP ; 
 int NVKM_MEM_DISP ; 
 int NVKM_MEM_KIND ; 
 int NVKM_MEM_MAPPABLE ; 
 int NVKM_MEM_UNCACHED ; 
 int NVKM_MEM_VRAM ; 
 int /*<<< orphan*/  NVKM_RAM_MM_MIXED ; 
 int /*<<< orphan*/  NVKM_RAM_MM_NOMAP ; 
 int /*<<< orphan*/  NVKM_RAM_MM_NORMAL ; 
 int const NVKM_RAM_MM_SHIFT ; 
 int FUNC0 (struct nvkm_mm*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_mmu*,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_mmu*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_mmu*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nvkm_mmu *mmu)
{
	struct nvkm_device *device = mmu->subdev.device;
	struct nvkm_mm *mm = &device->fb->ram->vram;
	const u32 sizeN = FUNC0(mm, NVKM_RAM_MM_NORMAL);
	const u32 sizeU = FUNC0(mm, NVKM_RAM_MM_NOMAP);
	const u32 sizeM = FUNC0(mm, NVKM_RAM_MM_MIXED);
	u8 type = NVKM_MEM_KIND * !!mmu->func->kind;
	u8 heap = NVKM_MEM_VRAM;
	int heapM, heapN, heapU;

	/* Mixed-memory doesn't support compression or display. */
	heapM = FUNC1(mmu, heap, sizeM << NVKM_RAM_MM_SHIFT);

	heap |= NVKM_MEM_COMP;
	heap |= NVKM_MEM_DISP;
	heapN = FUNC1(mmu, heap, sizeN << NVKM_RAM_MM_SHIFT);
	heapU = FUNC1(mmu, heap, sizeU << NVKM_RAM_MM_SHIFT);

	/* Add non-mappable VRAM types first so that they're preferred
	 * over anything else.  Mixed-memory will be slower than other
	 * heaps, it's prioritised last.
	 */
	FUNC3(mmu, heapU, type);
	FUNC3(mmu, heapN, type);
	FUNC3(mmu, heapM, type);

	/* Add host memory types next, under the assumption that users
	 * wanting mappable memory want to use them as staging buffers
	 * or the like.
	 */
	FUNC2(mmu);

	/* Mappable VRAM types go last, as they're basically the worst
	 * possible type to ask for unless there's no other choice.
	 */
	if (device->bar) {
		/* Write-combined BAR1 access. */
		type |= NVKM_MEM_MAPPABLE;
		if (!device->bar->iomap_uncached) {
			FUNC3(mmu, heapN, type);
			FUNC3(mmu, heapM, type);
		}

		/* Uncached BAR1 access. */
		type |= NVKM_MEM_COHERENT;
		type |= NVKM_MEM_UNCACHED;
		FUNC3(mmu, heapN, type);
		FUNC3(mmu, heapM, type);
	}
}