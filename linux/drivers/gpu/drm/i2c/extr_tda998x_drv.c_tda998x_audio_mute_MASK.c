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
struct tda998x_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIP_CNTRL_0_RST_FIFO ; 
 int /*<<< orphan*/  REG_AIP_CNTRL_0 ; 
 int /*<<< orphan*/  REG_SOFTRESET ; 
 int /*<<< orphan*/  SOFTRESET_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tda998x_priv *priv, bool on)
{
	if (on) {
		FUNC1(priv, REG_SOFTRESET, SOFTRESET_AUDIO);
		FUNC0(priv, REG_SOFTRESET, SOFTRESET_AUDIO);
		FUNC1(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_FIFO);
	} else {
		FUNC0(priv, REG_AIP_CNTRL_0, AIP_CNTRL_0_RST_FIFO);
	}
}