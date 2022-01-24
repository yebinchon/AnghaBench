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
struct amba_kmi_port {int /*<<< orphan*/  base; int /*<<< orphan*/  clk; int /*<<< orphan*/  io; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 struct amba_kmi_port* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amba_kmi_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct amba_device *dev)
{
	struct amba_kmi_port *kmi = FUNC0(dev);

	FUNC5(kmi->io);
	FUNC2(kmi->clk);
	FUNC3(kmi->base);
	FUNC4(kmi);
	FUNC1(dev);
	return 0;
}