; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_are_stream_backends_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_are_stream_backends_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_stream_state*, %struct.dc_stream_state*)* @are_stream_backends_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_stream_backends_same(%struct.dc_stream_state* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  %6 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %7 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %8 = icmp eq %struct.dc_stream_state* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

10:                                               ; preds = %2
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %12 = icmp eq %struct.dc_stream_state* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %15 = icmp eq %struct.dc_stream_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %13
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %20 = call i64 @is_timing_changed(%struct.dc_stream_state* %18, %struct.dc_stream_state* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %45

23:                                               ; preds = %17
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %25 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %26 = call i64 @is_hdr_static_meta_changed(%struct.dc_stream_state* %24, %struct.dc_stream_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %31 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %34 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %45

38:                                               ; preds = %29
  %39 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %40 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %41 = call i64 @is_vsc_info_packet_changed(%struct.dc_stream_state* %39, %struct.dc_stream_state* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %37, %28, %22, %16, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @is_timing_changed(%struct.dc_stream_state*, %struct.dc_stream_state*) #1

declare dso_local i64 @is_hdr_static_meta_changed(%struct.dc_stream_state*, %struct.dc_stream_state*) #1

declare dso_local i64 @is_vsc_info_packet_changed(%struct.dc_stream_state*, %struct.dc_stream_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
