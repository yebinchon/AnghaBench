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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  nouveau_config ; 
 int /*<<< orphan*/  nouveau_debug ; 
 int /*<<< orphan*/  nouveau_duallink ; 
 int /*<<< orphan*/  nouveau_hdmimhz ; 
 int /*<<< orphan*/  nouveau_ignorelid ; 
 int /*<<< orphan*/  nouveau_modeset ; 
 int /*<<< orphan*/  nouveau_noaccel ; 
 int /*<<< orphan*/  nouveau_nofbaccel ; 
 int /*<<< orphan*/  nouveau_runtime_pm ; 
 int /*<<< orphan*/  nouveau_tv_disable ; 
 int /*<<< orphan*/  nouveau_vram_pushbuf ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0("Loading Nouveau with parameters:\n");

	FUNC0("... tv_disable   : %d\n", nouveau_tv_disable);
	FUNC0("... ignorelid    : %d\n", nouveau_ignorelid);
	FUNC0("... duallink     : %d\n", nouveau_duallink);
	FUNC0("... nofbaccel    : %d\n", nouveau_nofbaccel);
	FUNC0("... config       : %s\n", nouveau_config);
	FUNC0("... debug        : %s\n", nouveau_debug);
	FUNC0("... noaccel      : %d\n", nouveau_noaccel);
	FUNC0("... modeset      : %d\n", nouveau_modeset);
	FUNC0("... runpm        : %d\n", nouveau_runtime_pm);
	FUNC0("... vram_pushbuf : %d\n", nouveau_vram_pushbuf);
	FUNC0("... hdmimhz      : %d\n", nouveau_hdmimhz);
}