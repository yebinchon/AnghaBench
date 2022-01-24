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
struct uclogic_params_frame {size_t desc_size; unsigned int id; int /*<<< orphan*/ * desc_ptr; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uclogic_params_frame*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(
					struct uclogic_params_frame *frame,
					const __u8 *desc_ptr,
					size_t desc_size,
					unsigned int id)
{
	__u8 *copy_desc_ptr;

	if (frame == NULL || (desc_ptr == NULL && desc_size != 0))
		return -EINVAL;

	copy_desc_ptr = FUNC0(desc_ptr, desc_size, GFP_KERNEL);
	if (copy_desc_ptr == NULL)
		return -ENOMEM;

	FUNC1(frame, 0, sizeof(*frame));
	frame->desc_ptr = copy_desc_ptr;
	frame->desc_size = desc_size;
	frame->id = id;
	return 0;
}