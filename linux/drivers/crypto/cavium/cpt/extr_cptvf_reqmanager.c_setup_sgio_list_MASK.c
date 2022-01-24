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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct sglist_component {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cpt_vf {struct pci_dev* pdev; } ;
struct cpt_request_info {int incnt; int outcnt; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct cpt_info_buffer {int dlen; void* rptr_baddr; void* out_buffer; int /*<<< orphan*/ * alternate_caddr; void* dptr_baddr; int /*<<< orphan*/ * in_buffer; void* scatter_components; void* gather_components; } ;

/* Variables and functions */
 scalar_t__ COMPLETION_CODE_INIT ; 
 int COMPLETION_CODE_SIZE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_SG_IN_CNT ; 
 int MAX_SG_OUT_CNT ; 
 int SG_LIST_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC6 (struct cpt_vf*,int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static inline int FUNC7(struct cpt_vf *cptvf,
				  struct cpt_info_buffer *info,
				  struct cpt_request_info *req)
{
	u16 g_sz_bytes = 0, s_sz_bytes = 0;
	int ret = 0;
	struct pci_dev *pdev = cptvf->pdev;

	if (req->incnt > MAX_SG_IN_CNT || req->outcnt > MAX_SG_OUT_CNT) {
		FUNC1(&pdev->dev, "Request SG components are higher than supported\n");
		ret = -EINVAL;
		goto  scatter_gather_clean;
	}

	/* Setup gather (input) components */
	g_sz_bytes = ((req->incnt + 3) / 4) * sizeof(struct sglist_component);
	info->gather_components = FUNC4(g_sz_bytes, GFP_KERNEL);
	if (!info->gather_components) {
		ret = -ENOMEM;
		goto  scatter_gather_clean;
	}

	ret = FUNC6(cptvf, req->in,
				    req->incnt,
				    info->gather_components);
	if (ret) {
		FUNC1(&pdev->dev, "Failed to setup gather list\n");
		ret = -EFAULT;
		goto  scatter_gather_clean;
	}

	/* Setup scatter (output) components */
	s_sz_bytes = ((req->outcnt + 3) / 4) * sizeof(struct sglist_component);
	info->scatter_components = FUNC4(s_sz_bytes, GFP_KERNEL);
	if (!info->scatter_components) {
		ret = -ENOMEM;
		goto  scatter_gather_clean;
	}

	ret = FUNC6(cptvf, req->out,
				    req->outcnt,
				    info->scatter_components);
	if (ret) {
		FUNC1(&pdev->dev, "Failed to setup gather list\n");
		ret = -EFAULT;
		goto  scatter_gather_clean;
	}

	/* Create and initialize DPTR */
	info->dlen = g_sz_bytes + s_sz_bytes + SG_LIST_HDR_SIZE;
	info->in_buffer = FUNC4(info->dlen, GFP_KERNEL);
	if (!info->in_buffer) {
		ret = -ENOMEM;
		goto  scatter_gather_clean;
	}

	((u16 *)info->in_buffer)[0] = req->outcnt;
	((u16 *)info->in_buffer)[1] = req->incnt;
	((u16 *)info->in_buffer)[2] = 0;
	((u16 *)info->in_buffer)[3] = 0;
	*(u64 *)info->in_buffer = FUNC0((u64 *)info->in_buffer);

	FUNC5(&info->in_buffer[8], info->gather_components,
	       g_sz_bytes);
	FUNC5(&info->in_buffer[8 + g_sz_bytes],
	       info->scatter_components, s_sz_bytes);

	info->dptr_baddr = FUNC2(&pdev->dev,
					  (void *)info->in_buffer,
					  info->dlen,
					  DMA_BIDIRECTIONAL);
	if (FUNC3(&pdev->dev, info->dptr_baddr)) {
		FUNC1(&pdev->dev, "Mapping DPTR Failed %d\n", info->dlen);
		ret = -EIO;
		goto  scatter_gather_clean;
	}

	/* Create and initialize RPTR */
	info->out_buffer = FUNC4(COMPLETION_CODE_SIZE, GFP_KERNEL);
	if (!info->out_buffer) {
		ret = -ENOMEM;
		goto scatter_gather_clean;
	}

	*((u64 *)info->out_buffer) = ~((u64)COMPLETION_CODE_INIT);
	info->alternate_caddr = (u64 *)info->out_buffer;
	info->rptr_baddr = FUNC2(&pdev->dev,
					  (void *)info->out_buffer,
					  COMPLETION_CODE_SIZE,
					  DMA_BIDIRECTIONAL);
	if (FUNC3(&pdev->dev, info->rptr_baddr)) {
		FUNC1(&pdev->dev, "Mapping RPTR Failed %d\n",
			COMPLETION_CODE_SIZE);
		ret = -EIO;
		goto  scatter_gather_clean;
	}

	return 0;

scatter_gather_clean:
	return ret;
}