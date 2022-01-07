; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_get_bitmask_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_ctl.c_dpu_hw_ctl_get_bitmask_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_ctl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_ctl*, i32*, i32)* @dpu_hw_ctl_get_bitmask_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_ctl_get_bitmask_intf(%struct.dpu_hw_ctl* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_hw_ctl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.dpu_hw_ctl* %0, %struct.dpu_hw_ctl** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 131, label %9
    i32 130, label %14
    i32 129, label %19
    i32 128, label %24
  ]

9:                                                ; preds = %3
  %10 = call i32 @BIT(i32 31)
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  br label %32

14:                                               ; preds = %3
  %15 = call i32 @BIT(i32 30)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  br label %32

19:                                               ; preds = %3
  %20 = call i32 @BIT(i32 29)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %32

24:                                               ; preds = %3
  %25 = call i32 @BIT(i32 28)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %24, %19, %14, %9
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
