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
struct ipu_crtc {int /*<<< orphan*/  di; int /*<<< orphan*/  dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipu_crtc *ipu_crtc)
{
	if (!FUNC0(ipu_crtc->dc))
		FUNC1(ipu_crtc->dc);
	if (!FUNC0(ipu_crtc->di))
		FUNC2(ipu_crtc->di);
}