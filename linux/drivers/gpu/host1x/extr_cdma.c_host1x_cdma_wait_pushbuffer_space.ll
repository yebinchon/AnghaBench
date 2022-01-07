; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_wait_pushbuffer_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_wait_pushbuffer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }
%struct.host1x_cdma = type { i64, i32, i32, %struct.push_buffer }
%struct.push_buffer = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CDMA_EVENT_PUSH_BUFFER_SPACE = common dso_local global i64 0, align 8
@CDMA_EVENT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_cdma_wait_pushbuffer_space(%struct.host1x* %0, %struct.host1x_cdma* %1, i32 %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.host1x_cdma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.push_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store %struct.host1x_cdma* %1, %struct.host1x_cdma** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %3, %34, %42
  %10 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %11 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %10, i32 0, i32 3
  store %struct.push_buffer* %11, %struct.push_buffer** %7, align 8
  %12 = load %struct.push_buffer*, %struct.push_buffer** %7, align 8
  %13 = call i32 @host1x_pushbuffer_space(%struct.push_buffer* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %55

18:                                               ; preds = %9
  %19 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %20 = call %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_name(i32 %22)
  %24 = load i64, i64* @CDMA_EVENT_PUSH_BUFFER_SPACE, align 8
  %25 = call i32 @trace_host1x_wait_cdma(i32 %23, i64 %24)
  %26 = load %struct.host1x*, %struct.host1x** %4, align 8
  %27 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %28 = call i32 @host1x_hw_cdma_flush(%struct.host1x* %26, %struct.host1x_cdma* %27)
  %29 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %30 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CDMA_EVENT_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %18
  %35 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %36 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = call i32 (...) @schedule()
  %39 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %40 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  br label %9

42:                                               ; preds = %18
  %43 = load i64, i64* @CDMA_EVENT_PUSH_BUFFER_SPACE, align 8
  %44 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %45 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %47 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %50 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %49, i32 0, i32 2
  %51 = call i32 @wait_for_completion(i32* %50)
  %52 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %53 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  br label %9

55:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @host1x_pushbuffer_space(%struct.push_buffer*) #1

declare dso_local i32 @trace_host1x_wait_cdma(i32, i64) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma*) #1

declare dso_local i32 @host1x_hw_cdma_flush(%struct.host1x*, %struct.host1x_cdma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
