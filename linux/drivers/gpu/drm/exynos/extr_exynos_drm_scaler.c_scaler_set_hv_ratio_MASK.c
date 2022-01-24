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
typedef  int u32 ;
struct scaler_context {int dummy; } ;
struct drm_exynos_ipp_task_rect {int h; int w; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCALER_H_RATIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SCALER_V_RATIO ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct scaler_context *scaler,
	unsigned int rotation,
	struct drm_exynos_ipp_task_rect *src_pos,
	struct drm_exynos_ipp_task_rect *dst_pos)
{
	u32 val, h_ratio, v_ratio;

	if (FUNC2(rotation)) {
		h_ratio = (src_pos->h << 16) / dst_pos->w;
		v_ratio = (src_pos->w << 16) / dst_pos->h;
	} else {
		h_ratio = (src_pos->w << 16) / dst_pos->w;
		v_ratio = (src_pos->h << 16) / dst_pos->h;
	}

	val = FUNC0(h_ratio);
	FUNC3(val, SCALER_H_RATIO);

	val = FUNC1(v_ratio);
	FUNC3(val, SCALER_V_RATIO);
}