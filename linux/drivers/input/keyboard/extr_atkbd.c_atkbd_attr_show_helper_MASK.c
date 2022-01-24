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
struct serio {int dummy; } ;
struct device {int dummy; } ;
typedef  struct atkbd atkbd ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct atkbd* FUNC0 (struct serio*) ; 
 struct serio* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, char *buf,
				ssize_t (*handler)(struct atkbd *, char *))
{
	struct serio *serio = FUNC1(dev);
	struct atkbd *atkbd = FUNC0(serio);

	return handler(atkbd, buf);
}