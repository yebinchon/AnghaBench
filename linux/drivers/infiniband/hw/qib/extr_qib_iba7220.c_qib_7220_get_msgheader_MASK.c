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
typedef  int u32 ;
struct qib_message_header {int dummy; } ;
struct qib_devdata {int /*<<< orphan*/ * rhf_offset; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct qib_message_header *
FUNC1(struct qib_devdata *dd, __le32 *rhf_addr)
{
	u32 offset = FUNC0(rhf_addr);

	return (struct qib_message_header *)
		(rhf_addr - dd->rhf_offset + offset);
}