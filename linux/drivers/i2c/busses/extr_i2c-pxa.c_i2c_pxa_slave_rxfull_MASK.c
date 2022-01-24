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
typedef  int /*<<< orphan*/  u32 ;
struct pxa_i2c {int dummy; } ;

/* Variables and functions */
 int ICR_ACKNAK ; 
 int ICR_TB ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pxa_i2c *i2c, u32 isr)
{
	FUNC2(FUNC1(FUNC0(i2c)) | ICR_TB | ICR_ACKNAK, FUNC0(i2c));
}