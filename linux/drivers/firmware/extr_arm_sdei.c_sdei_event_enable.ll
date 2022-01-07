; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_event = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@sdei_events_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@sdei_list_lock = common dso_local global i32 0, align 4
@SDEI_EVENT_TYPE_SHARED = common dso_local global i64 0, align 8
@_local_event_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdei_event_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdei_event*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @sdei_events_lock)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.sdei_event* @sdei_event_find(i32 %9)
  store %struct.sdei_event* %10, %struct.sdei_event** %5, align 8
  %11 = load %struct.sdei_event*, %struct.sdei_event** %5, align 8
  %12 = icmp ne %struct.sdei_event* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @mutex_unlock(i32* @sdei_events_lock)
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = call i32 @spin_lock(i32* @sdei_list_lock)
  %19 = load %struct.sdei_event*, %struct.sdei_event** %5, align 8
  %20 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = call i32 @spin_unlock(i32* @sdei_list_lock)
  %22 = load %struct.sdei_event*, %struct.sdei_event** %5, align 8
  %23 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SDEI_EVENT_TYPE_SHARED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.sdei_event*, %struct.sdei_event** %5, align 8
  %29 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sdei_api_event_enable(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %17
  %33 = load i32, i32* @_local_event_enable, align 4
  %34 = load %struct.sdei_event*, %struct.sdei_event** %5, align 8
  %35 = call i32 @sdei_do_cross_call(i32 %33, %struct.sdei_event* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = call i32 @mutex_unlock(i32* @sdei_events_lock)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sdei_event* @sdei_event_find(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sdei_api_event_enable(i32) #1

declare dso_local i32 @sdei_do_cross_call(i32, %struct.sdei_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
