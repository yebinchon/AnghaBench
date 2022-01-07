; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_get_bitmask_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_get_bitmask_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_ctl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CTL_FLUSH_MASK_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_ctl*, i32)* @dpu_hw_ctl_get_bitmask_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_ctl_get_bitmask_mixer(%struct.dpu_hw_ctl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_ctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dpu_hw_ctl* %0, %struct.dpu_hw_ctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %20 [
    i32 133, label %8
    i32 132, label %10
    i32 131, label %12
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

8:                                                ; preds = %2
  %9 = call i32 @BIT(i32 6)
  store i32 %9, i32* %6, align 4
  br label %23

10:                                               ; preds = %2
  %11 = call i32 @BIT(i32 7)
  store i32 %11, i32* %6, align 4
  br label %23

12:                                               ; preds = %2
  %13 = call i32 @BIT(i32 8)
  store i32 %13, i32* %6, align 4
  br label %23

14:                                               ; preds = %2
  %15 = call i32 @BIT(i32 9)
  store i32 %15, i32* %6, align 4
  br label %23

16:                                               ; preds = %2
  %17 = call i32 @BIT(i32 10)
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %2
  %19 = call i32 @BIT(i32 20)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %18, %16, %14, %12, %10, %8
  %24 = load i32, i32* @CTL_FLUSH_MASK_CTL, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
