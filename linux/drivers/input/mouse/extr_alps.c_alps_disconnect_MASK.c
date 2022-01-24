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
struct psmouse {struct alps_data* private; } ;
struct alps_data {scalar_t__ dev3; scalar_t__ dev2; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct alps_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*) ; 

__attribute__((used)) static void FUNC5(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;

	FUNC4(psmouse);
	FUNC1(&priv->timer);
	if (priv->dev2)
		FUNC2(priv->dev2);
	if (!FUNC0(priv->dev3))
		FUNC2(priv->dev3);
	FUNC3(priv);
}