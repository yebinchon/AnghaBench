; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_poll_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_poll_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@CTL_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_ctl*, i32)* @dpu_hw_ctl_poll_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_ctl_poll_reset_status(%struct.dpu_hw_ctl* %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_hw_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpu_hw_ctl* %0, %struct.dpu_hw_ctl** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %9 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %8, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %9, %struct.dpu_hw_blk_reg_map** %5, align 8
  %10 = call i32 (...) @ktime_get()
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ktime_add_us(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %32, %2
  %14 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %15 = load i32, i32* @CTL_SW_RESET, align 4
  %16 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @usleep_range(i32 20, i32 50)
  br label %23

23:                                               ; preds = %21, %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = call i32 (...) @ktime_get()
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @ktime_compare_safe(i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %13, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @ktime_compare_safe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
