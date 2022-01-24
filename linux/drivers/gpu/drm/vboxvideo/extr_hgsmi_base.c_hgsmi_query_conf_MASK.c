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
struct vbva_conf32 {int /*<<< orphan*/  value; int /*<<< orphan*/  index; } ;
struct gen_pool {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HGSMI_CH_VBVA ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  VBVA_QUERY_CONF32 ; 
 struct vbva_conf32* FUNC0 (struct gen_pool*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gen_pool*,struct vbva_conf32*) ; 
 int /*<<< orphan*/  FUNC2 (struct gen_pool*,struct vbva_conf32*) ; 

int FUNC3(struct gen_pool *ctx, u32 index, u32 *value_ret)
{
	struct vbva_conf32 *p;

	p = FUNC0(ctx, sizeof(*p), HGSMI_CH_VBVA,
			       VBVA_QUERY_CONF32);
	if (!p)
		return -ENOMEM;

	p->index = index;
	p->value = U32_MAX;

	FUNC2(ctx, p);

	*value_ret = p->value;

	FUNC1(ctx, p);

	return 0;
}