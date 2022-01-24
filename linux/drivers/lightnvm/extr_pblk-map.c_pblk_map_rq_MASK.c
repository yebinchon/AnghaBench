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
struct ppa_addr {int dummy; } ;
struct pblk {int min_write_pgs; } ;
struct nvm_rq {int nr_ppas; } ;

/* Variables and functions */
 struct ppa_addr* FUNC0 (struct nvm_rq*) ; 
 void* FUNC1 (struct pblk*,void*,int) ; 
 void* FUNC2 (struct pblk*,struct nvm_rq*) ; 
 int FUNC3 (struct pblk*,unsigned int,struct ppa_addr*,unsigned long*,void*,unsigned int) ; 

int FUNC4(struct pblk *pblk, struct nvm_rq *rqd, unsigned int sentry,
		 unsigned long *lun_bitmap, unsigned int valid_secs,
		 unsigned int off)
{
	void *meta_list = FUNC2(pblk, rqd);
	void *meta_buffer;
	struct ppa_addr *ppa_list = FUNC0(rqd);
	unsigned int map_secs;
	int min = pblk->min_write_pgs;
	int i;
	int ret;

	for (i = off; i < rqd->nr_ppas; i += min) {
		map_secs = (i + min > valid_secs) ? (valid_secs % min) : min;
		meta_buffer = FUNC1(pblk, meta_list, i);

		ret = FUNC3(pblk, sentry + i, &ppa_list[i],
					lun_bitmap, meta_buffer, map_secs);
		if (ret)
			return ret;
	}

	return 0;
}