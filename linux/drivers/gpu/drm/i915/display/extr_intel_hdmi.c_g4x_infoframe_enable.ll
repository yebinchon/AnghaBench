; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_g4x_infoframe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_g4x_infoframe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEO_DIP_ENABLE_GCP = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GAMUT = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_SPD = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g4x_infoframe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_infoframe_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 128, label %5
    i32 129, label %7
    i32 134, label %9
    i32 133, label %10
    i32 131, label %12
    i32 130, label %14
    i32 132, label %16
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  store i32 %6, i32* %2, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  store i32 %8, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @MISSING_CASE(i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %16, %14, %12, %10, %9, %7, %5
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
