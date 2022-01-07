; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socfpga_fpga_priv = type { i32 }

@SOCFPGA_FPGMGR_GPIO_INTSTAT_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_MON_CONF_DONE = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_MON_NSTATUS = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_GPIO_INTEN_OFST = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @socfpga_fpga_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.socfpga_fpga_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.socfpga_fpga_priv*
  store %struct.socfpga_fpga_priv* %11, %struct.socfpga_fpga_priv** %5, align 8
  %12 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %13 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_INTSTAT_OFST, align 4
  %14 = call i32 @socfpga_fpga_raw_readl(%struct.socfpga_fpga_priv* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %16 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @socfpga_fpga_raw_writel(%struct.socfpga_fpga_priv* %15, i32 %16, i32 %17)
  %19 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %20 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST, align 4
  %21 = call i32 @socfpga_fpga_raw_readl(%struct.socfpga_fpga_priv* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SOCFPGA_FPGMGR_MON_CONF_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SOCFPGA_FPGMGR_MON_NSTATUS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %39 = load i32, i32* @SOCFPGA_FPGMGR_GPIO_INTEN_OFST, align 4
  %40 = call i32 @socfpga_fpga_raw_writel(%struct.socfpga_fpga_priv* %38, i32 %39, i32 0)
  %41 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %42 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %41, i32 0, i32 0
  %43 = call i32 @complete(i32* %42)
  br label %44

44:                                               ; preds = %37, %34, %2
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local i32 @socfpga_fpga_raw_readl(%struct.socfpga_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_fpga_raw_writel(%struct.socfpga_fpga_priv*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
