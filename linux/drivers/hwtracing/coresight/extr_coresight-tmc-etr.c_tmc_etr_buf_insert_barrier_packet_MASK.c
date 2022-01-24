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
typedef  scalar_t__ u64 ;
struct etr_buf {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ CORESIGHT_BARRIER_PKT_SIZE ; 
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct etr_buf*,scalar_t__,scalar_t__,char**) ; 

__attribute__((used)) static inline s64
FUNC3(struct etr_buf *etr_buf, u64 offset)
{
	ssize_t len;
	char *bufp;

	len = FUNC2(etr_buf, offset,
				   CORESIGHT_BARRIER_PKT_SIZE, &bufp);
	if (FUNC0(len < CORESIGHT_BARRIER_PKT_SIZE))
		return -EINVAL;
	FUNC1(bufp);
	return offset + CORESIGHT_BARRIER_PKT_SIZE;
}