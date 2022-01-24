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
struct nvkm_memory_func {int dummy; } ;
struct nvkm_instobj {int /*<<< orphan*/  head; int /*<<< orphan*/ * suspend; int /*<<< orphan*/  memory; } ;
struct nvkm_instmem {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_memory_func const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(const struct nvkm_memory_func *func,
		  struct nvkm_instmem *imem, struct nvkm_instobj *iobj)
{
	FUNC1(func, &iobj->memory);
	iobj->suspend = NULL;
	FUNC2(&imem->lock);
	FUNC0(&iobj->head, &imem->list);
	FUNC3(&imem->lock);
}