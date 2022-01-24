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
struct vb2_buffer {unsigned int num_planes; int /*<<< orphan*/  index; TYPE_1__* planes; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mem_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  put ; 

__attribute__((used)) static void FUNC2(struct vb2_buffer *vb)
{
	unsigned int plane;

	for (plane = 0; plane < vb->num_planes; ++plane) {
		FUNC0(vb, put, vb->planes[plane].mem_priv);
		vb->planes[plane].mem_priv = NULL;
		FUNC1(3, "freed plane %d of buffer %d\n", plane, vb->index);
	}
}