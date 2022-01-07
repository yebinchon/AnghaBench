; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_is_stream_scaling_unchanged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_is_stream_scaling_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_is_stream_scaling_unchanged(%struct.dc_stream_state* %0, %struct.dc_stream_state* %1) #0 {
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
  br label %34

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
  br label %34

17:                                               ; preds = %13
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %19 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %18, i32 0, i32 1
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %21 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %20, i32 0, i32 1
  %22 = call i64 @memcmp(i32* %19, i32* %21, i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 0
  %28 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %29 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %28, i32 0, i32 0
  %30 = call i64 @memcmp(i32* %27, i32* %29, i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %24, %16, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
