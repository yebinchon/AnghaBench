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
 int /*<<< orphan*/  CURR_ECBUS_MODE ; 
 int /*<<< orphan*/  MHL_RAP_CBUS_MODE_UP ; 
 int MHL_XDS_ECBUS_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MHL_XDS_SLOT_MODE_8BIT ; 
 int /*<<< orphan*/  sii8620_ecbus_up ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct sii8620 *ctx, int ret)
{
	if (ret < 0)
		return;

	FUNC3(ctx, FUNC0(CURR_ECBUS_MODE),
			      MHL_XDS_ECBUS_S | MHL_XDS_SLOT_MODE_8BIT);
	FUNC1(ctx, MHL_RAP_CBUS_MODE_UP);
	FUNC2(ctx, sii8620_ecbus_up);
}