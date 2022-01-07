; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_aud_set_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_aud_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@GRL_CFG2 = common dso_local global i32 0, align 4
@CFG2_ACLK_INV = common dso_local global i32 0, align 4
@HDMI_AUD_INPUT_I2S = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HDMI_AUD_MCLK_128FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, %struct.drm_display_mode*)* @mtk_hdmi_aud_set_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_aud_set_src(%struct.mtk_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %13 = call i32 @mtk_hdmi_aud_on_off_hw_ncts(%struct.mtk_hdmi* %12, i32 0)
  %14 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %15 = call i32 @mtk_hdmi_hw_aud_src_disable(%struct.mtk_hdmi* %14)
  %16 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %17 = load i32, i32* @GRL_CFG2, align 4
  %18 = load i32, i32* @CFG2_ACLK_INV, align 4
  %19 = call i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi* %16, i32 %17, i32 %18)
  %20 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HDMI_AUD_INPUT_I2S, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %29 [
    i32 32000, label %28
    i32 44100, label %28
    i32 48000, label %28
    i32 88200, label %28
    i32 96000, label %28
  ]

28:                                               ; preds = %26, %26, %26, %26, %26
  br label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %28
  %33 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %34 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mtk_hdmi_hw_aud_set_mclk(%struct.mtk_hdmi* %33, i32 %37)
  br label %49

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %42 [
    i32 32000, label %41
    i32 44100, label %41
    i32 48000, label %41
  ]

41:                                               ; preds = %39, %39, %39
  br label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %41
  %46 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %47 = load i32, i32* @HDMI_AUD_MCLK_128FS, align 4
  %48 = call i32 @mtk_hdmi_hw_aud_set_mclk(%struct.mtk_hdmi* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %32
  %50 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mtk_hdmi_hw_aud_set_ncts(%struct.mtk_hdmi* %50, i32 %51, i32 %54)
  %56 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %57 = call i32 @mtk_hdmi_hw_aud_src_reenable(%struct.mtk_hdmi* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %42, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mtk_hdmi_aud_on_off_hw_ncts(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_src_disable(%struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_set_mclk(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_set_ncts(%struct.mtk_hdmi*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_src_reenable(%struct.mtk_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
