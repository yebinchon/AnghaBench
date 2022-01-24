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
struct vmw_private {int capabilities; } ;

/* Variables and functions */
 int SVGA_CAP_GMR2 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_private*,int) ; 

void FUNC2(struct vmw_private *dev_priv, int gmr_id)
{
	if (FUNC0(dev_priv->capabilities & SVGA_CAP_GMR2))
		FUNC1(dev_priv, gmr_id);
}