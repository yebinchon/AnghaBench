; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_is_stream_unchanged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_is_stream_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32, %struct.dc_stream_state** }
%struct.dc_stream_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_is_stream_unchanged(%struct.dc_state* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %11 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %16 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %15, i32 0, i32 1
  %17 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %17, i64 %19
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %20, align 8
  store %struct.dc_stream_state* %21, %struct.dc_stream_state** %7, align 8
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %23 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %24 = call i64 @are_stream_backends_same(%struct.dc_stream_state* %22, %struct.dc_stream_state* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %32

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %8

31:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @are_stream_backends_same(%struct.dc_stream_state*, %struct.dc_stream_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
