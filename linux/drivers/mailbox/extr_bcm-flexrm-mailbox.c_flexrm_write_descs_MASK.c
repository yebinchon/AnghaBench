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
struct brcm_message {int type; } ;

/* Variables and functions */
#define  BRCM_MESSAGE_SBA 129 
#define  BRCM_MESSAGE_SPU 128 
 int /*<<< orphan*/  ENOTSUPP ; 
 int /*<<< orphan*/  ERANGE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct brcm_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC2 (struct brcm_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,void*) ; 

__attribute__((used)) static void *FUNC3(struct brcm_message *msg, u32 nhcnt,
				u32 reqid, void *desc_ptr, u32 toggle,
				void *start_desc, void *end_desc)
{
	if (!msg || !desc_ptr || !start_desc || !end_desc)
		return FUNC0(-ENOTSUPP);

	if ((desc_ptr < start_desc) || (end_desc <= desc_ptr))
		return FUNC0(-ERANGE);

	switch (msg->type) {
	case BRCM_MESSAGE_SPU:
		return FUNC2(msg, nhcnt, reqid,
					       desc_ptr, toggle,
					       start_desc, end_desc);
	case BRCM_MESSAGE_SBA:
		return FUNC1(msg, nhcnt, reqid,
					       desc_ptr, toggle,
					       start_desc, end_desc);
	default:
		return FUNC0(-ENOTSUPP);
	};
}