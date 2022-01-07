; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_audio.c_msm_hdmi_audio_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_audio.c_msm_hdmi_audio_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { %struct.hdmi_audio }
%struct.hdmi_audio = type { i32 }

@MSM_HDMI_SAMPLE_RATE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_audio_set_sample_rate(%struct.hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_audio*, align 8
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %7 = icmp ne %struct.hdmi* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %25

9:                                                ; preds = %2
  %10 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %10, i32 0, i32 0
  store %struct.hdmi_audio* %11, %struct.hdmi_audio** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MSM_HDMI_SAMPLE_RATE_MAX, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9
  br label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.hdmi_audio*, %struct.hdmi_audio** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_audio, %struct.hdmi_audio* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %24 = call i32 @msm_hdmi_audio_update(%struct.hdmi* %23)
  br label %25

25:                                               ; preds = %19, %18, %8
  ret void
}

declare dso_local i32 @msm_hdmi_audio_update(%struct.hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
