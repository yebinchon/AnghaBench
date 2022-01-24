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
typedef  int /*<<< orphan*/  u32 ;
struct scaler_format {int chroma_tile_w; int chroma_tile_h; } ;
struct scaler_context {int dummy; } ;
struct drm_exynos_ipp_task_rect {int x; int y; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCALER_SRC_C_POS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SCALER_SRC_Y_POS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct scaler_context *scaler,
			struct drm_exynos_ipp_task_rect *src_pos,
			const struct scaler_format *fmt)
{
	u32 val;

	val = FUNC2(src_pos->x << 2);
	val |=  FUNC3(src_pos->y << 2);
	FUNC4(val, SCALER_SRC_Y_POS);
	val = FUNC0(
		(src_pos->x * fmt->chroma_tile_w / 16) << 2);
	val |=  FUNC1(
		(src_pos->y * fmt->chroma_tile_h / 16) << 2);
	FUNC4(val, SCALER_SRC_C_POS);
}