#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_3__ {int format; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int WAIT_NEXT_VSYNC ; 
 TYPE_1__* gdp_format_to_str ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, int val)
{
	int i;

	FUNC2(s, "\tColor:");
	for (i = 0; i < FUNC0(gdp_format_to_str); i++) {
		if (gdp_format_to_str[i].format == (val & 0x1F)) {
			FUNC2(s, gdp_format_to_str[i].name);
			break;
		}
	}
	if (i == FUNC0(gdp_format_to_str))
		FUNC2(s, "<UNKNOWN>");

	FUNC1(s, "\tWaitNextVsync:%d", val & WAIT_NEXT_VSYNC ? 1 : 0);
}