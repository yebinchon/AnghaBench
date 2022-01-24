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
struct wacom {TYPE_1__* dev; int /*<<< orphan*/  max_y; int /*<<< orphan*/  max_x; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wacom *wacom)
{
	int r;

	FUNC0(&wacom->dev->dev, "Coordinates string: %s\n", wacom->data);
	r = FUNC2(wacom->data, "~C%u,%u", &wacom->max_x, &wacom->max_y);
	if (r != 2)
		FUNC1(&wacom->dev->dev, "could not get max coordinates\n");
}