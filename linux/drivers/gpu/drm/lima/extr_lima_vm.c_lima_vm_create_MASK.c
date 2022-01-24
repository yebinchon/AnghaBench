#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  cpu; } ;
struct lima_vm {TYPE_1__ pd; int /*<<< orphan*/  mm; int /*<<< orphan*/  refcount; int /*<<< orphan*/  lock; struct lima_device* dev; } ;
struct lima_device {int /*<<< orphan*/  dev; scalar_t__ va_start; scalar_t__ va_end; int /*<<< orphan*/  dlbu_dma; scalar_t__ dlbu_cpu; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 scalar_t__ LIMA_PAGE_SIZE ; 
 scalar_t__ LIMA_VA_RESERVE_DLBU ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct lima_vm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct lima_vm* FUNC5 (int,int) ; 
 int FUNC6 (struct lima_vm*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct lima_vm *FUNC8(struct lima_device *dev)
{
	struct lima_vm *vm;

	vm = FUNC5(sizeof(*vm), GFP_KERNEL);
	if (!vm)
		return NULL;

	vm->dev = dev;
	FUNC7(&vm->lock);
	FUNC4(&vm->refcount);

	vm->pd.cpu = FUNC0(dev->dev, LIMA_PAGE_SIZE, &vm->pd.dma,
				  GFP_KERNEL | __GFP_ZERO);
	if (!vm->pd.cpu)
		goto err_out0;

	if (dev->dlbu_cpu) {
		int err = FUNC6(
			vm, &dev->dlbu_dma, LIMA_VA_RESERVE_DLBU,
			LIMA_VA_RESERVE_DLBU + LIMA_PAGE_SIZE - 1);
		if (err)
			goto err_out1;
	}

	FUNC2(&vm->mm, dev->va_start, dev->va_end - dev->va_start);

	return vm;

err_out1:
	FUNC1(dev->dev, LIMA_PAGE_SIZE, vm->pd.cpu, vm->pd.dma);
err_out0:
	FUNC3(vm);
	return NULL;
}