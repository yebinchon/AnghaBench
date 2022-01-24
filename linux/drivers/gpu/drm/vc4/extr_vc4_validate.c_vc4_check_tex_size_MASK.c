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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct vc4_exec_info {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct drm_gem_cma_object {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
#define  VC4_TILING_FORMAT_LINEAR 130 
#define  VC4_TILING_FORMAT_LT 129 
#define  VC4_TILING_FORMAT_T 128 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

bool
FUNC4(struct vc4_exec_info *exec, struct drm_gem_cma_object *fbo,
		   uint32_t offset, uint8_t tiling_format,
		   uint32_t width, uint32_t height, uint8_t cpp)
{
	uint32_t aligned_width, aligned_height, stride, size;
	uint32_t utile_w = FUNC3(cpp);
	uint32_t utile_h = FUNC2(cpp);

	/* The shaded vertex format stores signed 12.4 fixed point
	 * (-2048,2047) offsets from the viewport center, so we should
	 * never have a render target larger than 4096.  The texture
	 * unit can only sample from 2048x2048, so it's even more
	 * restricted.  This lets us avoid worrying about overflow in
	 * our math.
	 */
	if (width > 4096 || height > 4096) {
		FUNC0("Surface dimensions (%d,%d) too large",
			  width, height);
		return false;
	}

	switch (tiling_format) {
	case VC4_TILING_FORMAT_LINEAR:
		aligned_width = FUNC1(width, utile_w);
		aligned_height = height;
		break;
	case VC4_TILING_FORMAT_T:
		aligned_width = FUNC1(width, utile_w * 8);
		aligned_height = FUNC1(height, utile_h * 8);
		break;
	case VC4_TILING_FORMAT_LT:
		aligned_width = FUNC1(width, utile_w);
		aligned_height = FUNC1(height, utile_h);
		break;
	default:
		FUNC0("buffer tiling %d unsupported\n", tiling_format);
		return false;
	}

	stride = aligned_width * cpp;
	size = stride * aligned_height;

	if (size + offset < size ||
	    size + offset > fbo->base.size) {
		FUNC0("Overflow in %dx%d (%dx%d) fbo size (%d + %d > %zd)\n",
			  width, height,
			  aligned_width, aligned_height,
			  size, offset, fbo->base.size);
		return false;
	}

	return true;
}