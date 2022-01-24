#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;
struct drm_gem_vram_object {TYPE_1__ bo; int /*<<< orphan*/  pin_count; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ FUNC0 (int) ; 

s64 FUNC1(struct drm_gem_vram_object *gbo)
{
	if (FUNC0(!gbo->pin_count))
		return (s64)-ENODEV;
	return gbo->bo.offset;
}