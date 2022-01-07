
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct spacc_engine {int fifo_sz; int num_algs; int num_aeads; int stat_irq_thresh; scalar_t__ clk; int packet_timeout; TYPE_2__* aeads; TYPE_4__* dev; int registered_aeads; TYPE_3__* algs; int registered_algs; int complete; scalar_t__ in_flight; int in_progress; int completed; int pending; scalar_t__ regs; int hw_lock; int req_pool; int name; scalar_t__ hash_key_base; scalar_t__ cipher_ctx_base; int hash_pg_sz; int cipher_pg_sz; int max_ctxs; } ;
struct spacc_ddt {int dummy; } ;
struct resource {int start; } ;
struct TYPE_21__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_16__ {int cra_name; } ;
struct TYPE_20__ {TYPE_13__ alg; int entry; struct spacc_engine* engine; } ;
struct TYPE_18__ {int cra_name; } ;
struct TYPE_17__ {TYPE_1__ base; } ;
struct TYPE_19__ {TYPE_14__ alg; int entry; struct spacc_engine* engine; } ;


 void* ARRAY_SIZE (void*) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MAX_DDT_LEN ;
 int PTR_ERR (scalar_t__) ;
 int SPACC_CRYPTO_IPSEC_CIPHER_PG_SZ ;
 int SPACC_CRYPTO_IPSEC_FIFO_SZ ;
 int SPACC_CRYPTO_IPSEC_HASH_PG_SZ ;
 int SPACC_CRYPTO_IPSEC_MAX_CTXS ;
 int SPACC_CRYPTO_L2_CIPHER_PG_SZ ;
 int SPACC_CRYPTO_L2_FIFO_SZ ;
 int SPACC_CRYPTO_L2_HASH_PG_SZ ;
 int SPACC_CRYPTO_L2_MAX_CTXS ;
 scalar_t__ SPA_CIPH_KEY_BASE_REG_OFFSET ;
 scalar_t__ SPA_HASH_KEY_BASE_REG_OFFSET ;
 scalar_t__ SPA_IRQ_CTRL_REG_OFFSET ;
 int SPA_IRQ_CTRL_STAT_CNT_OFFSET ;
 int SPA_IRQ_EN_GLBL_EN ;
 scalar_t__ SPA_IRQ_EN_REG_OFFSET ;
 int SPA_IRQ_EN_STAT_EN ;
 int SZ_64K ;
 int clk_disable_unprepare (scalar_t__) ;
 scalar_t__ clk_get (TYPE_4__*,char*) ;
 scalar_t__ clk_prepare_enable (scalar_t__) ;
 int clk_put (scalar_t__) ;
 int crypto_register_aead (TYPE_14__*) ;
 int crypto_register_alg (TYPE_13__*) ;
 int del_timer_sync (int *) ;
 int dev_attr_stat_irq_thresh ;
 int dev_dbg (TYPE_4__*,char*,int ) ;
 int dev_err (TYPE_4__*,char*,...) ;
 int dev_info (TYPE_4__*,char*) ;
 int dev_name (TYPE_4__*) ;
 int device_create_file (TYPE_4__*,int *) ;
 int device_remove_file (TYPE_4__*,int *) ;
 struct spacc_engine* devm_kzalloc (TYPE_4__*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 scalar_t__ devm_request_irq (TYPE_4__*,int ,int ,int ,int ,struct spacc_engine*) ;
 int dmam_pool_create (int ,TYPE_4__*,int,int,int ) ;
 void* ipsec_engine_aeads ;
 void* ipsec_engine_algs ;
 void* l2_engine_algs ;
 int list_add_tail (int *,int *) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spacc_engine*) ;
 int spacc_packet_timeout ;
 int spacc_spacc_complete ;
 int spacc_spacc_irq ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int timer_setup (int *,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spacc_probe(struct platform_device *pdev)
{
 int i, err, ret;
 struct resource *irq;
 struct device_node *np = pdev->dev.of_node;
 struct spacc_engine *engine = devm_kzalloc(&pdev->dev, sizeof(*engine),
         GFP_KERNEL);
 if (!engine)
  return -ENOMEM;

 if (of_device_is_compatible(np, "picochip,spacc-ipsec")) {
  engine->max_ctxs = SPACC_CRYPTO_IPSEC_MAX_CTXS;
  engine->cipher_pg_sz = SPACC_CRYPTO_IPSEC_CIPHER_PG_SZ;
  engine->hash_pg_sz = SPACC_CRYPTO_IPSEC_HASH_PG_SZ;
  engine->fifo_sz = SPACC_CRYPTO_IPSEC_FIFO_SZ;
  engine->algs = ipsec_engine_algs;
  engine->num_algs = ARRAY_SIZE(ipsec_engine_algs);
  engine->aeads = ipsec_engine_aeads;
  engine->num_aeads = ARRAY_SIZE(ipsec_engine_aeads);
 } else if (of_device_is_compatible(np, "picochip,spacc-l2")) {
  engine->max_ctxs = SPACC_CRYPTO_L2_MAX_CTXS;
  engine->cipher_pg_sz = SPACC_CRYPTO_L2_CIPHER_PG_SZ;
  engine->hash_pg_sz = SPACC_CRYPTO_L2_HASH_PG_SZ;
  engine->fifo_sz = SPACC_CRYPTO_L2_FIFO_SZ;
  engine->algs = l2_engine_algs;
  engine->num_algs = ARRAY_SIZE(l2_engine_algs);
 } else {
  return -EINVAL;
 }

 engine->name = dev_name(&pdev->dev);

 engine->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(engine->regs))
  return PTR_ERR(engine->regs);

 irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!irq) {
  dev_err(&pdev->dev, "no memory/irq resource for engine\n");
  return -ENXIO;
 }

 if (devm_request_irq(&pdev->dev, irq->start, spacc_spacc_irq, 0,
        engine->name, engine)) {
  dev_err(engine->dev, "failed to request IRQ\n");
  return -EBUSY;
 }

 engine->dev = &pdev->dev;
 engine->cipher_ctx_base = engine->regs + SPA_CIPH_KEY_BASE_REG_OFFSET;
 engine->hash_key_base = engine->regs + SPA_HASH_KEY_BASE_REG_OFFSET;

 engine->req_pool = dmam_pool_create(engine->name, engine->dev,
  MAX_DDT_LEN * sizeof(struct spacc_ddt), 8, SZ_64K);
 if (!engine->req_pool)
  return -ENOMEM;

 spin_lock_init(&engine->hw_lock);

 engine->clk = clk_get(&pdev->dev, "ref");
 if (IS_ERR(engine->clk)) {
  dev_info(&pdev->dev, "clk unavailable\n");
  return PTR_ERR(engine->clk);
 }

 if (clk_prepare_enable(engine->clk)) {
  dev_info(&pdev->dev, "unable to prepare/enable clk\n");
  ret = -EIO;
  goto err_clk_put;
 }

 ret = device_create_file(&pdev->dev, &dev_attr_stat_irq_thresh);
 if (ret)
  goto err_clk_disable;







 engine->stat_irq_thresh = (engine->fifo_sz / 2);






 writel(engine->stat_irq_thresh << SPA_IRQ_CTRL_STAT_CNT_OFFSET,
        engine->regs + SPA_IRQ_CTRL_REG_OFFSET);
 writel(SPA_IRQ_EN_STAT_EN | SPA_IRQ_EN_GLBL_EN,
        engine->regs + SPA_IRQ_EN_REG_OFFSET);

 timer_setup(&engine->packet_timeout, spacc_packet_timeout, 0);

 INIT_LIST_HEAD(&engine->pending);
 INIT_LIST_HEAD(&engine->completed);
 INIT_LIST_HEAD(&engine->in_progress);
 engine->in_flight = 0;
 tasklet_init(&engine->complete, spacc_spacc_complete,
       (unsigned long)engine);

 platform_set_drvdata(pdev, engine);

 ret = -EINVAL;
 INIT_LIST_HEAD(&engine->registered_algs);
 for (i = 0; i < engine->num_algs; ++i) {
  engine->algs[i].engine = engine;
  err = crypto_register_alg(&engine->algs[i].alg);
  if (!err) {
   list_add_tail(&engine->algs[i].entry,
          &engine->registered_algs);
   ret = 0;
  }
  if (err)
   dev_err(engine->dev, "failed to register alg \"%s\"\n",
    engine->algs[i].alg.cra_name);
  else
   dev_dbg(engine->dev, "registered alg \"%s\"\n",
    engine->algs[i].alg.cra_name);
 }

 INIT_LIST_HEAD(&engine->registered_aeads);
 for (i = 0; i < engine->num_aeads; ++i) {
  engine->aeads[i].engine = engine;
  err = crypto_register_aead(&engine->aeads[i].alg);
  if (!err) {
   list_add_tail(&engine->aeads[i].entry,
          &engine->registered_aeads);
   ret = 0;
  }
  if (err)
   dev_err(engine->dev, "failed to register alg \"%s\"\n",
    engine->aeads[i].alg.base.cra_name);
  else
   dev_dbg(engine->dev, "registered alg \"%s\"\n",
    engine->aeads[i].alg.base.cra_name);
 }

 if (!ret)
  return 0;

 del_timer_sync(&engine->packet_timeout);
 device_remove_file(&pdev->dev, &dev_attr_stat_irq_thresh);
err_clk_disable:
 clk_disable_unprepare(engine->clk);
err_clk_put:
 clk_put(engine->clk);

 return ret;
}
