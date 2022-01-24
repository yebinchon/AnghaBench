#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* b; } ;
struct yealink_dev {int* lcdMap; TYPE_3__ master; } ;
struct TYPE_6__ {int a; int m; } ;
struct TYPE_7__ {TYPE_4__* s; TYPE_1__ p; } ;
struct TYPE_9__ {char type; int m; int a; TYPE_2__ u; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int EINVAL ; 
 TYPE_4__* lcdMap ; 
 int /*<<< orphan*/  map_seg7 ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct yealink_dev *yld, int el, int chr)
{
	int i, a, m, val;

	if (el >= FUNC0(lcdMap))
		return -EINVAL;

	if (chr == '\t' || chr == '\n')
	    return 0;

	yld->lcdMap[el] = chr;

	if (lcdMap[el].type == '.') {
		a = lcdMap[el].u.p.a;
		m = lcdMap[el].u.p.m;
		if (chr != ' ')
			yld->master.b[a] |= m;
		else
			yld->master.b[a] &= ~m;
		return 0;
	}

	val = FUNC1(&map_seg7, chr);
	for (i = 0; i < FUNC0(lcdMap[0].u.s); i++) {
		m = lcdMap[el].u.s[i].m;

		if (m == 0)
			continue;

		a = lcdMap[el].u.s[i].a;
		if (val & 1)
			yld->master.b[a] |= m;
		else
			yld->master.b[a] &= ~m;
		val = val >> 1;
	}
	return 0;
}