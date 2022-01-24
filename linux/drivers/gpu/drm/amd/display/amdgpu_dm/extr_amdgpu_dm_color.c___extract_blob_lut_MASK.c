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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_property_blob {scalar_t__ data; } ;
typedef  struct drm_color_lut const drm_color_lut ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_property_blob const*) ; 

__attribute__((used)) static const struct drm_color_lut *
FUNC1(const struct drm_property_blob *blob, uint32_t *size)
{
	*size = blob ? FUNC0(blob) : 0;
	return blob ? (struct drm_color_lut *)blob->data : NULL;
}