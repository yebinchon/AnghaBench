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
typedef  int u8 ;
struct ili210x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int ILI210X_TOUCHES ; 
 unsigned int FUNC1 (int*) ; 

__attribute__((used)) static bool FUNC2(struct ili210x *priv, u8 *touchdata,
					unsigned int finger,
					unsigned int *x, unsigned int *y)
{
	if (finger >= ILI210X_TOUCHES)
		return false;

	if (touchdata[0] & FUNC0(finger))
		return false;

	*x = FUNC1(touchdata + 1 + (finger * 4) + 0);
	*y = FUNC1(touchdata + 1 + (finger * 4) + 2);

	return true;
}