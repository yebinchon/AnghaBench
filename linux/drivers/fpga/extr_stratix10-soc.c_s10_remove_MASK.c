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
struct s10_priv {int /*<<< orphan*/  chan; } ;
struct platform_device {int dummy; } ;
struct fpga_manager {struct s10_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fpga_manager*) ; 
 struct fpga_manager* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct fpga_manager *mgr = FUNC1(pdev);
	struct s10_priv *priv = mgr->priv;

	FUNC0(mgr);
	FUNC2(priv->chan);

	return 0;
}