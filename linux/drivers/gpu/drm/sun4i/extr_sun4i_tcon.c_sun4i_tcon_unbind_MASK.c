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
struct sun4i_tcon {TYPE_1__* quirks; int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_channel_0; } ;

/* Variables and functions */
 struct sun4i_tcon* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sun4i_tcon*) ; 
 int /*<<< orphan*/  FUNC3 (struct sun4i_tcon*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master,
			      void *data)
{
	struct sun4i_tcon *tcon = FUNC0(dev);

	FUNC1(&tcon->list);
	if (tcon->quirks->has_channel_0)
		FUNC2(tcon);
	FUNC3(tcon);
}