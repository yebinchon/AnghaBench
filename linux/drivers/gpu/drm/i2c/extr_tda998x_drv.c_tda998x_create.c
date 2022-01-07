
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int of_node; int * funcs; int list; } ;
struct TYPE_4__ {unsigned long irq_flags; int release; int open; int exit; int init; struct tda998x_priv* data; struct device* parent; } ;
struct tda998x_priv {int vip_cntrl_0; int vip_cntrl_1; int vip_cntrl_2; int cec_addr; int current_page; int rev; TYPE_3__ bridge; scalar_t__* audio_port_enable; int cec; TYPE_1__ cec_glue; int cec_notify; int wq_edid; struct i2c_client* hdmi; int detect_work; int edid_delay_timer; int edid_delay_waitq; int edid_mutex; int audio_mutex; int mutex; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct i2c_client {int addr; int irq; TYPE_2__ dev; int adapter; } ;
struct i2c_board_info {int addr; int irq; TYPE_1__* platform_data; int type; } ;
struct device_node {int dummy; } ;
struct device {int of_node; scalar_t__ platform_data; } ;
typedef int cec_info ;


 size_t AUDIO_ROUTE_I2S ;
 size_t AUDIO_ROUTE_SPDIF ;
 int CEC_ENAMODS_EN_HDMI ;
 int CEC_ENAMODS_EN_RXSENS ;
 int CEC_FRO_IM_CLK_CTRL_GHOST_DIS ;
 int CEC_FRO_IM_CLK_CTRL_IMCLK_SEL ;
 int CEC_RXSHPDLEV_HPD ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int I2C_MASTER_DIS_MM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int INT_FLAGS_2_EDID_BLK_RD ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_SHARED ;
 int REG_CEC_ENAMODS ;
 int REG_CEC_FRO_IM_CLK_CTRL ;
 int REG_CEC_RXSHPDINT ;
 int REG_CEC_RXSHPDINTENA ;
 int REG_DDC_DISABLE ;
 int REG_I2C_MASTER ;
 int REG_INT_FLAGS_0 ;
 int REG_INT_FLAGS_1 ;
 int REG_INT_FLAGS_2 ;
 int REG_TX3 ;
 int REG_VERSION_LSB ;
 int REG_VERSION_MSB ;




