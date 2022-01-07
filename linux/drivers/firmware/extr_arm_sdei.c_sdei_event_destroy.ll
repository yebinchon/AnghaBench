; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_event = type { i64, i32, %struct.sdei_event*, i32 }

@sdei_events_lock = common dso_local global i32 0, align 4
@sdei_list_lock = common dso_local global i32 0, align 4
@SDEI_EVENT_TYPE_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdei_event*)* @sdei_event_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdei_event_destroy(%struct.sdei_event* %0) #0 {
  %2 = alloca %struct.sdei_event*, align 8
  store %struct.sdei_event* %0, %struct.sdei_event** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @sdei_events_lock)
  %4 = call i32 @spin_lock(i32* @sdei_list_lock)
  %5 = load %struct.sdei_event*, %struct.sdei_event** %2, align 8
  %6 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %5, i32 0, i32 3
  %7 = call i32 @list_del(i32* %6)
  %8 = call i32 @spin_unlock(i32* @sdei_list_lock)
  %9 = load %struct.sdei_event*, %struct.sdei_event** %2, align 8
  %10 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SDEI_EVENT_TYPE_SHARED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.sdei_event*, %struct.sdei_event** %2, align 8
  %16 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %15, i32 0, i32 2
  %17 = load %struct.sdei_event*, %struct.sdei_event** %16, align 8
  %18 = call i32 @kfree(%struct.sdei_event* %17)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.sdei_event*, %struct.sdei_event** %2, align 8
  %21 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @free_percpu(i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.sdei_event*, %struct.sdei_event** %2, align 8
  %26 = call i32 @kfree(%struct.sdei_event* %25)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.sdei_event*) #1

declare dso_local i32 @free_percpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
