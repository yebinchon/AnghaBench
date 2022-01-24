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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC4(struct scatterlist *dst, u8 req_type)
{
	int head_size = FUNC1(req_type);
	const u8 *head = FUNC0(req_type);
	int ret;

	ret = FUNC2(dst, FUNC3(dst), head, head_size);
	if (ret != head_size)
		return -ENOMEM;

	return head_size;
}