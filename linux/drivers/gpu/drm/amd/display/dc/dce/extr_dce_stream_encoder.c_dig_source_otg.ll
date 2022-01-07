; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dig_source_otg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_stream_encoder.c_dig_source_otg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dce110_stream_encoder = type { i32 }

@DIG_FE_CNTL = common dso_local global i32 0, align 4
@DIG_SOURCE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream_encoder*)* @dig_source_otg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dig_source_otg(%struct.stream_encoder* %0) #0 {
  %2 = alloca %struct.stream_encoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce110_stream_encoder*, align 8
  store %struct.stream_encoder* %0, %struct.stream_encoder** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.stream_encoder*, %struct.stream_encoder** %2, align 8
  %6 = call %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder* %5)
  store %struct.dce110_stream_encoder* %6, %struct.dce110_stream_encoder** %4, align 8
  %7 = load i32, i32* @DIG_FE_CNTL, align 4
  %8 = load i32, i32* @DIG_SOURCE_SELECT, align 4
  %9 = call i32 @REG_GET(i32 %7, i32 %8, i32* %3)
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local %struct.dce110_stream_encoder* @DCE110STRENC_FROM_STRENC(%struct.stream_encoder*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
