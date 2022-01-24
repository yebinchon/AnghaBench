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
 int /*<<< orphan*/  VD1_BLEND_SRC_CTRL ; 
 int VD_BLEND_POSTBLD_PREMULT_EN ; 
 int VD_BLEND_POSTBLD_SRC_VD1 ; 
 int VD_BLEND_PREBLD_PREMULT_EN ; 
 int VD_BLEND_PREBLD_SRC_VD1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct meson_drm *priv)
{
	FUNC1(VD_BLEND_PREBLD_SRC_VD1 |
		       VD_BLEND_PREBLD_PREMULT_EN |
		       VD_BLEND_POSTBLD_SRC_VD1 |
		       VD_BLEND_POSTBLD_PREMULT_EN,
		       priv->io_base + FUNC0(VD1_BLEND_SRC_CTRL));
}