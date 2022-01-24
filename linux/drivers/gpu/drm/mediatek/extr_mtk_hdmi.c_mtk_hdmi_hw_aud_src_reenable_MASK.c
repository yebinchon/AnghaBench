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
typedef  int u32 ;
struct mtk_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRL_MIX_CTRL ; 
 int MIX_CTRL_SRC_EN ; 
 int FUNC0 (struct mtk_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct mtk_hdmi *hdmi)
{
	u32 val;

	val = FUNC0(hdmi, GRL_MIX_CTRL);
	if (val & MIX_CTRL_SRC_EN) {
		val &= ~MIX_CTRL_SRC_EN;
		FUNC1(hdmi, GRL_MIX_CTRL, val);
		FUNC2(255, 512);
		val |= MIX_CTRL_SRC_EN;
		FUNC1(hdmi, GRL_MIX_CTRL, val);
	}
}