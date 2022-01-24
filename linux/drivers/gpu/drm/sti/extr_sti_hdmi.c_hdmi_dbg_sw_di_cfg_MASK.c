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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char* const) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HDMI_IFRAME_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC4(struct seq_file *s, int val)
{
	int tmp;
	char *const en_di[] = {"no transmission",
			       "single transmission",
			       "once every field",
			       "once every frame"};

	FUNC2(s, '\t');
	tmp = (val & FUNC1(HDMI_IFRAME_MASK, 1));
	FUNC0("Data island 1:", en_di[tmp]);
	FUNC3(s, "\t\t\t\t\t");
	tmp = (val & FUNC1(HDMI_IFRAME_MASK, 2)) >> 4;
	FUNC0("Data island 2:", en_di[tmp]);
	FUNC3(s, "\t\t\t\t\t");
	tmp = (val & FUNC1(HDMI_IFRAME_MASK, 3)) >> 8;
	FUNC0("Data island 3:", en_di[tmp]);
	FUNC3(s, "\t\t\t\t\t");
	tmp = (val & FUNC1(HDMI_IFRAME_MASK, 4)) >> 12;
	FUNC0("Data island 4:", en_di[tmp]);
	FUNC3(s, "\t\t\t\t\t");
	tmp = (val & FUNC1(HDMI_IFRAME_MASK, 5)) >> 16;
	FUNC0("Data island 5:", en_di[tmp]);
	FUNC3(s, "\t\t\t\t\t");
	tmp = (val & FUNC1(HDMI_IFRAME_MASK, 6)) >> 20;
	FUNC0("Data island 6:", en_di[tmp]);
}