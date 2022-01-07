; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_hdmi_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_hdmi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @radeon_audio_hdmi_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_audio_hdmi_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %8)
  store %struct.radeon_encoder* %9, %struct.radeon_encoder** %5, align 8
  %10 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %10, i32 0, i32 0
  %12 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %11, align 8
  store %struct.radeon_encoder_atom_dig* %12, %struct.radeon_encoder_atom_dig** %6, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %13)
  store %struct.drm_connector* %14, %struct.drm_connector** %7, align 8
  %15 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %16 = icmp ne %struct.radeon_encoder_atom_dig* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  br label %77

23:                                               ; preds = %17
  %24 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %25 = icmp ne %struct.drm_connector* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %77

27:                                               ; preds = %23
  %28 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %29 = call i32 @radeon_connector_edid(%struct.drm_connector* %28)
  %30 = call i64 @drm_detect_monitor_audio(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %34 = call i32 @radeon_audio_set_mute(%struct.drm_encoder* %33, i32 1)
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %36 = call i32 @radeon_audio_write_speaker_allocation(%struct.drm_encoder* %35)
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %38 = call i32 @radeon_audio_write_sad_regs(%struct.drm_encoder* %37)
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %41 = call i32 @radeon_audio_write_latency_fields(%struct.drm_encoder* %39, %struct.drm_display_mode* %40)
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @radeon_audio_set_dto(%struct.drm_encoder* %42, i32 %45)
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %48 = call i32 @radeon_audio_set_vbi_packet(%struct.drm_encoder* %47)
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %50 = call i32 @radeon_hdmi_set_color_depth(%struct.drm_encoder* %49)
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @radeon_audio_update_acr(%struct.drm_encoder* %51, i32 %54)
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %57 = call i32 @radeon_audio_set_audio_packet(%struct.drm_encoder* %56)
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %59 = call i32 @radeon_audio_select_pin(%struct.drm_encoder* %58)
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %62 = call i64 @radeon_audio_set_avi_packet(%struct.drm_encoder* %60, %struct.drm_display_mode* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %32
  br label %77

65:                                               ; preds = %32
  %66 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %67 = call i32 @radeon_audio_set_mute(%struct.drm_encoder* %66, i32 0)
  br label %77

68:                                               ; preds = %27
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %70 = call i32 @radeon_hdmi_set_color_depth(%struct.drm_encoder* %69)
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = call i64 @radeon_audio_set_avi_packet(%struct.drm_encoder* %71, %struct.drm_display_mode* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %22, %26, %64, %75, %76, %65
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @drm_detect_monitor_audio(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32 @radeon_audio_set_mute(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_audio_write_speaker_allocation(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_write_sad_regs(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_write_latency_fields(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_audio_set_dto(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_audio_set_vbi_packet(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_hdmi_set_color_depth(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_update_acr(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_audio_set_audio_packet(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_select_pin(%struct.drm_encoder*) #1

declare dso_local i64 @radeon_audio_set_avi_packet(%struct.drm_encoder*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
