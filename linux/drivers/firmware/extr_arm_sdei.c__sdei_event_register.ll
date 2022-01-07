; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__sdei_event_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__sdei_event_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_event = type { i32, i64, i32, i32, i32 }

@sdei_events_lock = common dso_local global i32 0, align 4
@sdei_list_lock = common dso_local global i32 0, align 4
@SDEI_EVENT_TYPE_SHARED = common dso_local global i64 0, align 8
@sdei_entry_point = common dso_local global i32 0, align 4
@SDEI_EVENT_REGISTER_RM_ANY = common dso_local global i32 0, align 4
@_local_event_register = common dso_local global i32 0, align 4
@_local_event_unregister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdei_event*)* @_sdei_event_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sdei_event_register(%struct.sdei_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdei_event*, align 8
  %4 = alloca i32, align 4
  store %struct.sdei_event* %0, %struct.sdei_event** %3, align 8
  %5 = call i32 @lockdep_assert_held(i32* @sdei_events_lock)
  %6 = call i32 @spin_lock(i32* @sdei_list_lock)
  %7 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %8 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = call i32 @spin_unlock(i32* @sdei_list_lock)
  %10 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %11 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SDEI_EVENT_TYPE_SHARED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %17 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @sdei_entry_point, align 4
  %20 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %21 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SDEI_EVENT_REGISTER_RM_ANY, align 4
  %24 = call i32 @sdei_api_event_register(i32 %18, i32 %19, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load i32, i32* @_local_event_register, align 4
  %27 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %28 = call i32 @sdei_do_cross_call(i32 %26, %struct.sdei_event* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = call i32 @spin_lock(i32* @sdei_list_lock)
  %33 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %34 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %36 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = call i32 @spin_unlock(i32* @sdei_list_lock)
  %38 = load i32, i32* @_local_event_unregister, align 4
  %39 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %40 = call i32 @sdei_do_cross_call(i32 %38, %struct.sdei_event* %39)
  br label %41

41:                                               ; preds = %31, %25
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sdei_api_event_register(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sdei_do_cross_call(i32, %struct.sdei_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
