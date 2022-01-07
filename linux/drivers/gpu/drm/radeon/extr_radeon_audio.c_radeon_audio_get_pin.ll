; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_get_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_get_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r600_audio_pin = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.r600_audio_pin* (%struct.radeon_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.r600_audio_pin* @radeon_audio_get_pin(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.r600_audio_pin*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  store %struct.radeon_device* %10, %struct.radeon_device** %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %11)
  store %struct.radeon_encoder* %12, %struct.radeon_encoder** %5, align 8
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.r600_audio_pin* (%struct.radeon_device*)*, %struct.r600_audio_pin* (%struct.radeon_device*)** %21, align 8
  %23 = icmp ne %struct.r600_audio_pin* (%struct.radeon_device*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.r600_audio_pin* (%struct.radeon_device*)*, %struct.r600_audio_pin* (%struct.radeon_device*)** %28, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = call %struct.r600_audio_pin* %29(%struct.radeon_device* %30)
  store %struct.r600_audio_pin* %31, %struct.r600_audio_pin** %2, align 8
  br label %33

32:                                               ; preds = %17, %1
  store %struct.r600_audio_pin* null, %struct.r600_audio_pin** %2, align 8
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.r600_audio_pin*, %struct.r600_audio_pin** %2, align 8
  ret %struct.r600_audio_pin* %34
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
