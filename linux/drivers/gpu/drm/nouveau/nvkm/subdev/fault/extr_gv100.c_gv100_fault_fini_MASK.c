#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct nvkm_fault {TYPE_3__ subdev; scalar_t__* buffer; TYPE_2__* func; int /*<<< orphan*/  nrpfb; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fini ) (scalar_t__) ;} ;
struct TYPE_5__ {TYPE_1__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_fault *fault)
{
	FUNC1(&fault->nrpfb);
	if (fault->buffer[0])
		fault->func->buffer.fini(fault->buffer[0]);
	FUNC0(fault->subdev.device, 0x100a34, 0x80000000, 0x80000000);
}