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
struct TYPE_2__ {int /*<<< orphan*/  sgl; } ;
struct hsi_msg {TYPE_1__ sgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hsi_msg* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_msg*) ; 
 void* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,unsigned int) ; 

__attribute__((used)) static inline struct hsi_msg *FUNC5(unsigned int alloc_size)
{
	struct hsi_msg *msg;
	void *buf;

	msg = FUNC0(1, GFP_KERNEL);
	if (!msg)
		goto out;
	buf = FUNC2(alloc_size, GFP_KERNEL);
	if (!buf) {
		FUNC1(msg);
		goto out;
	}
	FUNC4(msg->sgt.sgl, buf, alloc_size);
	/* Ignore false positive, due to sg pointer handling */
	FUNC3(buf);

	return msg;
out:
	return NULL;
}