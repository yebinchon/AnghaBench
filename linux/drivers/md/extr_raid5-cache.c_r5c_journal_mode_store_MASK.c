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
struct mddev {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int FUNC3 (struct mddev*,int) ; 
 int /*<<< orphan*/ * r5c_journal_mode_str ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ssize_t FUNC6(struct mddev *mddev,
				      const char *page, size_t length)
{
	int mode = FUNC0(r5c_journal_mode_str);
	size_t len = length;
	int ret;

	if (len < 2)
		return -EINVAL;

	if (page[len - 1] == '\n')
		len--;

	while (mode--)
		if (FUNC4(r5c_journal_mode_str[mode]) == len &&
		    !FUNC5(page, r5c_journal_mode_str[mode], len))
			break;
	ret = FUNC1(mddev);
	if (ret)
		return ret;
	ret = FUNC3(mddev, mode);
	FUNC2(mddev);
	return ret ?: length;
}