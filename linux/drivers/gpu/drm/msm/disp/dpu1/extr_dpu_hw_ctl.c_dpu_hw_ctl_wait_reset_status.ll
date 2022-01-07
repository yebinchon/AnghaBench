; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_wait_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_wait_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_ctl = type { i32, %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@CTL_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hw ctl reset is set for ctl:%d\0A\00", align 1
@DPU_REG_RESET_TIMEOUT_US = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"hw recovery is not complete for ctl:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_ctl*)* @dpu_hw_ctl_wait_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_ctl_wait_reset_status(%struct.dpu_hw_ctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_hw_ctl*, align 8
  %4 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %5 = alloca i32, align 4
  store %struct.dpu_hw_ctl* %0, %struct.dpu_hw_ctl** %3, align 8
  %6 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %6, i32 0, i32 1
  store %struct.dpu_hw_blk_reg_map* %7, %struct.dpu_hw_blk_reg_map** %4, align 8
  %8 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %9 = load i32, i32* @CTL_SW_RESET, align 4
  %10 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %22 = load i32, i32* @DPU_REG_RESET_TIMEOUT_US, align 4
  %23 = call i64 @dpu_hw_ctl_poll_reset_status(%struct.dpu_hw_ctl* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %27 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %25, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @dpu_hw_ctl_poll_reset_status(%struct.dpu_hw_ctl*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
