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
struct hfi1_filedata {int dummy; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hfi1_filedata*,struct hfi1_ctxtdata*) ; 
 int FUNC1 (struct hfi1_ctxtdata*,struct hfi1_filedata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_filedata*,struct hfi1_ctxtdata*) ; 

__attribute__((used)) static int FUNC3(struct hfi1_filedata *fd,
			  struct hfi1_ctxtdata *uctxt)
{
	int ret;

	ret = FUNC1(uctxt, fd);
	if (ret)
		return ret;

	ret = FUNC0(fd, uctxt);
	if (ret)
		FUNC2(fd, uctxt);

	return ret;
}