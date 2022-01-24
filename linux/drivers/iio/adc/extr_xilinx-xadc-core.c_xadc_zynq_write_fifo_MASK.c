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
typedef  int /*<<< orphan*/  uint32_t ;
struct xadc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XADC_ZYNQ_REG_CFIFO ; 
 int /*<<< orphan*/  FUNC0 (struct xadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct xadc *xadc, uint32_t *cmd,
	unsigned int n)
{
	unsigned int i;

	for (i = 0; i < n; i++)
		FUNC0(xadc, XADC_ZYNQ_REG_CFIFO, cmd[i]);
}