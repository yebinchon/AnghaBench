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
typedef  void* u32 ;
struct vbva_report_input_mapping {void* cy; void* cx; void* y; void* x; } ;
struct gen_pool {int dummy; } ;
typedef  void* s32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HGSMI_CH_VBVA ; 
 int /*<<< orphan*/  VBVA_REPORT_INPUT_MAPPING ; 
 struct vbva_report_input_mapping* FUNC0 (struct gen_pool*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gen_pool*,struct vbva_report_input_mapping*) ; 
 int /*<<< orphan*/  FUNC2 (struct gen_pool*,struct vbva_report_input_mapping*) ; 

int FUNC3(struct gen_pool *ctx, s32 origin_x, s32 origin_y,
			       u32 width, u32 height)
{
	struct vbva_report_input_mapping *p;

	p = FUNC0(ctx, sizeof(*p), HGSMI_CH_VBVA,
			       VBVA_REPORT_INPUT_MAPPING);
	if (!p)
		return -ENOMEM;

	p->x = origin_x;
	p->y = origin_y;
	p->cx = width;
	p->cy = height;

	FUNC2(ctx, p);
	FUNC1(ctx, p);

	return 0;
}