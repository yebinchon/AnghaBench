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
struct trackpoint_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trackpoint_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  draghys ; 
 int /*<<< orphan*/  drift_time ; 
 int /*<<< orphan*/  ext_dev ; 
 int /*<<< orphan*/  inertia ; 
 int /*<<< orphan*/  jenks ; 
 int /*<<< orphan*/  mindrag ; 
 int /*<<< orphan*/  press_to_select ; 
 int /*<<< orphan*/  reach ; 
 int /*<<< orphan*/  sensitivity ; 
 int /*<<< orphan*/  skipback ; 
 int /*<<< orphan*/  speed ; 
 int /*<<< orphan*/  thresh ; 
 int /*<<< orphan*/  upthresh ; 
 int /*<<< orphan*/  ztime ; 

__attribute__((used)) static void FUNC1(struct trackpoint_data *tp)
{
	FUNC0(tp, sensitivity);
	FUNC0(tp, speed);
	FUNC0(tp, reach);
	FUNC0(tp, draghys);
	FUNC0(tp, mindrag);
	FUNC0(tp, thresh);
	FUNC0(tp, upthresh);
	FUNC0(tp, ztime);
	FUNC0(tp, jenks);
	FUNC0(tp, drift_time);
	FUNC0(tp, inertia);

	/* toggles */
	FUNC0(tp, press_to_select);
	FUNC0(tp, skipback);
	FUNC0(tp, ext_dev);
}