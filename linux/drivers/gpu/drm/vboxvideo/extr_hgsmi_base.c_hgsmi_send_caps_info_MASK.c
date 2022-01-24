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
struct vbva_caps {scalar_t__ rc; int /*<<< orphan*/  caps; } ;
struct gen_pool {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HGSMI_CH_VBVA ; 
 int /*<<< orphan*/  VBVA_INFO_CAPS ; 
 scalar_t__ VERR_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vbva_caps* FUNC1 (struct gen_pool*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gen_pool*,struct vbva_caps*) ; 
 int /*<<< orphan*/  FUNC3 (struct gen_pool*,struct vbva_caps*) ; 

int FUNC4(struct gen_pool *ctx, u32 caps)
{
	struct vbva_caps *p;

	p = FUNC1(ctx, sizeof(*p), HGSMI_CH_VBVA, VBVA_INFO_CAPS);
	if (!p)
		return -ENOMEM;

	p->rc = VERR_NOT_IMPLEMENTED;
	p->caps = caps;

	FUNC3(ctx, p);

	FUNC0(p->rc < 0);

	FUNC2(ctx, p);

	return 0;
}