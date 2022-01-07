; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_enable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_enable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socfpga_fpga_priv = type { i32 }

@SOCFPGA_FPGMGR_GPIO_INTTYPE_LEVEL_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_INT_POL_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_INTMSK_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_INTEN_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socfpga_fpga_priv*, i32)* @socfpga_fpga_enable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socfpga_fpga_enable_irqs(%struct.socfpga_fpga_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.socfpga_fpga_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.socfpga_fpga_priv* %0, %struct.socfpga_fpga_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %6 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_INTTYPE_LEVEL_OFST, align 4
  %7 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %5, i32 %6, i32 0)
  %8 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %9 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_INT_POL_OFST, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %8, i32 %9, i32 %10)
  %12 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %13 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %12, i32 %13, i32 %14)
  %16 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %17 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_INTMSK_OFST, align 4
  %18 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %16, i32 %17, i32 0)
  %19 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %20 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_INTEN_OFST, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
