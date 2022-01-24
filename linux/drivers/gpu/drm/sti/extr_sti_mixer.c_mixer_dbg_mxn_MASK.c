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
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct seq_file *s, void *addr)
{
	int i;

	for (i = 1; i < 8; i++)
		FUNC1(s, "-0x%08X", (int)FUNC0(addr + i * 4));
}