
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omap_ssi_port {int pdev; } ;
struct omap_ssi_controller {scalar_t__ sys; } ;
struct TYPE_3__ {int parent; } ;
struct hsi_port {int num; TYPE_1__ device; } ;
struct hsi_msg {scalar_t__ ttype; int status; scalar_t__ actual_len; int channel; int cl; } ;
struct hsi_controller {int dummy; } ;


 int EREMOTEIO ;
 scalar_t__ HSI_MSG_WRITE ;
 int HSI_STATUS_PROCEEDING ;
 int SSI_DATAACCEPT (int ) ;
 int SSI_DATAAVAILABLE (int ) ;
 int SSI_ERROROCCURED ;
 scalar_t__ SSI_MPU_ENABLE_REG (int ,int ) ;
 int dev_dbg (TYPE_1__*,char*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 struct omap_ssi_controller* hsi_controller_drvdata (struct hsi_controller*) ;
 struct hsi_port* hsi_get_port (int ) ;
 struct omap_ssi_port* hsi_port_drvdata (struct hsi_port*) ;
 int pm_runtime_active (int ) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int readl (scalar_t__) ;
 struct hsi_controller* to_hsi_controller (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ssi_start_pio(struct hsi_msg *msg)
{
 struct hsi_port *port = hsi_get_port(msg->cl);
 struct omap_ssi_port *omap_port = hsi_port_drvdata(port);
 struct hsi_controller *ssi = to_hsi_controller(port->device.parent);
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);
 u32 val;

 pm_runtime_get(omap_port->pdev);

 if (!pm_runtime_active(omap_port->pdev)) {
  dev_warn(&port->device, "ssi_start_pio called without runtime PM!\n");
  pm_runtime_put_autosuspend(omap_port->pdev);
  return -EREMOTEIO;
 }

 if (msg->ttype == HSI_MSG_WRITE) {
  val = SSI_DATAACCEPT(msg->channel);

  pm_runtime_get(omap_port->pdev);
 } else {
  val = SSI_DATAAVAILABLE(msg->channel) | SSI_ERROROCCURED;
 }
 dev_dbg(&port->device, "Single %s transfer\n",
      msg->ttype ? "write" : "read");
 val |= readl(omap_ssi->sys + SSI_MPU_ENABLE_REG(port->num, 0));
 writel(val, omap_ssi->sys + SSI_MPU_ENABLE_REG(port->num, 0));
 pm_runtime_put_autosuspend(omap_port->pdev);
 msg->actual_len = 0;
 msg->status = HSI_STATUS_PROCEEDING;

 return 0;
}
