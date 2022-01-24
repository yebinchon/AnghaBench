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
typedef  int /*<<< orphan*/  u64 ;
struct etr_buf {struct catu_etr_buf* private; } ;
struct catu_etr_buf {int /*<<< orphan*/  catu_table; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char**) ; 

__attribute__((used)) static ssize_t FUNC1(struct etr_buf *etr_buf, u64 offset,
				     size_t len, char **bufpp)
{
	struct catu_etr_buf *catu_buf = etr_buf->private;

	return FUNC0(catu_buf->catu_table, offset, len, bufpp);
}