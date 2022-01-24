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
struct ipu_plane {scalar_t__ dp; int /*<<< orphan*/  alpha_ch; int /*<<< orphan*/  ipu_ch; int /*<<< orphan*/  dmfc; int /*<<< orphan*/  ipu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ipu_plane*) ; 

__attribute__((used)) static void FUNC5(struct ipu_plane *ipu_plane)
{
	if (ipu_plane->dp)
		FUNC1(ipu_plane->ipu);
	FUNC0(ipu_plane->dmfc);
	FUNC3(ipu_plane->ipu_ch);
	if (FUNC4(ipu_plane))
		FUNC3(ipu_plane->alpha_ch);
	if (ipu_plane->dp)
		FUNC2(ipu_plane->dp);
}