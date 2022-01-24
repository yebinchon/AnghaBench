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
typedef  int /*<<< orphan*/  u32 ;
struct pblk_line_meta {int smeta_len; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct line_smeta {int dummy; } ;
struct line_header {int dummy; } ;
typedef  int /*<<< orphan*/  crc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static inline u32 FUNC1(struct pblk *pblk,
				      struct line_smeta *smeta)
{
	struct pblk_line_meta *lm = &pblk->lm;
	u32 crc = ~(u32)0;

	crc = FUNC0(crc, (unsigned char *)smeta +
				sizeof(struct line_header) + sizeof(crc),
				lm->smeta_len -
				sizeof(struct line_header) - sizeof(crc));

	return crc;
}