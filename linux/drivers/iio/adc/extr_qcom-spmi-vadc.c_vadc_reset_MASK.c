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
typedef  int /*<<< orphan*/  u8 ;
struct vadc_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VADC_ACCESS ; 
 int /*<<< orphan*/  VADC_ACCESS_DATA ; 
 int /*<<< orphan*/  VADC_FOLLOW_WARM_RB ; 
 int /*<<< orphan*/  VADC_PERH_RESET_CTL3 ; 
 int FUNC0 (struct vadc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct vadc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vadc_priv *vadc)
{
	u8 data;
	int ret;

	ret = FUNC1(vadc, VADC_ACCESS, VADC_ACCESS_DATA);
	if (ret)
		return ret;

	ret = FUNC0(vadc, VADC_PERH_RESET_CTL3, &data);
	if (ret)
		return ret;

	ret = FUNC1(vadc, VADC_ACCESS, VADC_ACCESS_DATA);
	if (ret)
		return ret;

	data |= VADC_FOLLOW_WARM_RB;

	return FUNC1(vadc, VADC_PERH_RESET_CTL3, data);
}