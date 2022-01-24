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
struct malidp_plane {int dummy; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_plane*) ; 
 struct malidp_plane* FUNC2 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane)
{
	struct malidp_plane *mp = FUNC2(plane);

	FUNC0(plane);
	FUNC1(mp);
}