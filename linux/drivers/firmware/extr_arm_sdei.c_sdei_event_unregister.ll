; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_event = type { i32 }

@sdei_events_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Event %u not registered\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdei_event_unregister(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdei_event*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @in_nmi()
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = call i32 @mutex_lock(i32* @sdei_events_lock)
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.sdei_event* @sdei_event_find(i32 %8)
  store %struct.sdei_event* %9, %struct.sdei_event** %4, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.sdei_event*, %struct.sdei_event** %4, align 8
  %12 = icmp ne %struct.sdei_event* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %10
  %19 = load %struct.sdei_event*, %struct.sdei_event** %4, align 8
  %20 = call i32 @_sdei_event_unregister(%struct.sdei_event* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.sdei_event*, %struct.sdei_event** %4, align 8
  %26 = call i32 @sdei_event_destroy(%struct.sdei_event* %25)
  br label %27

27:                                               ; preds = %24, %23, %13
  %28 = call i32 @mutex_unlock(i32* @sdei_events_lock)
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_nmi(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sdei_event* @sdei_event_find(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @_sdei_event_unregister(%struct.sdei_event*) #1

declare dso_local i32 @sdei_event_destroy(%struct.sdei_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
