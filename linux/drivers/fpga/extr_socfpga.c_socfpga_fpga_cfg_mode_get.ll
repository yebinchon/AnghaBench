; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_cfg_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_cfg_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.socfpga_fpga_priv = type { i32 }

@SOCFPGA_FPGMGR_STAT_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_STAT_MSEL_MASK = common dso_local global i64 0, align 8
@SOCFPGA_FPGMGR_STAT_MSEL_SHIFT = common dso_local global i64 0, align 8
@cfgmgr_modes = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socfpga_fpga_priv*)* @socfpga_fpga_cfg_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_cfg_mode_get(%struct.socfpga_fpga_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socfpga_fpga_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.socfpga_fpga_priv* %0, %struct.socfpga_fpga_priv** %3, align 8
  %5 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %3, align 8
  %6 = load i32, i32* @SOCFPGA_FPGMGR_STAT_OFST, align 4
  %7 = call i64 @socfpga_fpga_readl(%struct.socfpga_fpga_priv* %5, i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @SOCFPGA_FPGMGR_STAT_MSEL_MASK, align 8
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @SOCFPGA_FPGMGR_STAT_MSEL_SHIFT, align 8
  %12 = load i64, i64* %4, align 8
  %13 = lshr i64 %12, %11
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfgmgr_modes, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfgmgr_modes, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @socfpga_fpga_readl(%struct.socfpga_fpga_priv*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
