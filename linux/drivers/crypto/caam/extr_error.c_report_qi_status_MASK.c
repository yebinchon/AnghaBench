#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  err_err_code ;
struct TYPE_3__ {scalar_t__ value; char* error_text; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 scalar_t__ const JRSTA_QIERR_ERROR_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__ const,char const*,char const*,char*) ; 
 TYPE_1__* qi_error_list ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *qidev, const u32 status,
			    const char *error)
{
	u8 err_id = status & JRSTA_QIERR_ERROR_MASK;
	const char *err_str = "unidentified error value 0x";
	char err_err_code[3] = { 0 };
	int i;

	for (i = 0; i < FUNC0(qi_error_list); i++)
		if (qi_error_list[i].value == err_id)
			break;

	if (i != FUNC0(qi_error_list) && qi_error_list[i].error_text)
		err_str = qi_error_list[i].error_text;
	else
		FUNC2(err_err_code, sizeof(err_err_code), "%02x", err_id);

	FUNC1(qidev, "%08x: %s: %s%s\n",
		status, error, err_str, err_err_code);

	return -EINVAL;
}