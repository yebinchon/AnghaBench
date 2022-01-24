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
typedef  int u32 ;
struct fsl_qdma_format {void* data; } ;
struct fsl_qdma_comp {scalar_t__ desc_bus_addr; scalar_t__ bus_addr; struct fsl_qdma_format* desc_virt_addr; struct fsl_qdma_format* virt_addr; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int FSL_QDMA_CMD_LWC ; 
 int FSL_QDMA_CMD_LWC_OFFSET ; 
 int FSL_QDMA_CMD_RWTTYPE ; 
 int FSL_QDMA_CMD_RWTTYPE_OFFSET ; 
 int /*<<< orphan*/  FSL_QDMA_COMMAND_BUFFER_SIZE ; 
 int /*<<< orphan*/  FSL_QDMA_DESCRIPTOR_BUFFER_SIZE ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_qdma_format*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_qdma_format*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_qdma_format*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_qdma_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_qdma_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fsl_qdma_format*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_qdma_format*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_qdma_format*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct fsl_qdma_comp *fsl_comp,
				      dma_addr_t dst, dma_addr_t src, u32 len)
{
	u32 cmd;
	struct fsl_qdma_format *sdf, *ddf;
	struct fsl_qdma_format *ccdf, *csgf_desc, *csgf_src, *csgf_dest;

	ccdf = fsl_comp->virt_addr;
	csgf_desc = fsl_comp->virt_addr + 1;
	csgf_src = fsl_comp->virt_addr + 2;
	csgf_dest = fsl_comp->virt_addr + 3;
	sdf = fsl_comp->desc_virt_addr;
	ddf = fsl_comp->desc_virt_addr + 1;

	FUNC2(fsl_comp->virt_addr, 0, FSL_QDMA_COMMAND_BUFFER_SIZE);
	FUNC2(fsl_comp->desc_virt_addr, 0, FSL_QDMA_DESCRIPTOR_BUFFER_SIZE);
	/* Head Command Descriptor(Frame Descriptor) */
	FUNC9(ccdf, fsl_comp->bus_addr + 16);
	FUNC5(ccdf, FUNC3(ccdf));
	FUNC6(ccdf, FUNC4(ccdf));
	/* Status notification is enqueued to status queue. */
	/* Compound Command Descriptor(Frame List Table) */
	FUNC9(csgf_desc, fsl_comp->desc_bus_addr);
	/* It must be 32 as Compound S/G Descriptor */
	FUNC8(csgf_desc, 32);
	FUNC9(csgf_src, src);
	FUNC8(csgf_src, len);
	FUNC9(csgf_dest, dst);
	FUNC8(csgf_dest, len);
	/* This entry is the last entry. */
	FUNC7(csgf_dest, len);
	/* Descriptor Buffer */
	cmd = FUNC1(FSL_QDMA_CMD_RWTTYPE <<
			  FSL_QDMA_CMD_RWTTYPE_OFFSET);
	sdf->data = FUNC0(cmd);

	cmd = FUNC1(FSL_QDMA_CMD_RWTTYPE <<
			  FSL_QDMA_CMD_RWTTYPE_OFFSET);
	cmd |= FUNC1(FSL_QDMA_CMD_LWC << FSL_QDMA_CMD_LWC_OFFSET);
	ddf->data = FUNC0(cmd);
}