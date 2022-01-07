; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_dp_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_dp_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @radeon_audio_dp_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_audio_dp_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %7, align 8
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 0
  %20 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %19, align 8
  store %struct.radeon_encoder_atom_dig* %20, %struct.radeon_encoder_atom_dig** %8, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %22 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %21)
  store %struct.drm_connector* %22, %struct.drm_connector** %9, align 8
  %23 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %24 = icmp ne %struct.radeon_encoder_atom_dig* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %2
  br label %65

31:                                               ; preds = %25
  %32 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %33 = icmp ne %struct.drm_connector* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %65

35:                                               ; preds = %31
  %36 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %37 = call i32 @radeon_connector_edid(%struct.drm_connector* %36)
  %38 = call i64 @drm_detect_monitor_audio(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %42 = call i32 @radeon_audio_write_speaker_allocation(%struct.drm_encoder* %41)
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %44 = call i32 @radeon_audio_write_sad_regs(%struct.drm_encoder* %43)
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = call i32 @radeon_audio_write_latency_fields(%struct.drm_encoder* %45, %struct.drm_display_mode* %46)
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 10
  %54 = call i32 @radeon_audio_set_dto(%struct.drm_encoder* %48, i32 %53)
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %56 = call i32 @radeon_audio_set_audio_packet(%struct.drm_encoder* %55)
  %57 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %58 = call i32 @radeon_audio_select_pin(%struct.drm_encoder* %57)
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %61 = call i64 @radeon_audio_set_avi_packet(%struct.drm_encoder* %59, %struct.drm_display_mode* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  br label %65

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %30, %34, %63, %64, %35
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @drm_detect_monitor_audio(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32 @radeon_audio_write_speaker_allocation(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_write_sad_regs(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_write_latency_fields(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_audio_set_dto(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_audio_set_audio_packet(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_select_pin(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_audio_set_avi_packet(%struct.drm_encoder*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
