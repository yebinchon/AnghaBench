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
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio {struct gpio_chip* gc; } ;

/* Variables and functions */
 int FUNC0 (struct gpio_chip*) ; 
 struct ep93xx_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc)
{
	struct ep93xx_gpio *epg = FUNC1(gc);
	int port = 0;

	while (port < FUNC0(epg->gc) && gc != &epg->gc[port])
		port++;

	/* This should not happen but is there as a last safeguard */
	if (port == FUNC0(epg->gc)) {
		FUNC2("can't find the GPIO port\n");
		return 0;
	}

	return port;
}