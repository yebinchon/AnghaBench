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
struct mx25_tcq_priv {int /*<<< orphan*/  clk; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mx25_tcq_priv* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mx25_tcq_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mx25_tcq_priv*) ; 

__attribute__((used)) static void FUNC5(struct input_dev *idev)
{
	struct mx25_tcq_priv *priv = FUNC1(idev);

	FUNC4(priv);
	FUNC3(priv);
	FUNC2(priv);
	FUNC0(priv->clk);
}