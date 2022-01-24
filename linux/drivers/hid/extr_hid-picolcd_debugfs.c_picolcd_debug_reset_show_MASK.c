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
struct seq_file {scalar_t__ private; } ;
struct picolcd_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *f, void *p)
{
	if (FUNC0((struct picolcd_data *)f->private))
		FUNC1(f, "all fb\n");
	else
		FUNC1(f, "all\n");
	return 0;
}