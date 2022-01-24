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
struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int powered; int /*<<< orphan*/  recalib_wq; int /*<<< orphan*/  mode; struct psmouse* psmouse; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hgpk_default_mode ; 
 int /*<<< orphan*/  hgpk_recalib_work ; 
 int FUNC1 (struct psmouse*) ; 
 int FUNC2 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hgpk_data*) ; 
 struct hgpk_data* FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct psmouse *psmouse)
{
	struct hgpk_data *priv;
	int err;

	priv = FUNC4(sizeof(struct hgpk_data), GFP_KERNEL);
	if (!priv) {
		err = -ENOMEM;
		goto alloc_fail;
	}

	psmouse->private = priv;

	priv->psmouse = psmouse;
	priv->powered = true;
	priv->mode = hgpk_default_mode;
	FUNC0(&priv->recalib_wq, hgpk_recalib_work);

	err = FUNC2(psmouse, false);
	if (err)
		goto init_fail;

	err = FUNC1(psmouse);
	if (err)
		goto init_fail;

	return 0;

init_fail:
	FUNC3(priv);
alloc_fail:
	return err;
}