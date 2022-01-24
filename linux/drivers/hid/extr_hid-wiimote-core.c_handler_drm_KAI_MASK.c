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
struct wiimote_data {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiimote_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_data*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_data*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(struct wiimote_data *wdata, const __u8 *payload)
{
	FUNC1(wdata, payload);
	FUNC0(wdata, payload);
	FUNC2(wdata, &payload[5], false);
	FUNC3(wdata, &payload[8], false);
	FUNC4(wdata, &payload[11], false);
	FUNC5(wdata, &payload[14], false);
}