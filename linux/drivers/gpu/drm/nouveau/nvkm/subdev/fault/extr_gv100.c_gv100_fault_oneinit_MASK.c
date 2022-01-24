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
struct nvkm_fault {int /*<<< orphan*/  nrpfb; int /*<<< orphan*/  event; TYPE_1__** buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  gv100_fault_ntfy_nrpfb ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC1(struct nvkm_fault *fault)
{
	return FUNC0(&fault->buffer[0]->object, &fault->event,
				gv100_fault_ntfy_nrpfb, true, NULL, 0, 0,
				&fault->nrpfb);
}