 int VIP_CNTRL_0_SWAP_A (int) ;
 int VIP_CNTRL_0_SWAP_B (int) ;
 int VIP_CNTRL_1_SWAP_C (int ) ;
 int VIP_CNTRL_1_SWAP_D (int) ;
 int VIP_CNTRL_2_SWAP_E (int) ;
 int VIP_CNTRL_2_SWAP_F (int) ;
 int cec_notifier_get (struct device*) ;
 int cec_read (struct tda998x_priv*,int ) ;
 int cec_write (struct tda998x_priv*,int ,int) ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct tda998x_priv*) ;
 struct tda998x_priv* devm_kzalloc (struct device*,int,int ) ;
 int drm_bridge_add (TYPE_3__*) ;
 int i2c_new_device (int ,struct i2c_board_info*) ;
 int init_waitqueue_head (int *) ;
 int irq_get_irq_data (int) ;
 unsigned long irqd_get_trigger_type (int ) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int reg_read (struct tda998x_priv*,int ) ;
 int reg_set (struct tda998x_priv*,int ,int ) ;
 int reg_write (struct tda998x_priv*,int ,int) ;
 int request_threaded_irq (int,int *,int ,unsigned long,char*,struct tda998x_priv*) ;
 int strlcpy (int ,char*,int) ;
 int tda998x_audio_codec_init (struct tda998x_priv*,TYPE_2__*) ;
 int tda998x_bridge_funcs ;
 int tda998x_cec_hook_exit ;
 int tda998x_cec_hook_init ;
 int tda998x_cec_hook_open ;
 int tda998x_cec_hook_release ;
 int tda998x_destroy (struct device*) ;
 int tda998x_detect_work ;
 int tda998x_edid_delay_done ;
 int tda998x_get_audio_ports (struct tda998x_priv*,struct device_node*) ;
 int tda998x_irq_thread ;
 int tda998x_reset (struct tda998x_priv*) ;
 int tda998x_set_config (struct tda998x_priv*,scalar_t__) ;
 int timer_setup (int *,int ,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int tda998x_create(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct device_node *np = client->dev.of_node;
 struct i2c_board_info cec_info;
 struct tda998x_priv *priv;
 u32 video;
 int rev_lo, rev_hi, ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 dev_set_drvdata(dev, priv);

 mutex_init(&priv->mutex);
 mutex_init(&priv->audio_mutex);
 mutex_init(&priv->edid_mutex);
 INIT_LIST_HEAD(&priv->bridge.list);
 init_waitqueue_head(&priv->edid_delay_waitq);
 timer_setup(&priv->edid_delay_timer, tda998x_edid_delay_done, 0);
 INIT_WORK(&priv->detect_work, tda998x_detect_work);

 priv->vip_cntrl_0 = VIP_CNTRL_0_SWAP_A(2) | VIP_CNTRL_0_SWAP_B(3);
 priv->vip_cntrl_1 = VIP_CNTRL_1_SWAP_C(0) | VIP_CNTRL_1_SWAP_D(1);
 priv->vip_cntrl_2 = VIP_CNTRL_2_SWAP_E(4) | VIP_CNTRL_2_SWAP_F(5);


 priv->cec_addr = 0x34 + (client->addr & 0x03);
 priv->current_page = 0xff;
 priv->hdmi = client;


 cec_write(priv, REG_CEC_ENAMODS,
   CEC_ENAMODS_EN_RXSENS | CEC_ENAMODS_EN_HDMI);

 tda998x_reset(priv);


 rev_lo = reg_read(priv, REG_VERSION_LSB);
 if (rev_lo < 0) {
  dev_err(dev, "failed to read version: %d\n", rev_lo);
  return rev_lo;
 }

 rev_hi = reg_read(priv, REG_VERSION_MSB);
 if (rev_hi < 0) {
  dev_err(dev, "failed to read version: %d\n", rev_hi);
  return rev_hi;
 }

 priv->rev = rev_lo | rev_hi << 8;


 priv->rev &= ~0x30;

 switch (priv->rev) {
 case 128:
  dev_info(dev, "found TDA9989 n2");
  break;
 case 130:
  dev_info(dev, "found TDA19989");
  break;
 case 129:
  dev_info(dev, "found TDA19989 n2");
  break;
 case 131:
  dev_info(dev, "found TDA19988");
  break;
 default:
  dev_err(dev, "found unsupported device: %04x\n", priv->rev);
  return -ENXIO;
 }


 reg_write(priv, REG_DDC_DISABLE, 0x00);


 reg_write(priv, REG_TX3, 39);


 if (priv->rev == 130)
  reg_set(priv, REG_I2C_MASTER, I2C_MASTER_DIS_MM);

 cec_write(priv, REG_CEC_FRO_IM_CLK_CTRL,
   CEC_FRO_IM_CLK_CTRL_GHOST_DIS | CEC_FRO_IM_CLK_CTRL_IMCLK_SEL);


 cec_write(priv, REG_CEC_RXSHPDINTENA, 0);


 cec_read(priv, REG_CEC_RXSHPDINT);
 reg_read(priv, REG_INT_FLAGS_0);
 reg_read(priv, REG_INT_FLAGS_1);
 reg_read(priv, REG_INT_FLAGS_2);


 if (client->irq) {
  unsigned long irq_flags;


  init_waitqueue_head(&priv->wq_edid);

  irq_flags =
   irqd_get_trigger_type(irq_get_irq_data(client->irq));

  priv->cec_glue.irq_flags = irq_flags;

  irq_flags |= IRQF_SHARED | IRQF_ONESHOT;
  ret = request_threaded_irq(client->irq, ((void*)0),
        tda998x_irq_thread, irq_flags,
        "tda998x", priv);
  if (ret) {
   dev_err(dev, "failed to request IRQ#%u: %d\n",
    client->irq, ret);
   goto err_irq;
  }


  cec_write(priv, REG_CEC_RXSHPDINTENA, CEC_RXSHPDLEV_HPD);
 }

 priv->cec_notify = cec_notifier_get(dev);
 if (!priv->cec_notify) {
  ret = -ENOMEM;
  goto fail;
 }

 priv->cec_glue.parent = dev;
 priv->cec_glue.data = priv;
 priv->cec_glue.init = tda998x_cec_hook_init;
 priv->cec_glue.exit = tda998x_cec_hook_exit;
 priv->cec_glue.open = tda998x_cec_hook_open;
 priv->cec_glue.release = tda998x_cec_hook_release;
 memset(&cec_info, 0, sizeof(cec_info));
 strlcpy(cec_info.type, "tda9950", sizeof(cec_info.type));
 cec_info.addr = priv->cec_addr;
 cec_info.platform_data = &priv->cec_glue;
 cec_info.irq = client->irq;

 priv->cec = i2c_new_device(client->adapter, &cec_info);
 if (!priv->cec) {
  ret = -ENODEV;
  goto fail;
 }


 reg_set(priv, REG_INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);

 if (np) {

  ret = of_property_read_u32(np, "video-ports", &video);
  if (ret == 0) {
   priv->vip_cntrl_0 = video >> 16;
   priv->vip_cntrl_1 = video >> 8;
   priv->vip_cntrl_2 = video;
  }

  ret = tda998x_get_audio_ports(priv, np);
  if (ret)
   goto fail;

  if (priv->audio_port_enable[AUDIO_ROUTE_I2S] ||
      priv->audio_port_enable[AUDIO_ROUTE_SPDIF])
   tda998x_audio_codec_init(priv, &client->dev);
 } else if (dev->platform_data) {
  ret = tda998x_set_config(priv, dev->platform_data);
  if (ret)
   goto fail;
 }

 priv->bridge.funcs = &tda998x_bridge_funcs;




 drm_bridge_add(&priv->bridge);

 return 0;

fail:
 tda998x_destroy(dev);
err_irq:
 return ret;
}
