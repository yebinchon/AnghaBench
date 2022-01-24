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
struct wacom {char* data; char expect; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  result; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC3 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC4 (struct wacom*) ; 

__attribute__((used)) static void FUNC5(struct wacom *wacom)
{
	if (wacom->data[0] != '~' || wacom->data[1] != wacom->expect) {
		FUNC1(&wacom->dev->dev,
			"Wacom got an unexpected response: %s\n", wacom->data);
		wacom->result = -EIO;
	} else {
		wacom->result = 0;

		switch (wacom->data[1]) {
		case '#':
			FUNC4(wacom);
			break;
		case 'R':
			FUNC2(wacom);
			break;
		case 'C':
			FUNC3(wacom);
			break;
		}
	}

	FUNC0(&wacom->cmd_done);
}