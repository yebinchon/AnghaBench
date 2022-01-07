; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_audio_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_audio_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDMI_AUI_CON = common dso_local global i32 0, align 4
@HDMI_AVI_CON_EVERY_VSYNC = common dso_local global i32 0, align 4
@HDMI_AUI_CON_NO_TRAN = common dso_local global i32 0, align 4
@HDMI_CON_0 = common dso_local global i32 0, align 4
@HDMI_ASP_EN = common dso_local global i32 0, align 4
@HDMI_ASP_DIS = common dso_local global i32 0, align 4
@HDMI_ASP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmi_audio_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_audio_control(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  %3 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %4 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %5 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %18 = load i32, i32* @HDMI_AUI_CON, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @HDMI_AVI_CON_EVERY_VSYNC, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @HDMI_AUI_CON_NO_TRAN, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %17, i32 %18, i32 %26)
  %28 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %29 = load i32, i32* @HDMI_CON_0, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @HDMI_ASP_EN, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @HDMI_ASP_DIS, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* @HDMI_ASP_MASK, align 4
  %39 = call i32 @hdmi_reg_writemask(%struct.hdmi_context* %28, i32 %29, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @hdmi_reg_writeb(%struct.hdmi_context*, i32, i32) #1

declare dso_local i32 @hdmi_reg_writemask(%struct.hdmi_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
