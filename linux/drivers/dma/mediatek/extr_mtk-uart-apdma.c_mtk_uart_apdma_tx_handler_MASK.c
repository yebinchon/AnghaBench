#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct mtk_uart_apdma_desc {TYPE_1__ vd; } ;
struct mtk_chan {struct mtk_uart_apdma_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFF_EN ; 
 int /*<<< orphan*/  VFF_EN_CLR_B ; 
 int /*<<< orphan*/  VFF_INT_EN ; 
 int /*<<< orphan*/  VFF_INT_EN_CLR_B ; 
 int /*<<< orphan*/  VFF_INT_FLAG ; 
 int /*<<< orphan*/  VFF_TX_INT_CLR_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct mtk_chan *c)
{
	struct mtk_uart_apdma_desc *d = c->desc;

	FUNC1(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);
	FUNC1(c, VFF_INT_EN, VFF_INT_EN_CLR_B);
	FUNC1(c, VFF_EN, VFF_EN_CLR_B);

	FUNC0(&d->vd.node);
	FUNC2(&d->vd);
}