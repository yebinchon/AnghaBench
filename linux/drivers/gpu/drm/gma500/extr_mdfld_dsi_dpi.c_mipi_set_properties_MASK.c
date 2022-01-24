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
struct mdfld_dsi_config {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct mdfld_dsi_config *dsi_config, int pipe)
{
	struct drm_device *dev = dsi_config->dev;

	FUNC12(FUNC1(pipe), 0x00000018);
	FUNC12(FUNC8(pipe), 0xffffffff);
	FUNC12(FUNC6(pipe), 0xffffff);
	FUNC12(FUNC10(pipe), 0xffffff);
	FUNC12(FUNC11(pipe), 0x14);
	FUNC12(FUNC3(pipe), 0xff);
	FUNC12(FUNC5(pipe), 0x25);
	FUNC12(FUNC7(pipe), 0xf0);
	FUNC12(FUNC4(pipe), 0x00000000);
	FUNC12(FUNC9(pipe), 0x00000004);
	FUNC12(FUNC2(pipe), 0x00000820);
	FUNC12(FUNC0(pipe), (0xa << 16) | 0x14);
}