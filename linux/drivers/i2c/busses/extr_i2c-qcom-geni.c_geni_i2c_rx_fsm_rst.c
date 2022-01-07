
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; scalar_t__ base; } ;
struct geni_i2c_dev {TYPE_1__ se; int done; } ;


 unsigned long RST_TIMEOUT ;
 int RX_RESET_DONE ;
 scalar_t__ SE_DMA_RX_FSM_RST ;
 scalar_t__ SE_DMA_RX_IRQ_STAT ;
 int dev_err (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void geni_i2c_rx_fsm_rst(struct geni_i2c_dev *gi2c)
{
 u32 val;
 unsigned long time_left = RST_TIMEOUT;

 writel_relaxed(1, gi2c->se.base + SE_DMA_RX_FSM_RST);
 do {
  time_left = wait_for_completion_timeout(&gi2c->done, time_left);
  val = readl_relaxed(gi2c->se.base + SE_DMA_RX_IRQ_STAT);
 } while (!(val & RX_RESET_DONE) && time_left);

 if (!(val & RX_RESET_DONE))
  dev_err(gi2c->se.dev, "Timeout resetting RX_FSM\n");
}
