
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svc_invoke_fn ;
struct stratix10_svc_sh_memory {int * invoke_fn; } ;
struct stratix10_svc_data {int dummy; } ;
struct stratix10_svc_controller {int node; int svc_fifo_lock; int svc_fifo; int complete_status; int * invoke_fn; int * task; struct gen_pool* genpool; struct stratix10_svc_chan* chans; scalar_t__ num_active_client; int num_chans; struct device* dev; } ;
struct stratix10_svc_chan {int lock; int name; struct stratix10_svc_controller* ctrl; int * scl; } ;
struct stratix10_svc {int stratix10_svc_rsu; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gen_pool {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int STRATIX10_RSU ;
 int SVC_CLIENT_FPGA ;
 int SVC_CLIENT_RSU ;
 int SVC_NUM_CHANNEL ;
 int SVC_NUM_DATA_IN_FIFO ;
 int __GFP_ZERO ;
 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct stratix10_svc*) ;
 struct stratix10_svc_chan* devm_kmalloc_array (struct device*,int ,int,int) ;
 void* devm_kzalloc (struct device*,int,int) ;
 int * get_invoke_func (struct device*) ;
 int init_completion (int *) ;
 int kfifo_alloc (int *,size_t,int) ;
 int list_add_tail (int *,int *) ;
 int platform_device_add (int ) ;
 int platform_device_alloc (int ,int ) ;
 int platform_device_put (int ) ;
 int platform_set_drvdata (struct platform_device*,struct stratix10_svc_controller*) ;
 int pr_info (char*) ;
 int spin_lock_init (int *) ;
 struct gen_pool* svc_create_memory_pool (struct platform_device*,struct stratix10_svc_sh_memory*) ;
 int svc_ctrl ;
 int svc_get_sh_memory (struct platform_device*,struct stratix10_svc_sh_memory*) ;

__attribute__((used)) static int stratix10_svc_drv_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct stratix10_svc_controller *controller;
 struct stratix10_svc_chan *chans;
 struct gen_pool *genpool;
 struct stratix10_svc_sh_memory *sh_memory;
 struct stratix10_svc *svc;

 svc_invoke_fn *invoke_fn;
 size_t fifo_size;
 int ret;


 invoke_fn = get_invoke_func(dev);
 if (IS_ERR(invoke_fn))
  return -EINVAL;

 sh_memory = devm_kzalloc(dev, sizeof(*sh_memory), GFP_KERNEL);
 if (!sh_memory)
  return -ENOMEM;

 sh_memory->invoke_fn = invoke_fn;
 ret = svc_get_sh_memory(pdev, sh_memory);
 if (ret)
  return ret;

 genpool = svc_create_memory_pool(pdev, sh_memory);
 if (!genpool)
  return -ENOMEM;


 controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
 if (!controller)
  return -ENOMEM;

 chans = devm_kmalloc_array(dev, SVC_NUM_CHANNEL,
       sizeof(*chans), GFP_KERNEL | __GFP_ZERO);
 if (!chans)
  return -ENOMEM;

 controller->dev = dev;
 controller->num_chans = SVC_NUM_CHANNEL;
 controller->num_active_client = 0;
 controller->chans = chans;
 controller->genpool = genpool;
 controller->task = ((void*)0);
 controller->invoke_fn = invoke_fn;
 init_completion(&controller->complete_status);

 fifo_size = sizeof(struct stratix10_svc_data) * SVC_NUM_DATA_IN_FIFO;
 ret = kfifo_alloc(&controller->svc_fifo, fifo_size, GFP_KERNEL);
 if (ret) {
  dev_err(dev, "failed to allocate FIFO\n");
  return ret;
 }
 spin_lock_init(&controller->svc_fifo_lock);

 chans[0].scl = ((void*)0);
 chans[0].ctrl = controller;
 chans[0].name = SVC_CLIENT_FPGA;
 spin_lock_init(&chans[0].lock);

 chans[1].scl = ((void*)0);
 chans[1].ctrl = controller;
 chans[1].name = SVC_CLIENT_RSU;
 spin_lock_init(&chans[1].lock);

 list_add_tail(&controller->node, &svc_ctrl);
 platform_set_drvdata(pdev, controller);


 svc = devm_kzalloc(dev, sizeof(*svc), GFP_KERNEL);
 if (!svc)
  return -ENOMEM;

 svc->stratix10_svc_rsu = platform_device_alloc(STRATIX10_RSU, 0);
 if (!svc->stratix10_svc_rsu) {
  dev_err(dev, "failed to allocate %s device\n", STRATIX10_RSU);
  return -ENOMEM;
 }

 ret = platform_device_add(svc->stratix10_svc_rsu);
 if (ret) {
  platform_device_put(svc->stratix10_svc_rsu);
  return ret;
 }
 dev_set_drvdata(dev, svc);

 pr_info("Intel Service Layer Driver Initialized\n");

 return ret;
}
