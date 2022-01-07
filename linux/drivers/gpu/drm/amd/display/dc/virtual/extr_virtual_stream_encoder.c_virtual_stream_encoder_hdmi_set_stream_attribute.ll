; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/virtual/extr_virtual_stream_encoder.c_virtual_stream_encoder_hdmi_set_stream_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/virtual/extr_virtual_stream_encoder.c_virtual_stream_encoder_hdmi_set_stream_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_crtc_timing = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, %struct.dc_crtc_timing*, i32, i32)* @virtual_stream_encoder_hdmi_set_stream_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtual_stream_encoder_hdmi_set_stream_attribute(%struct.stream_encoder* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stream_encoder*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
