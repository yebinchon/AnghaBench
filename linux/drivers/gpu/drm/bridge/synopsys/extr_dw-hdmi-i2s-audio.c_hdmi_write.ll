; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-i2s-audio.c_hdmi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-i2s-audio.c_hdmi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi_i2s_audio_data = type { i32 (%struct.dw_hdmi*, i32, i32)*, %struct.dw_hdmi.0* }
%struct.dw_hdmi = type opaque
%struct.dw_hdmi.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi_i2s_audio_data*, i32, i32)* @hdmi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_write(%struct.dw_hdmi_i2s_audio_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_hdmi_i2s_audio_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dw_hdmi.0*, align 8
  store %struct.dw_hdmi_i2s_audio_data* %0, %struct.dw_hdmi_i2s_audio_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dw_hdmi_i2s_audio_data*, %struct.dw_hdmi_i2s_audio_data** %4, align 8
  %9 = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, %struct.dw_hdmi_i2s_audio_data* %8, i32 0, i32 1
  %10 = load %struct.dw_hdmi.0*, %struct.dw_hdmi.0** %9, align 8
  store %struct.dw_hdmi.0* %10, %struct.dw_hdmi.0** %7, align 8
  %11 = load %struct.dw_hdmi_i2s_audio_data*, %struct.dw_hdmi_i2s_audio_data** %4, align 8
  %12 = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, %struct.dw_hdmi_i2s_audio_data* %11, i32 0, i32 0
  %13 = load i32 (%struct.dw_hdmi*, i32, i32)*, i32 (%struct.dw_hdmi*, i32, i32)** %12, align 8
  %14 = load %struct.dw_hdmi.0*, %struct.dw_hdmi.0** %7, align 8
  %15 = bitcast %struct.dw_hdmi.0* %14 to %struct.dw_hdmi*
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %13(%struct.dw_hdmi* %15, i32 %16, i32 %17)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
