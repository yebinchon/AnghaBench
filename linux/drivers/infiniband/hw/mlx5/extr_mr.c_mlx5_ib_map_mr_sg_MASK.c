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
struct scatterlist {int dummy; } ;
struct mlx5_ib_mr {int desc_size; int max_descs; scalar_t__ access_mode; int /*<<< orphan*/  desc_map; scalar_t__ ndescs; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ MLX5_MKC_ACCESS_MODE_KLMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ib_mr*,struct scatterlist*,int,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_ib_mr*,struct scatterlist*,int,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx5_set_page ; 
 struct mlx5_ib_mr* FUNC4 (struct ib_mr*) ; 

int FUNC5(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
		      unsigned int *sg_offset)
{
	struct mlx5_ib_mr *mr = FUNC4(ibmr);
	int n;

	mr->ndescs = 0;

	FUNC0(ibmr->device, mr->desc_map,
				   mr->desc_size * mr->max_descs,
				   DMA_TO_DEVICE);

	if (mr->access_mode == MLX5_MKC_ACCESS_MODE_KLMS)
		n = FUNC3(mr, sg, sg_nents, sg_offset, NULL, 0,
				       NULL);
	else
		n = FUNC2(ibmr, sg, sg_nents, sg_offset,
				mlx5_set_page);

	FUNC1(ibmr->device, mr->desc_map,
				      mr->desc_size * mr->max_descs,
				      DMA_TO_DEVICE);

	return n;
}