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
struct trace_seq {int dummy; } ;
struct cper_mem_err_compact {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cper_mem_err_compact*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cper_mem_err_compact*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcd_decode_str ; 
 char* FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char) ; 

const char *FUNC5(struct trace_seq *p,
				struct cper_mem_err_compact *cmem)
{
	const char *ret = FUNC2(p);

	if (FUNC1(cmem, rcd_decode_str))
		FUNC3(p, "%s", rcd_decode_str);
	if (FUNC0(cmem, rcd_decode_str))
		FUNC3(p, "%s", rcd_decode_str);
	FUNC4(p, '\0');

	return ret;
}