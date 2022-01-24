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
typedef  int /*<<< orphan*/  u16 ;
struct f71882fg_data {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ f71858fg ; 
 int /*<<< orphan*/  FUNC1 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct f71882fg_data *data, int nr)
{
	if (data->type == f71858fg)
		return FUNC1(data, FUNC0(nr));
	else
		return FUNC2(data, FUNC0(nr));
}