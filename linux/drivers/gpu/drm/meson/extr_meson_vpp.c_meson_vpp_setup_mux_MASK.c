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
struct meson_drm {scalar_t__ io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPU_VIU_VENC_MUX_CTRL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

void FUNC2(struct meson_drm *priv, unsigned int mux)
{
	FUNC1(mux, priv->io_base + FUNC0(VPU_VIU_VENC_MUX_CTRL));
}