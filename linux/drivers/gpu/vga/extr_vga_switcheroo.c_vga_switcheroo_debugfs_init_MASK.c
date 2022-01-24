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
struct vgasr_priv {scalar_t__ debugfs_root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vga_switcheroo_debugfs_fops ; 

__attribute__((used)) static void FUNC2(struct vgasr_priv *priv)
{
	/* already initialised */
	if (priv->debugfs_root)
		return;

	priv->debugfs_root = FUNC0("vgaswitcheroo", NULL);

	FUNC1("switch", 0644, priv->debugfs_root, NULL,
			    &vga_switcheroo_debugfs_fops);
}