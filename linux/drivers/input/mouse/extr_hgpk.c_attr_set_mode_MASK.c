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
struct psmouse {struct input_dev* dev; struct hgpk_data* private; } ;
struct input_dev {int dummy; } ;
struct hgpk_data {int mode; } ;
typedef  size_t ssize_t ;
typedef  enum hgpk_mode { ____Placeholder_hgpk_mode } hgpk_mode ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int HGPK_MODE_INVALID ; 
 int /*<<< orphan*/  PSMOUSE_CMD_MODE ; 
 int /*<<< orphan*/  PSMOUSE_INITIALIZING ; 
 int FUNC0 (char const*,size_t) ; 
 int FUNC1 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,struct input_dev*,int) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct psmouse *psmouse, void *data,
			     const char *buf, size_t len)
{
	struct hgpk_data *priv = psmouse->private;
	enum hgpk_mode old_mode = priv->mode;
	enum hgpk_mode new_mode = FUNC0(buf, len);
	struct input_dev *old_dev = psmouse->dev;
	struct input_dev *new_dev;
	int err;

	if (new_mode == HGPK_MODE_INVALID)
		return -EINVAL;

	if (old_mode == new_mode)
		return len;

	new_dev = FUNC3();
	if (!new_dev)
		return -ENOMEM;

	FUNC7(psmouse, PSMOUSE_INITIALIZING);

	/* Switch device into the new mode */
	priv->mode = new_mode;
	err = FUNC1(psmouse, false);
	if (err)
		goto err_try_restore;

	FUNC2(new_dev, old_dev, new_mode);

	FUNC7(psmouse, PSMOUSE_CMD_MODE);

	err = FUNC5(new_dev);
	if (err)
		goto err_try_restore;

	psmouse->dev = new_dev;
	FUNC6(old_dev);

	return len;

err_try_restore:
	FUNC4(new_dev);
	priv->mode = old_mode;
	FUNC1(psmouse, false);

	return err;
}