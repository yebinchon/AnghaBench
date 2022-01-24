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
struct hfc_multi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfc_multi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfc_multi*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfc_multi*) ; 
 unsigned char FUNC3 (struct hfc_multi*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfc_multi*,unsigned short) ; 

__attribute__((used)) static inline unsigned char
FUNC5(struct hfc_multi *c, int which, unsigned short addr)
{
	unsigned char res;

	FUNC4(c, addr);

	if (!which)
		FUNC0(c, 2);
	else
		FUNC0(c, 3);

	FUNC2(c);
	res = FUNC3(c, 1);
	FUNC1(c);

	FUNC0(c, 0);

	return res;
}