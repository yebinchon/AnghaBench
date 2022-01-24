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
struct vmw_private {scalar_t__ active_display_unit; } ;
struct vmw_buffer_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vmw_private*,struct vmw_buffer_object*,int) ; 
 int FUNC1 (struct vmw_private*,struct vmw_buffer_object*,int) ; 
 int FUNC2 (struct vmw_private*,struct vmw_buffer_object*,int) ; 
 scalar_t__ vmw_du_legacy ; 

__attribute__((used)) static int FUNC3(struct vmw_private *dev_priv,
				   struct vmw_buffer_object *buf,
				   bool pin, bool inter)
{
	if (!pin)
		return FUNC2(dev_priv, buf, inter);

	if (dev_priv->active_display_unit == vmw_du_legacy)
		return FUNC0(dev_priv, buf, inter);

	return FUNC1(dev_priv, buf, inter);
}