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
struct mISDN_dsp_element {int num_args; TYPE_1__* args; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {char* name; char* def; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 struct mISDN_dsp_element* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct mISDN_dsp_element *elem = FUNC0(dev);
	int i;
	char *p = buf;

	*buf = 0;
	for (i = 0; i < elem->num_args; i++)
		p += FUNC1(p, "Name:        %s\n%s%s%sDescription: %s\n\n",
			     elem->args[i].name,
			     elem->args[i].def ? "Default:     " : "",
			     elem->args[i].def ? elem->args[i].def : "",
			     elem->args[i].def ? "\n" : "",
			     elem->args[i].desc);

	return p - buf;
}