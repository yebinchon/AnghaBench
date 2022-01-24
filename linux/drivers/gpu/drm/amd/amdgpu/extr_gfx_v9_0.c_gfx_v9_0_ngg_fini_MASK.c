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
struct amdgpu_ngg_buf {int dummy; } ;
struct TYPE_5__ {int init; TYPE_3__* buf; } ;
struct TYPE_4__ {TYPE_2__ ngg; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;
struct TYPE_6__ {int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  bo; } ;

/* Variables and functions */
 int NGG_BUF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev)
{
	int i;

	for (i = 0; i < NGG_BUF_MAX; i++)
		FUNC0(&adev->gfx.ngg.buf[i].bo,
				      &adev->gfx.ngg.buf[i].gpu_addr,
				      NULL);

	FUNC1(&adev->gfx.ngg.buf[0], 0,
			sizeof(struct amdgpu_ngg_buf) * NGG_BUF_MAX);

	adev->gfx.ngg.init = false;

	return 0;
}