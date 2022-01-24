#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int depth_fmt; int depth_pitch_offset_c; } ;
typedef  TYPE_1__ drm_r128_private_t ;
struct TYPE_5__ {int n; scalar_t__ mask; scalar_t__ buffer; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ drm_r128_depth_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int*) ; 
 int /*<<< orphan*/  R128_CNTL_PAINT_MULTI ; 
 int R128_GMC_BRUSH_SOLID_COLOR ; 
 int R128_GMC_CLR_CMP_CNTL_DIS ; 
 int R128_GMC_DST_PITCH_OFFSET_CNTL ; 
 int R128_GMC_SRC_DATATYPE_COLOR ; 
 int R128_GMC_WR_MSK_DIS ; 
 int R128_ROP3_P ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int* FUNC8 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev,
					  drm_r128_depth_t *depth)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	int count, *x, *y;
	u32 *buffer;
	u8 *mask;
	int i, xbuf_size, ybuf_size, buffer_size, mask_size;
	RING_LOCALS;
	FUNC3("\n");

	count = depth->n;
	if (count > 4096 || count <= 0)
		return -EMSGSIZE;

	xbuf_size = count * sizeof(*x);
	ybuf_size = count * sizeof(*y);
	x = FUNC8(depth->x, xbuf_size);
	if (FUNC4(x))
		return FUNC6(x);
	y = FUNC8(depth->y, ybuf_size);
	if (FUNC4(y)) {
		FUNC7(x);
		return FUNC6(y);
	}
	buffer_size = depth->n * sizeof(u32);
	buffer = FUNC8(depth->buffer, buffer_size);
	if (FUNC4(buffer)) {
		FUNC7(x);
		FUNC7(y);
		return FUNC6(buffer);
	}

	if (depth->mask) {
		mask_size = depth->n;
		mask = FUNC8(depth->mask, mask_size);
		if (FUNC4(mask)) {
			FUNC7(x);
			FUNC7(y);
			FUNC7(buffer);
			return FUNC6(mask);
		}

		for (i = 0; i < count; i++) {
			if (mask[i]) {
				FUNC1(6);

				FUNC5(FUNC2(R128_CNTL_PAINT_MULTI, 4));
				FUNC5(R128_GMC_DST_PITCH_OFFSET_CNTL |
					 R128_GMC_BRUSH_SOLID_COLOR |
					 (dev_priv->depth_fmt << 8) |
					 R128_GMC_SRC_DATATYPE_COLOR |
					 R128_ROP3_P |
					 R128_GMC_CLR_CMP_CNTL_DIS |
					 R128_GMC_WR_MSK_DIS);

				FUNC5(dev_priv->depth_pitch_offset_c);
				FUNC5(buffer[i]);

				FUNC5((x[i] << 16) | y[i]);
				FUNC5((1 << 16) | 1);

				FUNC0();
			}
		}

		FUNC7(mask);
	} else {
		for (i = 0; i < count; i++) {
			FUNC1(6);

			FUNC5(FUNC2(R128_CNTL_PAINT_MULTI, 4));
			FUNC5(R128_GMC_DST_PITCH_OFFSET_CNTL |
				 R128_GMC_BRUSH_SOLID_COLOR |
				 (dev_priv->depth_fmt << 8) |
				 R128_GMC_SRC_DATATYPE_COLOR |
				 R128_ROP3_P |
				 R128_GMC_CLR_CMP_CNTL_DIS |
				 R128_GMC_WR_MSK_DIS);

			FUNC5(dev_priv->depth_pitch_offset_c);
			FUNC5(buffer[i]);

			FUNC5((x[i] << 16) | y[i]);
			FUNC5((1 << 16) | 1);

			FUNC0();
		}
	}

	FUNC7(x);
	FUNC7(y);
	FUNC7(buffer);

	return 0;
}