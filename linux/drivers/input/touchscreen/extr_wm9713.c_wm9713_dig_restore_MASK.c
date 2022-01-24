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
struct wm97xx {int /*<<< orphan*/ * dig_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_WM9713_DIG1 ; 
 int /*<<< orphan*/  AC97_WM9713_DIG2 ; 
 int /*<<< orphan*/  AC97_WM9713_DIG3 ; 
 int /*<<< orphan*/  FUNC0 (struct wm97xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct wm97xx *wm)
{
	FUNC0(wm, AC97_WM9713_DIG1, wm->dig_save[0]);
	FUNC0(wm, AC97_WM9713_DIG2, wm->dig_save[1]);
	FUNC0(wm, AC97_WM9713_DIG3, wm->dig_save[2]);
}