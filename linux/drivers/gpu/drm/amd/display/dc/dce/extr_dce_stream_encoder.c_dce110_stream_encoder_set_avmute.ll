; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_set_avmute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dce110_stream_encoder_set_avmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dce110_stream_encoder = type { i32 }

@HDMI_GC = common dso_local global i32 0, align 4
@HDMI_GC_AVMUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_encoder*, i32)* @dce110_stream_encoder_set_avmute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_stream_encoder_set_avmute(%struct.stream_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce110_stream_encoder*, align 8
  %6 = alloca i32, align 4
  store %struct.stream_encoder* %0, %struct.stream_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  %8 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %7)
  store %struct.dce110_stream_encoder* %8, %struct.dce110_stream_encoder** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @HDMI_GC, align 4
  %14 = load i32, i32* @HDMI_GC_AVMUTE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
