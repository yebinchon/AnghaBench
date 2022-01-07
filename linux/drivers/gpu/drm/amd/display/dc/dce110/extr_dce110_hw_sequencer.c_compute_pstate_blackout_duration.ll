; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_compute_pstate_blackout_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_compute_pstate_blackout_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bw_fixed = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.dc_stream_state*)* @compute_pstate_blackout_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_pstate_blackout_duration(i32 %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.bw_fixed, align 4
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %4, align 8
  %8 = getelementptr inbounds %struct.bw_fixed, %struct.bw_fixed* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 1000, %9
  %11 = ashr i32 %10, 24
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %14 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 10
  %18 = sext i32 %17 to i64
  %19 = mul i64 1000000, %18
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %21 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %19, %23
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
