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
struct edid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edid*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct edid *edid, char *name, int bufsize)
{
	int name_length;
	char buf[13];
	
	if (bufsize <= 0)
		return;

	name_length = FUNC2(FUNC0(edid, buf), bufsize - 1);
	FUNC1(name, buf, name_length);
	name[name_length] = '\0';
}