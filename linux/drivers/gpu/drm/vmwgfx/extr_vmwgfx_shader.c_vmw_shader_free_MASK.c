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
struct vmw_shader {int dummy; } ;
struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_shader*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*) ; 
 struct vmw_shader* FUNC3 (struct vmw_resource*) ; 
 int /*<<< orphan*/  vmw_shader_size ; 

__attribute__((used)) static void FUNC4(struct vmw_resource *res)
{
	struct vmw_shader *shader = FUNC3(res);
	struct vmw_private *dev_priv = res->dev_priv;

	FUNC0(shader);
	FUNC1(FUNC2(dev_priv),
			    vmw_shader_size);
}