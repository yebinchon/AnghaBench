; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_cfg_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_cfg_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.socfpga_fpga_priv = type { i32 }

@SOCFPGA_FPGMGR_CTL_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_CTL_CDRATIO_MASK = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_CTL_CFGWDTH_MASK = common dso_local global i32 0, align 4
@cfgmgr_modes = common dso_local global %struct.TYPE_2__* null, align 8
@SOCFPGA_FPGMGR_CTL_NCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socfpga_fpga_priv*)* @socfpga_fpga_cfg_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_cfg_mode_set(%struct.socfpga_fpga_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socfpga_fpga_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.socfpga_fpga_priv* %0, %struct.socfpga_fpga_priv** %3, align 8
  %6 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %7 = call i32 @socfpga_fpga_cfg_mode_get(%struct.socfpga_fpga_priv* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %14 = load i32, i32* @SOCFPGA_FPGMGR_CTL_OFST, align 4
  %15 = call i32 @socfpga_fpga_readl(%struct.socfpga_fpga_priv* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @SOCFPGA_FPGMGR_CTL_CDRATIO_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @SOCFPGA_FPGMGR_CTL_CFGWDTH_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfgmgr_modes, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @SOCFPGA_FPGMGR_CTL_NCE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %37 = load i32, i32* @SOCFPGA_FPGMGR_CTL_OFST, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %36, i32 %37, i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %12, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @socfpga_fpga_cfg_mode_get(%struct.socfpga_fpga_priv*) #1

declare dso_local i32 @socfpga_fpga_readl(%struct.socfpga_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
