#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; struct edma_soc_info* platform_data; } ;
struct platform_device {scalar_t__ id; struct device dev; } ;
struct of_phandle_args {int* args; int /*<<< orphan*/  np; } ;
struct of_device_id {scalar_t__ data; } ;
struct edma_soc_info {int default_queue; int** xbar_chans; int** queue_priority_mapping; int /*<<< orphan*/  slavecnt; int /*<<< orphan*/  slave_map; TYPE_3__* rsv; } ;
struct TYPE_7__ {int /*<<< orphan*/  fn; int /*<<< orphan*/  mapcnt; int /*<<< orphan*/  map; } ;
struct TYPE_9__ {TYPE_2__ filter; } ;
struct edma_cc {scalar_t__ id; int legacy_mode; int num_channels; int num_slots; int default_queue; int ccint; int ccerrint; scalar_t__ dummy_slot; int num_tc; TYPE_4__ dma_slave; TYPE_4__* dma_memcpy; int /*<<< orphan*/ * slave_chans; struct edma_soc_info* info; TYPE_1__* tc_list; void* slot_inuse; struct edma_soc_info* base; struct device* dev; } ;
struct device_node {int dummy; } ;
typedef  int s8 ;
typedef  int s16 ;
struct TYPE_8__ {int** rsv_slots; } ;
struct TYPE_6__ {int id; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ EDMA_BINDING_TPCC ; 
 int /*<<< orphan*/  EDMA_DRAE ; 
 int /*<<< orphan*/  EDMA_QRAE ; 
 int /*<<< orphan*/  EDMA_SLOT_ANY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (struct edma_soc_info*) ; 
 int FUNC3 (struct edma_soc_info*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct edma_soc_info* FUNC9 (struct device*,struct resource*) ; 
 char* FUNC10 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct edma_cc* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct edma_cc*) ; 
 int FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  dma_ccerr_handler ; 
 int /*<<< orphan*/  dma_irq_handler ; 
 int FUNC16 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dummy_paramset ; 
 scalar_t__ FUNC17 (struct edma_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (struct edma_cc*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct edma_cc*,int) ; 
 int /*<<< orphan*/  edma_filter_fn ; 
 int /*<<< orphan*/  FUNC21 (struct edma_cc*,int) ; 
 int /*<<< orphan*/  edma_of_ids ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int FUNC23 (struct device*,struct edma_soc_info*,struct edma_cc*) ; 
 struct edma_soc_info* FUNC24 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct edma_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct edma_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC27 (struct edma_cc*,int,int /*<<< orphan*/ *) ; 
 int FUNC28 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct device_node*,int /*<<< orphan*/ ,struct edma_cc*) ; 
 int /*<<< orphan*/  of_edma_xlate ; 
 struct of_device_id* FUNC30 (int /*<<< orphan*/ ,struct device_node*) ; 
 int FUNC31 (struct device_node*,char*,int,int,struct of_phandle_args*) ; 
 int FUNC32 (struct platform_device*,char*) ; 
 struct resource* FUNC33 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC34 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC35 (struct platform_device*,struct edma_cc*) ; 
 int /*<<< orphan*/  FUNC36 (struct device*) ; 
 int FUNC37 (struct device*) ; 
 int /*<<< orphan*/  FUNC38 (int,void*) ; 

__attribute__((used)) static int FUNC39(struct platform_device *pdev)
{
	struct edma_soc_info	*info = pdev->dev.platform_data;
	s8			(*queue_priority_mapping)[2];
	int			i, off;
	const s16		(*rsv_slots)[2];
	const s16		(*xbar_chans)[2];
	int			irq;
	char			*irq_name;
	struct resource		*mem;
	struct device_node	*node = pdev->dev.of_node;
	struct device		*dev = &pdev->dev;
	struct edma_cc		*ecc;
	bool			legacy_mode = true;
	int ret;

	if (node) {
		const struct of_device_id *match;

		match = FUNC30(edma_of_ids, node);
		if (match && (*(u32 *)match->data) == EDMA_BINDING_TPCC)
			legacy_mode = false;

		info = FUNC24(dev, legacy_mode);
		if (FUNC2(info)) {
			FUNC6(dev, "failed to get DT data\n");
			return FUNC3(info);
		}
	}

	if (!info)
		return -ENODEV;

	FUNC36(dev);
	ret = FUNC37(dev);
	if (ret < 0) {
		FUNC6(dev, "pm_runtime_get_sync() failed\n");
		return ret;
	}

	ret = FUNC16(dev, FUNC1(32));
	if (ret)
		return ret;

	ecc = FUNC12(dev, sizeof(*ecc), GFP_KERNEL);
	if (!ecc)
		return -ENOMEM;

	ecc->dev = dev;
	ecc->id = pdev->id;
	ecc->legacy_mode = legacy_mode;
	/* When booting with DT the pdev->id is -1 */
	if (ecc->id < 0)
		ecc->id = 0;

	mem = FUNC34(pdev, IORESOURCE_MEM, "edma3_cc");
	if (!mem) {
		FUNC5(dev, "mem resource not found, using index 0\n");
		mem = FUNC33(pdev, IORESOURCE_MEM, 0);
		if (!mem) {
			FUNC6(dev, "no mem resource?\n");
			return -ENODEV;
		}
	}
	ecc->base = FUNC9(dev, mem);
	if (FUNC2(ecc->base))
		return FUNC3(ecc->base);

	FUNC35(pdev, ecc);

	/* Get eDMA3 configuration from IP */
	ret = FUNC23(dev, info, ecc);
	if (ret)
		return ret;

	/* Allocate memory based on the information we got from the IP */
	ecc->slave_chans = FUNC11(dev, ecc->num_channels,
					sizeof(*ecc->slave_chans), GFP_KERNEL);
	if (!ecc->slave_chans)
		return -ENOMEM;

	ecc->slot_inuse = FUNC11(dev, FUNC0(ecc->num_slots),
				       sizeof(unsigned long), GFP_KERNEL);
	if (!ecc->slot_inuse)
		return -ENOMEM;

	ecc->default_queue = info->default_queue;

	if (info->rsv) {
		/* Set the reserved slots in inuse list */
		rsv_slots = info->rsv->rsv_slots;
		if (rsv_slots) {
			for (i = 0; rsv_slots[i][0] != -1; i++)
				FUNC4(ecc->slot_inuse, rsv_slots[i][0],
					   rsv_slots[i][1]);
		}
	}

	for (i = 0; i < ecc->num_slots; i++) {
		/* Reset only unused - not reserved - paRAM slots */
		if (!FUNC38(i, ecc->slot_inuse))
			FUNC27(ecc, i, &dummy_paramset);
	}

	/* Clear the xbar mapped channels in unused list */
	xbar_chans = info->xbar_chans;
	if (xbar_chans) {
		for (i = 0; xbar_chans[i][1] != -1; i++) {
			off = xbar_chans[i][1];
		}
	}

	irq = FUNC32(pdev, "edma3_ccint");
	if (irq < 0 && node)
		irq = FUNC28(node, 0);

	if (irq >= 0) {
		irq_name = FUNC10(dev, GFP_KERNEL, "%s_ccint",
					  FUNC8(dev));
		ret = FUNC13(dev, irq, dma_irq_handler, 0, irq_name,
				       ecc);
		if (ret) {
			FUNC6(dev, "CCINT (%d) failed --> %d\n", irq, ret);
			return ret;
		}
		ecc->ccint = irq;
	}

	irq = FUNC32(pdev, "edma3_ccerrint");
	if (irq < 0 && node)
		irq = FUNC28(node, 2);

	if (irq >= 0) {
		irq_name = FUNC10(dev, GFP_KERNEL, "%s_ccerrint",
					  FUNC8(dev));
		ret = FUNC13(dev, irq, dma_ccerr_handler, 0, irq_name,
				       ecc);
		if (ret) {
			FUNC6(dev, "CCERRINT (%d) failed --> %d\n", irq, ret);
			return ret;
		}
		ecc->ccerrint = irq;
	}

	ecc->dummy_slot = FUNC17(ecc, EDMA_SLOT_ANY);
	if (ecc->dummy_slot < 0) {
		FUNC6(dev, "Can't allocate PaRAM dummy slot\n");
		return ecc->dummy_slot;
	}

	queue_priority_mapping = info->queue_priority_mapping;

	if (!ecc->legacy_mode) {
		int lowest_priority = 0;
		struct of_phandle_args tc_args;

		ecc->tc_list = FUNC11(dev, ecc->num_tc,
					    sizeof(*ecc->tc_list), GFP_KERNEL);
		if (!ecc->tc_list)
			return -ENOMEM;

		for (i = 0;; i++) {
			ret = FUNC31(node, "ti,tptcs",
							       1, i, &tc_args);
			if (ret || i == ecc->num_tc)
				break;

			ecc->tc_list[i].node = tc_args.np;
			ecc->tc_list[i].id = i;
			queue_priority_mapping[i][1] = tc_args.args[0];
			if (queue_priority_mapping[i][1] > lowest_priority) {
				lowest_priority = queue_priority_mapping[i][1];
				info->default_queue = i;
			}
		}
	}

	/* Event queue priority mapping */
	for (i = 0; queue_priority_mapping[i][0] != -1; i++)
		FUNC19(ecc, queue_priority_mapping[i][0],
					      queue_priority_mapping[i][1]);

	FUNC26(ecc, EDMA_DRAE, 0, 0, 0x0);
	FUNC26(ecc, EDMA_DRAE, 0, 1, 0x0);
	FUNC25(ecc, EDMA_QRAE, 0, 0x0);

	ecc->info = info;

	/* Init the dma device and channels */
	FUNC20(ecc, legacy_mode);

	for (i = 0; i < ecc->num_channels; i++) {
		/* Assign all channels to the default queue */
		FUNC18(&ecc->slave_chans[i],
					   info->default_queue);
		/* Set entry slot to the dummy slot */
		FUNC22(&ecc->slave_chans[i], ecc->dummy_slot);
	}

	ecc->dma_slave.filter.map = info->slave_map;
	ecc->dma_slave.filter.mapcnt = info->slavecnt;
	ecc->dma_slave.filter.fn = edma_filter_fn;

	ret = FUNC14(&ecc->dma_slave);
	if (ret) {
		FUNC6(dev, "slave ddev registration failed (%d)\n", ret);
		goto err_reg1;
	}

	if (ecc->dma_memcpy) {
		ret = FUNC14(ecc->dma_memcpy);
		if (ret) {
			FUNC6(dev, "memcpy ddev registration failed (%d)\n",
				ret);
			FUNC15(&ecc->dma_slave);
			goto err_reg1;
		}
	}

	if (node)
		FUNC29(node, of_edma_xlate, ecc);

	FUNC7(dev, "TI EDMA DMA engine driver\n");

	return 0;

err_reg1:
	FUNC21(ecc, ecc->dummy_slot);
	return ret;
}