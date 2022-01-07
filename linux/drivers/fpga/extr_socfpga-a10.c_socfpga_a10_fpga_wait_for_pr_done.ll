; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_wait_for_pr_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga-a10.c_socfpga_a10_fpga_wait_for_pr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10_fpga_priv = type { i32 }

@A10_FPGAMGR_IMGCFG_STAT_F2S_PR_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A10_FPGAMGR_IMGCFG_STAT_F2S_PR_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10_fpga_priv*)* @socfpga_a10_fpga_wait_for_pr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_a10_fpga_wait_for_pr_done(%struct.a10_fpga_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a10_fpga_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.a10_fpga_priv* %0, %struct.a10_fpga_priv** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.a10_fpga_priv*, %struct.a10_fpga_priv** %3, align 8
  %11 = call i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_PR_ERROR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @A10_FPGAMGR_IMGCFG_STAT_F2S_PR_DONE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %32

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %24, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @socfpga_a10_fpga_read_stat(%struct.a10_fpga_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
