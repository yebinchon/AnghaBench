; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i64, i32, %struct.push_buffer }
%struct.push_buffer = type { i32 }
%struct.host1x = type { i32 }
%struct.TYPE_2__ = type { i32 }

@host1x_debug_trace_cmdbuf = common dso_local global i64 0, align 8
@CDMA_EVENT_PUSH_BUFFER_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_cdma_push(%struct.host1x_cdma* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.host1x_cdma*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.host1x*, align 8
  %8 = alloca %struct.push_buffer*, align 8
  %9 = alloca i64, align 8
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %11 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %10)
  store %struct.host1x* %11, %struct.host1x** %7, align 8
  %12 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %13 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %12, i32 0, i32 2
  store %struct.push_buffer* %13, %struct.push_buffer** %8, align 8
  %14 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %15 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* @host1x_debug_trace_cmdbuf, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %21 = call %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_name(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @trace_host1x_cdma_push(i32 %24, i64 %25, i64 %26)
  br label %28

28:                                               ; preds = %19, %3
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.host1x*, %struct.host1x** %7, align 8
  %33 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %34 = call i32 @host1x_hw_cdma_flush(%struct.host1x* %32, %struct.host1x_cdma* %33)
  %35 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %36 = load i32, i32* @CDMA_EVENT_PUSH_BUFFER_SPACE, align 4
  %37 = call i64 @host1x_cdma_wait_locked(%struct.host1x_cdma* %35, i32 %36)
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i64, i64* %9, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %42 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %44 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.push_buffer*, %struct.push_buffer** %8, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @host1x_pushbuffer_push(%struct.push_buffer* %47, i64 %48, i64 %49)
  ret void
}

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local i32 @trace_host1x_cdma_push(i32, i64, i64) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma*) #1

declare dso_local i32 @host1x_hw_cdma_flush(%struct.host1x*, %struct.host1x_cdma*) #1

declare dso_local i64 @host1x_cdma_wait_locked(%struct.host1x_cdma*, i32) #1

declare dso_local i32 @host1x_pushbuffer_push(%struct.push_buffer*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
