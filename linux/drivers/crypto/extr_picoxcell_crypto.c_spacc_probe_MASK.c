#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct spacc_engine {int fifo_sz; int num_algs; int num_aeads; int stat_irq_thresh; scalar_t__ clk; int /*<<< orphan*/  packet_timeout; TYPE_2__* aeads; TYPE_4__* dev; int /*<<< orphan*/  registered_aeads; TYPE_3__* algs; int /*<<< orphan*/  registered_algs; int /*<<< orphan*/  complete; scalar_t__ in_flight; int /*<<< orphan*/  in_progress; int /*<<< orphan*/  completed; int /*<<< orphan*/  pending; scalar_t__ regs; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  req_pool; int /*<<< orphan*/  name; scalar_t__ hash_key_base; scalar_t__ cipher_ctx_base; int /*<<< orphan*/  hash_pg_sz; int /*<<< orphan*/  cipher_pg_sz; int /*<<< orphan*/  max_ctxs; } ;
struct spacc_ddt {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_21__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  cra_name; } ;
struct TYPE_20__ {TYPE_13__ alg; int /*<<< orphan*/  entry; struct spacc_engine* engine; } ;
struct TYPE_18__ {int /*<<< orphan*/  cra_name; } ;
struct TYPE_17__ {TYPE_1__ base; } ;
struct TYPE_19__ {TYPE_14__ alg; int /*<<< orphan*/  entry; struct spacc_engine* engine; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int MAX_DDT_LEN ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SPACC_CRYPTO_IPSEC_CIPHER_PG_SZ ; 
 int SPACC_CRYPTO_IPSEC_FIFO_SZ ; 
 int /*<<< orphan*/  SPACC_CRYPTO_IPSEC_HASH_PG_SZ ; 
 int /*<<< orphan*/  SPACC_CRYPTO_IPSEC_MAX_CTXS ; 
 int /*<<< orphan*/  SPACC_CRYPTO_L2_CIPHER_PG_SZ ; 
 int SPACC_CRYPTO_L2_FIFO_SZ ; 
 int /*<<< orphan*/  SPACC_CRYPTO_L2_HASH_PG_SZ ; 
 int /*<<< orphan*/  SPACC_CRYPTO_L2_MAX_CTXS ; 
 scalar_t__ SPA_CIPH_KEY_BASE_REG_OFFSET ; 
 scalar_t__ SPA_HASH_KEY_BASE_REG_OFFSET ; 
 scalar_t__ SPA_IRQ_CTRL_REG_OFFSET ; 
 int SPA_IRQ_CTRL_STAT_CNT_OFFSET ; 
 int SPA_IRQ_EN_GLBL_EN ; 
 scalar_t__ SPA_IRQ_EN_REG_OFFSET ; 
 int SPA_IRQ_EN_STAT_EN ; 
 int /*<<< orphan*/  SZ_64K ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (TYPE_14__*) ; 
 int FUNC9 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_stat_irq_thresh ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int FUNC15 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 struct spacc_engine* FUNC17 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spacc_engine*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 void* ipsec_engine_aeads ; 
 void* ipsec_engine_algs ; 
 void* l2_engine_algs ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct device_node*,char*) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct spacc_engine*) ; 
 int /*<<< orphan*/  spacc_packet_timeout ; 
 int /*<<< orphan*/  spacc_spacc_complete ; 
 int /*<<< orphan*/  spacc_spacc_irq ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	int i, err, ret;
	struct resource *irq;
	struct device_node *np = pdev->dev.of_node;
	struct spacc_engine *engine = FUNC17(&pdev->dev, sizeof(*engine),
						   GFP_KERNEL);
	if (!engine)
		return -ENOMEM;

	if (FUNC22(np, "picochip,spacc-ipsec")) {
		engine->max_ctxs	= SPACC_CRYPTO_IPSEC_MAX_CTXS;
		engine->cipher_pg_sz	= SPACC_CRYPTO_IPSEC_CIPHER_PG_SZ;
		engine->hash_pg_sz	= SPACC_CRYPTO_IPSEC_HASH_PG_SZ;
		engine->fifo_sz		= SPACC_CRYPTO_IPSEC_FIFO_SZ;
		engine->algs		= ipsec_engine_algs;
		engine->num_algs	= FUNC0(ipsec_engine_algs);
		engine->aeads		= ipsec_engine_aeads;
		engine->num_aeads	= FUNC0(ipsec_engine_aeads);
	} else if (FUNC22(np, "picochip,spacc-l2")) {
		engine->max_ctxs	= SPACC_CRYPTO_L2_MAX_CTXS;
		engine->cipher_pg_sz	= SPACC_CRYPTO_L2_CIPHER_PG_SZ;
		engine->hash_pg_sz	= SPACC_CRYPTO_L2_HASH_PG_SZ;
		engine->fifo_sz		= SPACC_CRYPTO_L2_FIFO_SZ;
		engine->algs		= l2_engine_algs;
		engine->num_algs	= FUNC0(l2_engine_algs);
	} else {
		return -EINVAL;
	}

	engine->name = FUNC14(&pdev->dev);

	engine->regs = FUNC18(pdev, 0);
	if (FUNC2(engine->regs))
		return FUNC3(engine->regs);

	irq = FUNC23(pdev, IORESOURCE_IRQ, 0);
	if (!irq) {
		FUNC12(&pdev->dev, "no memory/irq resource for engine\n");
		return -ENXIO;
	}

	if (FUNC19(&pdev->dev, irq->start, spacc_spacc_irq, 0,
			     engine->name, engine)) {
		FUNC12(engine->dev, "failed to request IRQ\n");
		return -EBUSY;
	}

	engine->dev		= &pdev->dev;
	engine->cipher_ctx_base = engine->regs + SPA_CIPH_KEY_BASE_REG_OFFSET;
	engine->hash_key_base	= engine->regs + SPA_HASH_KEY_BASE_REG_OFFSET;

	engine->req_pool = FUNC20(engine->name, engine->dev,
		MAX_DDT_LEN * sizeof(struct spacc_ddt), 8, SZ_64K);
	if (!engine->req_pool)
		return -ENOMEM;

	FUNC25(&engine->hw_lock);

	engine->clk = FUNC5(&pdev->dev, "ref");
	if (FUNC2(engine->clk)) {
		FUNC13(&pdev->dev, "clk unavailable\n");
		return FUNC3(engine->clk);
	}

	if (FUNC6(engine->clk)) {
		FUNC13(&pdev->dev, "unable to prepare/enable clk\n");
		ret = -EIO;
		goto err_clk_put;
	}

	ret = FUNC15(&pdev->dev, &dev_attr_stat_irq_thresh);
	if (ret)
		goto err_clk_disable;


	/*
	 * Use an IRQ threshold of 50% as a default. This seems to be a
	 * reasonable trade off of latency against throughput but can be
	 * changed at runtime.
	 */
	engine->stat_irq_thresh = (engine->fifo_sz / 2);

	/*
	 * Configure the interrupts. We only use the STAT_CNT interrupt as we
	 * only submit a new packet for processing when we complete another in
	 * the queue. This minimizes time spent in the interrupt handler.
	 */
	FUNC28(engine->stat_irq_thresh << SPA_IRQ_CTRL_STAT_CNT_OFFSET,
	       engine->regs + SPA_IRQ_CTRL_REG_OFFSET);
	FUNC28(SPA_IRQ_EN_STAT_EN | SPA_IRQ_EN_GLBL_EN,
	       engine->regs + SPA_IRQ_EN_REG_OFFSET);

	FUNC27(&engine->packet_timeout, spacc_packet_timeout, 0);

	FUNC1(&engine->pending);
	FUNC1(&engine->completed);
	FUNC1(&engine->in_progress);
	engine->in_flight = 0;
	FUNC26(&engine->complete, spacc_spacc_complete,
		     (unsigned long)engine);

	FUNC24(pdev, engine);

	ret = -EINVAL;
	FUNC1(&engine->registered_algs);
	for (i = 0; i < engine->num_algs; ++i) {
		engine->algs[i].engine = engine;
		err = FUNC9(&engine->algs[i].alg);
		if (!err) {
			FUNC21(&engine->algs[i].entry,
				      &engine->registered_algs);
			ret = 0;
		}
		if (err)
			FUNC12(engine->dev, "failed to register alg \"%s\"\n",
				engine->algs[i].alg.cra_name);
		else
			FUNC11(engine->dev, "registered alg \"%s\"\n",
				engine->algs[i].alg.cra_name);
	}

	FUNC1(&engine->registered_aeads);
	for (i = 0; i < engine->num_aeads; ++i) {
		engine->aeads[i].engine = engine;
		err = FUNC8(&engine->aeads[i].alg);
		if (!err) {
			FUNC21(&engine->aeads[i].entry,
				      &engine->registered_aeads);
			ret = 0;
		}
		if (err)
			FUNC12(engine->dev, "failed to register alg \"%s\"\n",
				engine->aeads[i].alg.base.cra_name);
		else
			FUNC11(engine->dev, "registered alg \"%s\"\n",
				engine->aeads[i].alg.base.cra_name);
	}

	if (!ret)
		return 0;

	FUNC10(&engine->packet_timeout);
	FUNC16(&pdev->dev, &dev_attr_stat_irq_thresh);
err_clk_disable:
	FUNC4(engine->clk);
err_clk_put:
	FUNC7(engine->clk);

	return ret;
}