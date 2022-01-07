; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_audio.c_msm_hdmi_audio_info_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_audio.c_msm_hdmi_audio_info_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { %struct.hdmi_audio }
%struct.hdmi_audio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@nchannels = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_hdmi_audio_info_setup(%struct.hdmi* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hdmi_audio*, align 8
  store %struct.hdmi* %0, %struct.hdmi** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %16 = icmp ne %struct.hdmi* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %55

20:                                               ; preds = %6
  %21 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %22 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %21, i32 0, i32 0
  store %struct.hdmi_audio* %22, %struct.hdmi_audio** %14, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32*, i32** @nchannels, align 8
  %25 = call i64 @ARRAY_SIZE(i32* %24)
  %26 = icmp uge i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %55

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.hdmi_audio*, %struct.hdmi_audio** %14, align 8
  %33 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** @nchannels, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hdmi_audio*, %struct.hdmi_audio** %14, align 8
  %39 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.hdmi_audio*, %struct.hdmi_audio** %14, align 8
  %43 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.hdmi_audio*, %struct.hdmi_audio** %14, align 8
  %47 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.hdmi_audio*, %struct.hdmi_audio** %14, align 8
  %51 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %54 = call i32 @msm_hdmi_audio_update(%struct.hdmi* %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %30, %27, %17
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @msm_hdmi_audio_update(%struct.hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
