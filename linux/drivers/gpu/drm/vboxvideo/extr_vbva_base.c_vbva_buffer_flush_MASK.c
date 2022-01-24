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
struct vbva_flush {scalar_t__ reserved; } ;
struct gen_pool {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HGSMI_CH_VBVA ; 
 int /*<<< orphan*/  VBVA_FLUSH ; 
 struct vbva_flush* FUNC0 (struct gen_pool*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gen_pool*,struct vbva_flush*) ; 
 int /*<<< orphan*/  FUNC2 (struct gen_pool*,struct vbva_flush*) ; 

__attribute__((used)) static void FUNC3(struct gen_pool *ctx)
{
	struct vbva_flush *p;

	p = FUNC0(ctx, sizeof(*p), HGSMI_CH_VBVA, VBVA_FLUSH);
	if (!p)
		return;

	p->reserved = 0;

	FUNC2(ctx, p);
	FUNC1(ctx, p);
}