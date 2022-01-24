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
struct ipu_plane {int /*<<< orphan*/  alpha_ch; int /*<<< orphan*/  ipu_ch; int /*<<< orphan*/  dmfc; int /*<<< orphan*/  dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ipu_plane *ipu_plane)
{
	if (!FUNC0(ipu_plane->dp))
		FUNC2(ipu_plane->dp);
	if (!FUNC0(ipu_plane->dmfc))
		FUNC1(ipu_plane->dmfc);
	if (!FUNC0(ipu_plane->ipu_ch))
		FUNC3(ipu_plane->ipu_ch);
	if (!FUNC0(ipu_plane->alpha_ch))
		FUNC3(ipu_plane->alpha_ch);
}