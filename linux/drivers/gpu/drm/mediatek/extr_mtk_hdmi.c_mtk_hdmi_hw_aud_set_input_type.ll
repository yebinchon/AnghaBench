; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_input_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_input_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@GRL_CFG1 = common dso_local global i32 0, align 4
@HDMI_AUD_INPUT_I2S = common dso_local global i32 0, align 4
@CFG1_SPDIF = common dso_local global i32 0, align 4
@HDMI_AUD_INPUT_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32)* @mtk_hdmi_hw_aud_set_input_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_aud_set_input_type(%struct.mtk_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %7 = load i32, i32* @GRL_CFG1, align 4
  %8 = call i32 @mtk_hdmi_read(%struct.mtk_hdmi* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HDMI_AUD_INPUT_I2S, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CFG1_SPDIF, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CFG1_SPDIF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* @CFG1_SPDIF, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %37

23:                                               ; preds = %12, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @HDMI_AUD_INPUT_SPDIF, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CFG1_SPDIF, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @CFG1_SPDIF, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %27, %23
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %39 = load i32, i32* @GRL_CFG1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @mtk_hdmi_read(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_write(%struct.mtk_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
