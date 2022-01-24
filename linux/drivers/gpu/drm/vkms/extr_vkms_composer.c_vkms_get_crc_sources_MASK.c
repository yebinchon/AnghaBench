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
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (char const* const*) ; 
 char const* const* pipe_crc_sources ; 

const char *const *FUNC1(struct drm_crtc *crtc,
					size_t *count)
{
	*count = FUNC0(pipe_crc_sources);
	return pipe_crc_sources;
}