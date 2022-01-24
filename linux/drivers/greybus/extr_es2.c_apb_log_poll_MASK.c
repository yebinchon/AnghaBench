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
struct es2_ap_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APB1_LOG_MSG_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct es2_ap_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *data)
{
	struct es2_ap_dev *es2 = data;
	char *buf;

	buf = FUNC2(APB1_LOG_MSG_SIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	while (!FUNC3()) {
		FUNC4(1000);
		FUNC0(es2, buf);
	}

	FUNC1(buf);

	return 0;
}