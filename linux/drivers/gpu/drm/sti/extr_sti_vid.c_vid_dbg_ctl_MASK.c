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
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC2(struct seq_file *s, int val)
{
	val = val >> 30;
	FUNC0(s, '\t');

	if (!(val & 1))
		FUNC1(s, "NOT ");
	FUNC1(s, "ignored on main mixer - ");

	if (!(val & 2))
		FUNC1(s, "NOT ");
	FUNC1(s, "ignored on aux mixer");
}