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
struct s6e8aa0 {void* flip_vertical; void* flip_horizontal; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; int /*<<< orphan*/  init_delay; int /*<<< orphan*/  reset_delay; int /*<<< orphan*/  power_on_delay; int /*<<< orphan*/  vm; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct s6e8aa0 *ctx)
{
	struct device *dev = ctx->dev;
	struct device_node *np = dev->of_node;
	int ret;

	ret = FUNC0(np, &ctx->vm, 0);
	if (ret < 0)
		return ret;

	FUNC2(np, "power-on-delay", &ctx->power_on_delay);
	FUNC2(np, "reset-delay", &ctx->reset_delay);
	FUNC2(np, "init-delay", &ctx->init_delay);
	FUNC2(np, "panel-width-mm", &ctx->width_mm);
	FUNC2(np, "panel-height-mm", &ctx->height_mm);

	ctx->flip_horizontal = FUNC1(np, "flip-horizontal");
	ctx->flip_vertical = FUNC1(np, "flip-vertical");

	return 0;
}