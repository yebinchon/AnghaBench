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
struct d40_chan {int dummy; } ;
typedef  enum d40_command { ____Placeholder_d40_command } d40_command ;

/* Variables and functions */
 int FUNC0 (struct d40_chan*,int) ; 
 int FUNC1 (struct d40_chan*,int) ; 
 scalar_t__ FUNC2 (struct d40_chan*) ; 

__attribute__((used)) static int FUNC3(struct d40_chan *d40c,
				       enum d40_command command)
{
	if (FUNC2(d40c))
		return FUNC0(d40c, command);
	else
		return FUNC1(d40c, command);
}