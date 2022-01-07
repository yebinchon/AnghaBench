; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_decide_signal_from_strap_and_dongle_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_decide_signal_from_strap_and_dongle_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_support = type { i32, i32 }

@SIGNAL_TYPE_NONE = common dso_local global i32 0, align 4
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_SINGLE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.audio_support*)* @decide_signal_from_strap_and_dongle_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_signal_from_strap_and_dongle_type(i32 %0, %struct.audio_support* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audio_support*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.audio_support* %1, %struct.audio_support** %4, align 8
  %6 = load i32, i32* @SIGNAL_TYPE_NONE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %30 [
    i32 129, label %8
    i32 130, label %18
    i32 128, label %20
  ]

8:                                                ; preds = %2
  %9 = load %struct.audio_support*, %struct.audio_support** %4, align 8
  %10 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  store i32 %14, i32* %5, align 4
  br label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %13
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  store i32 %19, i32* %5, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.audio_support*, %struct.audio_support** %4, align 8
  %22 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @SIGNAL_TYPE_NONE, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %29, %18, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
