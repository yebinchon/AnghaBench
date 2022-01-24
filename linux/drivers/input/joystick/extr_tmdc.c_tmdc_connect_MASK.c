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
struct tmdc {int exists; struct tmdc** port; int /*<<< orphan*/  dev; struct gameport* gameport; } ;
struct gameport_driver {int dummy; } ;
struct gameport {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GAMEPORT_MODE_RAW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TMDC_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 int FUNC1 (struct gameport*,struct gameport_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*,struct tmdc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gameport*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tmdc*) ; 
 struct tmdc* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tmdc_poll ; 
 int FUNC8 (struct gameport*,unsigned char**) ; 
 int FUNC9 (struct tmdc*,int,unsigned char*) ; 

__attribute__((used)) static int FUNC10(struct gameport *gameport, struct gameport_driver *drv)
{
	unsigned char data[2][TMDC_MAX_LENGTH];
	struct tmdc *tmdc;
	int i;
	int err;

	if (!(tmdc = FUNC7(sizeof(struct tmdc), GFP_KERNEL)))
		return -ENOMEM;

	tmdc->gameport = gameport;

	FUNC2(gameport, tmdc);

	err = FUNC1(gameport, drv, GAMEPORT_MODE_RAW);
	if (err)
		goto fail1;

	if (!(tmdc->exists = FUNC8(gameport, data))) {
		err = -ENODEV;
		goto fail2;
	}

	FUNC3(gameport, tmdc_poll);
	FUNC4(gameport, 20);

	for (i = 0; i < 2; i++) {
		if (tmdc->exists & (1 << i)) {

			err = FUNC9(tmdc, i, data[i]);
			if (err)
				goto fail3;
		}
	}

	return 0;

 fail3: while (--i >= 0) {
		if (tmdc->port[i]) {
			FUNC5(tmdc->port[i]->dev);
			FUNC6(tmdc->port[i]);
		}
	}
 fail2:	FUNC0(gameport);
 fail1:	FUNC2(gameport, NULL);
	FUNC6(tmdc);
	return err;
}