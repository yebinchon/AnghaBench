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
struct zx_plane {scalar_t__ rsz; } ;

/* Variables and functions */
 scalar_t__ RSZ_VL_ENABLE_CFG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC1(struct zx_plane *zplane)
{
	FUNC0(zplane->rsz + RSZ_VL_ENABLE_CFG, 1);
}