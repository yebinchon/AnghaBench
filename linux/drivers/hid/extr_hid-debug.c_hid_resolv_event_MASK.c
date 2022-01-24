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
typedef  size_t __u8 ;
typedef  size_t __u16 ;

/* Variables and functions */
 char** events ; 
 char*** names ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC1(__u8 type, __u16 code, struct seq_file *f)
{
	FUNC0(f, "%s.%s", events[type] ? events[type] : "?",
		names[type] ? (names[type][code] ? names[type][code] : "?") : "?");
}