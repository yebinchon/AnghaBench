; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_reset_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_reset_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_ctl = type { i32, %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"issuing hw ctl reset for ctl:%d\0A\00", align 1
@CTL_SW_RESET = common dso_local global i32 0, align 4
@DPU_REG_RESET_TIMEOUT_US = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_ctl*)* @dpu_hw_ctl_reset_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_ctl_reset_control(%struct.dpu_hw_ctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_hw_ctl*, align 8
  %4 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  store %struct.dpu_hw_ctl* %0, %struct.dpu_hw_ctl** %3, align 8
  %5 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %6 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %5, i32 0, i32 1
  store %struct.dpu_hw_blk_reg_map* %6, %struct.dpu_hw_blk_reg_map** %4, align 8
  %7 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %8 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %12 = load i32, i32* @CTL_SW_RESET, align 4
  %13 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %11, i32 %12, i32 1)
  %14 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %15 = load i32, i32* @DPU_REG_RESET_TIMEOUT_US, align 4
  %16 = call i64 @dpu_hw_ctl_poll_reset_status(%struct.dpu_hw_ctl* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

declare dso_local i64 @dpu_hw_ctl_poll_reset_status(%struct.dpu_hw_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
