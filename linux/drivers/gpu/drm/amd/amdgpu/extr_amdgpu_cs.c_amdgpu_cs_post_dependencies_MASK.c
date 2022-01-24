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
struct amdgpu_cs_parser {int num_post_deps; int /*<<< orphan*/  fence; TYPE_1__* post_deps; } ;
struct TYPE_2__ {int /*<<< orphan*/  syncobj; int /*<<< orphan*/ * chain; scalar_t__ point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_cs_parser *p)
{
	int i;

	for (i = 0; i < p->num_post_deps; ++i) {
		if (p->post_deps[i].chain && p->post_deps[i].point) {
			FUNC0(p->post_deps[i].syncobj,
					      p->post_deps[i].chain,
					      p->fence, p->post_deps[i].point);
			p->post_deps[i].chain = NULL;
		} else {
			FUNC1(p->post_deps[i].syncobj,
						  p->fence);
		}
	}
}