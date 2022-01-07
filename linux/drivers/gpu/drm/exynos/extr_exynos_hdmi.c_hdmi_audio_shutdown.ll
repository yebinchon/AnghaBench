; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_audio_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_audio_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_context = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @hdmi_audio_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_audio_shutdown(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hdmi_context*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.hdmi_context* @dev_get_drvdata(%struct.device* %6)
  store %struct.hdmi_context* %7, %struct.hdmi_context** %5, align 8
  %8 = load %struct.hdmi_context*, %struct.hdmi_context** %5, align 8
  %9 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.hdmi_context*, %struct.hdmi_context** %5, align 8
  %12 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.hdmi_context*, %struct.hdmi_context** %5, align 8
  %15 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.hdmi_context*, %struct.hdmi_context** %5, align 8
  %20 = call i32 @hdmi_audio_control(%struct.hdmi_context* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.hdmi_context*, %struct.hdmi_context** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  ret void
}

declare dso_local %struct.hdmi_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_audio_control(%struct.hdmi_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
