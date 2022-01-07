; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_copy_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_stream.c_dc_copy_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_stream_state* @dc_copy_stream(%struct.dc_stream_state* %0) #0 {
  %2 = alloca %struct.dc_stream_state*, align 8
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  %5 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.dc_stream_state* @kmemdup(%struct.dc_stream_state* %5, i32 40, i32 %6)
  store %struct.dc_stream_state* %7, %struct.dc_stream_state** %4, align 8
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %9 = icmp ne %struct.dc_stream_state* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.dc_stream_state* null, %struct.dc_stream_state** %2, align 8
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %13 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dc_sink_retain(i64 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %23 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %28 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dc_transfer_func_retain(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %33 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %38 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %40 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %46 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %45, i32 0, i32 0
  %47 = call i32 @kref_init(i32* %46)
  %48 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  store %struct.dc_stream_state* %48, %struct.dc_stream_state** %2, align 8
  br label %49

49:                                               ; preds = %31, %10
  %50 = load %struct.dc_stream_state*, %struct.dc_stream_state** %2, align 8
  ret %struct.dc_stream_state* %50
}

declare dso_local %struct.dc_stream_state* @kmemdup(%struct.dc_stream_state*, i32, i32) #1

declare dso_local i32 @dc_sink_retain(i64) #1

declare dso_local i32 @dc_transfer_func_retain(i64) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
