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
typedef  int u16 ;
struct locomokbd {scalar_t__ base; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ LOCOMO_KIC ; 
 struct locomokbd* FUNC0 (struct input_dev*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	struct locomokbd *locomokbd = FUNC0(dev);
	u16 r;
	
	r = FUNC1(locomokbd->base + LOCOMO_KIC) & ~0x0010;
	FUNC2(r, locomokbd->base + LOCOMO_KIC);
}