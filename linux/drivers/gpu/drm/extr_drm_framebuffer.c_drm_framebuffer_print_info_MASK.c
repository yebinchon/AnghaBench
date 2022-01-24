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
struct drm_printer {int dummy; } ;
struct drm_framebuffer {unsigned int width; char* height; char** pitches; char** offsets; scalar_t__* obj; TYPE_1__* format; int /*<<< orphan*/  modifier; int /*<<< orphan*/  comm; } ;
struct drm_format_name_buf {int dummy; } ;
struct TYPE_2__ {unsigned int num_planes; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_framebuffer const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct drm_framebuffer const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_framebuffer const*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_printer*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_format_name_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_printer*,unsigned int,char*,...) ; 

void FUNC6(struct drm_printer *p, unsigned int indent,
				const struct drm_framebuffer *fb)
{
	struct drm_format_name_buf format_name;
	unsigned int i;

	FUNC5(p, indent, "allocated by = %s\n", fb->comm);
	FUNC5(p, indent, "refcount=%u\n",
			  FUNC2(fb));
	FUNC5(p, indent, "format=%s\n",
			  FUNC4(fb->format->format, &format_name));
	FUNC5(p, indent, "modifier=0x%llx\n", fb->modifier);
	FUNC5(p, indent, "size=%ux%u\n", fb->width, fb->height);
	FUNC5(p, indent, "layers:\n");

	for (i = 0; i < fb->format->num_planes; i++) {
		FUNC5(p, indent + 1, "size[%u]=%dx%d\n", i,
				  FUNC1(fb->width, fb, i),
				  FUNC0(fb->height, fb, i));
		FUNC5(p, indent + 1, "pitch[%u]=%u\n", i, fb->pitches[i]);
		FUNC5(p, indent + 1, "offset[%u]=%u\n", i, fb->offsets[i]);
		FUNC5(p, indent + 1, "obj[%u]:%s\n", i,
				  fb->obj[i] ? "" : "(null)");
		if (fb->obj[i])
			FUNC3(p, indent + 2, fb->obj[i]);
	}
}