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
struct sii8620 {int dummy; } ;

/* Variables and functions */
 int BIT_PWD_SRST_CBUS_RST ; 
 int BIT_PWD_SRST_CBUS_RST_SW_EN ; 
 int /*<<< orphan*/  REG_PWD_SRST ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct sii8620 *ctx)
{
	FUNC0(ctx, REG_PWD_SRST, BIT_PWD_SRST_CBUS_RST
		      | BIT_PWD_SRST_CBUS_RST_SW_EN);
	FUNC1(10000, 20000);
	FUNC0(ctx, REG_PWD_SRST, BIT_PWD_SRST_CBUS_RST_SW_EN);
}