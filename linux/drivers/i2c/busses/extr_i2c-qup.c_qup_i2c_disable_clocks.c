
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_dev {int pclk; scalar_t__ base; int clk; } ;


 int QUP_CLOCK_AUTO_GATE ;
 scalar_t__ QUP_CONFIG ;
 int QUP_RESET_STATE ;
 int clk_disable_unprepare (int ) ;
 int qup_i2c_change_state (struct qup_i2c_dev*,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qup_i2c_disable_clocks(struct qup_i2c_dev *qup)
{
 u32 config;

 qup_i2c_change_state(qup, QUP_RESET_STATE);
 clk_disable_unprepare(qup->clk);
 config = readl(qup->base + QUP_CONFIG);
 config |= QUP_CLOCK_AUTO_GATE;
 writel(config, qup->base + QUP_CONFIG);
 clk_disable_unprepare(qup->pclk);
}
