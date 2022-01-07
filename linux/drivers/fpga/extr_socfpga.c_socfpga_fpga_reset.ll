; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.socfpga_fpga_priv* }
%struct.socfpga_fpga_priv = type { i32 }

@SOCFPGA_FPGMGR_CTL_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_CTL_EN = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_CTL_NCFGPULL = common dso_local global i64 0, align 8
@SOCFPGA_FPGMGR_STAT_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*)* @socfpga_fpga_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_reset(%struct.fpga_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca %struct.socfpga_fpga_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  %8 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %9 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %8, i32 0, i32 0
  %10 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %9, align 8
  store %struct.socfpga_fpga_priv* %10, %struct.socfpga_fpga_priv** %4, align 8
  %11 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %12 = call i32 @socfpga_fpga_cfg_mode_set(%struct.socfpga_fpga_priv* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %19 = load i32, i32* @SOCFPGA_FPGMGR_CTL_OFST, align 4
  %20 = load i32, i32* @SOCFPGA_FPGMGR_CTL_EN, align 4
  %21 = call i32 @socfpga_fpga_set_bitsl(%struct.socfpga_fpga_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %23 = load i32, i32* @SOCFPGA_FPGMGR_CTL_OFST, align 4
  %24 = call i64 @socfpga_fpga_readl(%struct.socfpga_fpga_priv* %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* @SOCFPGA_FPGMGR_CTL_NCFGPULL, align 8
  %26 = load i64, i64* %5, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %29 = load i32, i32* @SOCFPGA_FPGMGR_CTL_OFST, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %28, i32 %29, i64 %30)
  %32 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %33 = load i32, i32* @SOCFPGA_FPGMGR_STAT_RESET, align 4
  %34 = call i64 @socfpga_fpga_wait_for_state(%struct.socfpga_fpga_priv* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* @SOCFPGA_FPGMGR_CTL_NCFGPULL, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %5, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %40 = load i32, i32* @SOCFPGA_FPGMGR_CTL_OFST, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %39, i32 %40, i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %17
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %45, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @socfpga_fpga_cfg_mode_set(%struct.socfpga_fpga_priv*) #1

declare dso_local i32 @socfpga_fpga_set_bitsl(%struct.socfpga_fpga_priv*, i32, i32) #1

declare dso_local i64 @socfpga_fpga_readl(%struct.socfpga_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv*, i32, i64) #1

declare dso_local i64 @socfpga_fpga_wait_for_state(%struct.socfpga_fpga_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
