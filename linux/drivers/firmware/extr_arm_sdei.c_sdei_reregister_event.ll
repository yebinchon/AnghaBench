; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_reregister_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_reregister_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_event = type { i64, i32, i64 }

@sdei_events_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to re-register event %u\0A\00", align 1
@SDEI_EVENT_TYPE_SHARED = common dso_local global i64 0, align 8
@_local_event_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to re-enable event %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdei_event*)* @sdei_reregister_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdei_reregister_event(%struct.sdei_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdei_event*, align 8
  %4 = alloca i32, align 4
  store %struct.sdei_event* %0, %struct.sdei_event** %3, align 8
  %5 = call i32 @lockdep_assert_held(i32* @sdei_events_lock)
  %6 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %7 = call i32 @_sdei_event_register(%struct.sdei_event* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %12 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %16 = call i32 @sdei_event_destroy(%struct.sdei_event* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %20 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %25 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SDEI_EVENT_TYPE_SHARED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %31 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sdei_api_event_enable(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @_local_event_enable, align 4
  %36 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %37 = call i32 @sdei_do_cross_call(i32 %35, %struct.sdei_event* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.sdei_event*, %struct.sdei_event** %3, align 8
  %44 = getelementptr inbounds %struct.sdei_event, %struct.sdei_event* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @_sdei_event_register(%struct.sdei_event*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sdei_event_destroy(%struct.sdei_event*) #1

declare dso_local i32 @sdei_api_event_enable(i32) #1

declare dso_local i32 @sdei_do_cross_call(i32, %struct.sdei_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
