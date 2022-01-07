; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_wait_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_wait_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i32, i32, i32, i32, %struct.push_buffer }
%struct.push_buffer = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CDMA_EVENT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_cdma_wait_locked(%struct.host1x_cdma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x_cdma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.push_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %52, %44, %2
  %9 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %10 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %9, i32 0, i32 4
  store %struct.push_buffer* %10, %struct.push_buffer** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %22 [
    i32 128, label %12
    i32 129, label %19
  ]

12:                                               ; preds = %8
  %13 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %14 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %13, i32 0, i32 3
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %7, align 4
  br label %26

19:                                               ; preds = %8
  %20 = load %struct.push_buffer*, %struct.push_buffer** %6, align 8
  %21 = call i32 @host1x_pushbuffer_space(%struct.push_buffer* %20)
  store i32 %21, i32* %7, align 4
  br label %26

22:                                               ; preds = %8
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %19, %12
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %26
  %32 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %33 = call %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_name(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @trace_host1x_wait_cdma(i32 %36, i32 %37)
  %39 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %40 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CDMA_EVENT_NONE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %46 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = call i32 (...) @schedule()
  %49 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %50 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  br label %8

52:                                               ; preds = %31
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %55 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %57 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %60 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %59, i32 0, i32 2
  %61 = call i32 @wait_for_completion(i32* %60)
  %62 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %63 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %62, i32 0, i32 1
  %64 = call i32 @mutex_lock(i32* %63)
  br label %8

65:                                               ; preds = %29, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @host1x_pushbuffer_space(%struct.push_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_host1x_wait_cdma(i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma*) #1

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
