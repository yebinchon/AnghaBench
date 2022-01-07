; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_audio_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_audio_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32, i32, i32, i32 }
%struct.hdmi_audio_param = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"hdmi audio is in disable state!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"codec:%d, input:%d, channel:%d, fs:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, %struct.hdmi_audio_param*)* @mtk_hdmi_audio_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_audio_set_param(%struct.mtk_hdmi* %0, %struct.hdmi_audio_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca %struct.hdmi_audio_param*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store %struct.hdmi_audio_param* %1, %struct.hdmi_audio_param** %5, align 8
  %6 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %7 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %5, align 8
  %25 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %5, align 8
  %31 = getelementptr inbounds %struct.hdmi_audio_param, %struct.hdmi_audio_param* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %33)
  %35 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %35, i32 0, i32 1
  %37 = load %struct.hdmi_audio_param*, %struct.hdmi_audio_param** %5, align 8
  %38 = call i32 @memcpy(i32* %36, %struct.hdmi_audio_param* %37, i32 16)
  %39 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %40 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %40, i32 0, i32 0
  %42 = call i32 @mtk_hdmi_aud_output_config(%struct.mtk_hdmi* %39, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %17, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hdmi_audio_param*, i32) #1

declare dso_local i32 @mtk_hdmi_aud_output_config(%struct.mtk_hdmi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
