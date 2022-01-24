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
struct psmouse {int /*<<< orphan*/  packet; struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_fields {int /*<<< orphan*/  middle; int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  fingers; int /*<<< orphan*/  mt; } ;
struct alps_data {scalar_t__ (* decode_fields ) (struct alps_fields*,int /*<<< orphan*/ ,struct psmouse*) ;struct alps_fields f; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct alps_fields*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct alps_fields*,int /*<<< orphan*/ ,struct psmouse*) ; 

__attribute__((used)) static void FUNC7(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	struct input_dev *dev = psmouse->dev;
	struct alps_fields *f = &priv->f;

	FUNC5(f, 0, sizeof(*f));

	if (priv->decode_fields(f, psmouse->packet, psmouse))
		return;

	FUNC1(psmouse, FUNC0(f->mt));

	FUNC2(dev, f->fingers);

	FUNC3(dev, BTN_LEFT, f->left);
	FUNC3(dev, BTN_RIGHT, f->right);
	FUNC3(dev, BTN_MIDDLE, f->middle);

	FUNC4(dev);
}