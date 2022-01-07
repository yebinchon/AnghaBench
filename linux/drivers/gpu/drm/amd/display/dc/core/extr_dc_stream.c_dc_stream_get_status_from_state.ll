; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_get_status_from_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_stream_get_status_from_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_status = type { i32 }
%struct.dc_state = type { i64, %struct.dc_stream_status*, %struct.dc_stream_state** }
%struct.dc_stream_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_stream_status* @dc_stream_get_status_from_state(%struct.dc_state* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca %struct.dc_stream_status*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca i64, align 8
  store %struct.dc_state* %0, %struct.dc_state** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %10 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %15 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %16 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %15, i32 0, i32 2
  %17 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %17, i64 %18
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %19, align 8
  %21 = icmp eq %struct.dc_stream_state* %14, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %24 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %23, i32 0, i32 1
  %25 = load %struct.dc_stream_status*, %struct.dc_stream_status** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %25, i64 %26
  store %struct.dc_stream_status* %27, %struct.dc_stream_status** %3, align 8
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %7

32:                                               ; preds = %7
  store %struct.dc_stream_status* null, %struct.dc_stream_status** %3, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.dc_stream_status*, %struct.dc_stream_status** %3, align 8
  ret %struct.dc_stream_status* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
