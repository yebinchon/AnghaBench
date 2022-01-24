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
typedef  enum mipi_seq { ____Placeholder_mipi_seq } mipi_seq ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 char const** seq_name ; 

__attribute__((used)) static const char *FUNC1(enum mipi_seq seq_id)
{
	if (seq_id < FUNC0(seq_name) && seq_name[seq_id])
		return seq_name[seq_id];
	else
		return "(unknown)";
}