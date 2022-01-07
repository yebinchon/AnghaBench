; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_calc_nominal_field_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_calc_nominal_field_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mod_freesync_calc_nominal_field_rate(%struct.dc_stream_state* %0) #0 {
  %2 = alloca %struct.dc_stream_state*, align 8
  %3 = alloca i64, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.dc_stream_state*, %struct.dc_stream_state** %2, align 8
  %5 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 10
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = mul i64 %10, 1000000000
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %2, align 8
  %14 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @div_u64(i64 %12, i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %2, align 8
  %20 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @div_u64(i64 %18, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
