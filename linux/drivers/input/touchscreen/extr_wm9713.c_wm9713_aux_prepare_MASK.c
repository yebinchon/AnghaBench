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
struct wm97xx {int /*<<< orphan*/  dig; int /*<<< orphan*/  dig_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_WM9713_DIG1 ; 
 int /*<<< orphan*/  AC97_WM9713_DIG2 ; 
 int /*<<< orphan*/  AC97_WM9713_DIG3 ; 
 int /*<<< orphan*/  WM97XX_PRP_DET_DIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wm97xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wm97xx *wm)
{
	FUNC0(wm->dig_save, wm->dig, sizeof(wm->dig));
	FUNC1(wm, AC97_WM9713_DIG1, 0);
	FUNC1(wm, AC97_WM9713_DIG2, 0);
	FUNC1(wm, AC97_WM9713_DIG3, WM97XX_PRP_DET_DIG);
}