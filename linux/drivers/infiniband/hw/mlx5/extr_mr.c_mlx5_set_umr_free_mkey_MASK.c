#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int pdn; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,struct ib_pd*,int) ; 
 struct ib_pd* access_mode_1_0 ; 
 struct ib_pd* access_mode_4_2 ; 
 int /*<<< orphan*/  create_mkey_in ; 
 struct ib_pd* free ; 
 struct ib_pd* log_page_size ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 struct ib_pd* qpn ; 
 TYPE_1__* FUNC2 (struct ib_pd*) ; 
 struct ib_pd* translations_octword_size ; 
 struct ib_pd* umr_en ; 

__attribute__((used)) static void FUNC3(struct ib_pd *pd, u32 *in, int ndescs,
				   int access_mode, int page_shift)
{
	void *mkc;

	mkc = FUNC0(create_mkey_in, in, memory_key_mkey_entry);

	FUNC1(mkc, mkc, free, 1);
	FUNC1(mkc, mkc, qpn, 0xffffff);
	FUNC1(mkc, mkc, pd, FUNC2(pd)->pdn);
	FUNC1(mkc, mkc, translations_octword_size, ndescs);
	FUNC1(mkc, mkc, access_mode_1_0, access_mode & 0x3);
	FUNC1(mkc, mkc, access_mode_4_2, (access_mode >> 2) & 0x7);
	FUNC1(mkc, mkc, umr_en, 1);
	FUNC1(mkc, mkc, log_page_size, page_shift);
}