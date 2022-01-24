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
struct serio {int /*<<< orphan*/  name; int /*<<< orphan*/  phys; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct serio *serio)
{
	int error;

	error = FUNC1(&serio->dev);
	if (error < 0 && error != -EPROBE_DEFER)
		FUNC0(&serio->dev,
			 "device_attach() failed for %s (%s), error: %d\n",
			 serio->phys, serio->name, error);
}