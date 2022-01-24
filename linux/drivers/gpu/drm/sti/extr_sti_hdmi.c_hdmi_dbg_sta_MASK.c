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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int HDMI_STA_DLL_LCK ; 
 int HDMI_STA_HOT_PLUG ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, int val)
{
	int tmp;

	FUNC1(s, '\t');
	tmp = (val & HDMI_STA_DLL_LCK);
	FUNC0("pll:", tmp ? "locked" : "not locked");
	FUNC2(s, "\t\t\t\t\t");
	tmp = (val & HDMI_STA_HOT_PLUG);
	FUNC0("hdmi cable:", tmp ? "connected" : "not connected");
}