; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_dclk_set_and_wait_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_dclk_set_and_wait_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socfpga_fpga_priv = type { i32 }

@SOCFPGA_FPGMGR_DCLKSTAT_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_DCLKCNT_OFST = common dso_local global i32 0, align 4
@SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socfpga_fpga_priv*, i64)* @socfpga_fpga_dclk_set_and_wait_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_dclk_set_and_wait_clear(%struct.socfpga_fpga_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socfpga_fpga_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.socfpga_fpga_priv* %0, %struct.socfpga_fpga_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 2, i32* %6, align 4
  %8 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %9 = load i32, i32* @SOCFPGA_FPGMGR_DCLKSTAT_OFST, align 4
  %10 = call i64 @socfpga_fpga_readl(%struct.socfpga_fpga_priv* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %14 = call i32 @socfpga_fpga_clear_done_status(%struct.socfpga_fpga_priv* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %17 = load i32, i32* @SOCFPGA_FPGMGR_DCLKCNT_OFST, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv* %16, i32 %17, i64 %18)
  br label %20

20:                                               ; preds = %32, %15
  %21 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %22 = load i32, i32* @SOCFPGA_FPGMGR_DCLKSTAT_OFST, align 4
  %23 = call i64 @socfpga_fpga_readl(%struct.socfpga_fpga_priv* %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SOCFPGA_FPGMGR_DCLKSTAT_DCNTDONE_E_DONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %4, align 8
  %29 = call i32 @socfpga_fpga_clear_done_status(%struct.socfpga_fpga_priv* %28)
  store i32 0, i32* %3, align 4
  br label %39

30:                                               ; preds = %20
  %31 = call i32 @udelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %20, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @socfpga_fpga_readl(%struct.socfpga_fpga_priv*, i32) #1

declare dso_local i32 @socfpga_fpga_clear_done_status(%struct.socfpga_fpga_priv*) #1

declare dso_local i32 @socfpga_fpga_writel(%struct.socfpga_fpga_priv*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
