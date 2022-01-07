; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_audio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_audio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.r600_audio_pin = type { i32 }

@AZ_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL = common dso_local global i32 0, align 4
@AUDIO_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce6_audio_enable(%struct.radeon_device* %0, %struct.r600_audio_pin* %1, i64 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.r600_audio_pin*, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.r600_audio_pin* %1, %struct.r600_audio_pin** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.r600_audio_pin*, %struct.r600_audio_pin** %5, align 8
  %8 = icmp ne %struct.r600_audio_pin* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %23

10:                                               ; preds = %3
  %11 = load %struct.r600_audio_pin*, %struct.r600_audio_pin** %5, align 8
  %12 = getelementptr inbounds %struct.r600_audio_pin, %struct.r600_audio_pin* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AZ_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @AUDIO_ENABLED, align 4
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = call i32 @WREG32_ENDPOINT(i32 %13, i32 %14, i32 %21)
  br label %23

23:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @WREG32_ENDPOINT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
