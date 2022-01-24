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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  PAGE_MODE_1_LEVEL 135 
#define  PAGE_MODE_2_LEVEL 134 
#define  PAGE_MODE_3_LEVEL 133 
#define  PAGE_MODE_4_LEVEL 132 
#define  PAGE_MODE_5_LEVEL 131 
#define  PAGE_MODE_6_LEVEL 130 
#define  PAGE_MODE_7_LEVEL 129 
#define  PAGE_MODE_NONE 128 
 struct page* FUNC1 (unsigned long,struct page*) ; 
 struct page* FUNC2 (unsigned long,struct page*) ; 
 struct page* FUNC3 (unsigned long,struct page*) ; 
 struct page* FUNC4 (unsigned long,struct page*) ; 
 struct page* FUNC5 (unsigned long,struct page*) ; 
 struct page* FUNC6 (unsigned long,struct page*) ; 

__attribute__((used)) static struct page *FUNC7(unsigned long root, int mode,
				struct page *freelist)
{
	switch (mode) {
	case PAGE_MODE_NONE:
	case PAGE_MODE_7_LEVEL:
		break;
	case PAGE_MODE_1_LEVEL:
		freelist = FUNC6(root, freelist);
		break;
	case PAGE_MODE_2_LEVEL:
		freelist = FUNC1(root, freelist);
		break;
	case PAGE_MODE_3_LEVEL:
		freelist = FUNC2(root, freelist);
		break;
	case PAGE_MODE_4_LEVEL:
		freelist = FUNC3(root, freelist);
		break;
	case PAGE_MODE_5_LEVEL:
		freelist = FUNC4(root, freelist);
		break;
	case PAGE_MODE_6_LEVEL:
		freelist = FUNC5(root, freelist);
		break;
	default:
		FUNC0();
	}

	return freelist;
}