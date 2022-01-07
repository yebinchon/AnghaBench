; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__sdei_event_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__sdei_event_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_event = type { i32, i32, i64, i32 }

@sdei_events_lock = common dso_local global i32 0, align 4
@sdei_list_lock = common dso_local global i32 0, align 4
@SDEI_EVENT_TYPE_SHARED = common dso_local global i64 0, align 8
@_local_event_unregister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdei_event*)* @_sdei_event_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sdei_event_unregister(%struct.sdei_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdei_event*, align 8
  store %struct.sdei_event* %0, %struct.sdei_event** %3, align 8
  %4 = call i32 @lockdep_assert_held(i32* @sdei_events_lock)
  %5 = call i32 @spin_lock(i32* @sdei_list_lock)
  %6 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %7 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %9 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = call i32 @spin_unlock(i32* @sdei_list_lock)
  %11 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %12 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SDEI_EVENT_TYPE_SHARED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %18 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sdei_api_event_unregister(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @_local_event_unregister, align 4
  %23 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %24 = call i32 @sdei_do_cross_call(i32 %22, %struct.sdei_event* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sdei_api_event_unregister(i32) #1

declare dso_local i32 @sdei_do_cross_call(i32, %struct.sdei_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
