; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_audio_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %6)
  store %struct.radeon_encoder* %7, %struct.radeon_encoder** %5, align 8
  %8 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %9 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.drm_encoder*, %struct.drm_display_mode*)*, i32 (%struct.drm_encoder*, %struct.drm_display_mode*)** %16, align 8
  %18 = icmp ne i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.drm_encoder*, %struct.drm_display_mode*)*, i32 (%struct.drm_encoder*, %struct.drm_display_mode*)** %23, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %27 = call i32 %24(%struct.drm_encoder* %25, %struct.drm_display_mode* %26)
  br label %28

28:                                               ; preds = %19, %12, %2
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
