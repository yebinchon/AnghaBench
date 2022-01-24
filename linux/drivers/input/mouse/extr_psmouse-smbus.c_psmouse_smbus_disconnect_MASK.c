#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct psmouse_smbus_dev {int dead; TYPE_1__* client; int /*<<< orphan*/  psmouse; int /*<<< orphan*/  node; } ;
struct psmouse {struct psmouse_smbus_dev* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse_smbus_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psmouse_smbus_mutex ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct psmouse *psmouse)
{
	struct psmouse_smbus_dev *smbdev = psmouse->private;

	FUNC3(&psmouse_smbus_mutex);

	if (smbdev->dead) {
		FUNC2(&smbdev->node);
		FUNC1(smbdev);
	} else {
		smbdev->dead = true;
		FUNC5(smbdev->psmouse,
			    "posting removal request for SMBus companion %s\n",
			    FUNC0(&smbdev->client->dev));
		FUNC6(smbdev->client);
	}

	FUNC4(&psmouse_smbus_mutex);

	psmouse->private = NULL;
}