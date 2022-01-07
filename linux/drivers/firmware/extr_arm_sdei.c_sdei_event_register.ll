; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_event_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_event = type { i32 }

@sdei_events_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Event %u already registered\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to create event %u: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register event %u: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdei_event_register(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdei_event*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 (...) @in_nmi()
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = call i32 @mutex_lock(i32* @sdei_events_lock)
  br label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @sdei_event_find(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %47

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call %struct.sdei_event* @sdei_event_create(i32 %22, i32* %23, i8* %24)
  store %struct.sdei_event* %25, %struct.sdei_event** %8, align 8
  %26 = load %struct.sdei_event*, %struct.sdei_event** %8, align 8
  %27 = call i64 @IS_ERR(%struct.sdei_event* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.sdei_event*, %struct.sdei_event** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.sdei_event* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  br label %47

35:                                               ; preds = %21
  %36 = load %struct.sdei_event*, %struct.sdei_event** %8, align 8
  %37 = call i32 @_sdei_event_register(%struct.sdei_event* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.sdei_event*, %struct.sdei_event** %8, align 8
  %42 = call i32 @sdei_event_destroy(%struct.sdei_event* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %29, %16
  %48 = call i32 @mutex_unlock(i32* @sdei_events_lock)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_nmi(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sdei_event_find(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local %struct.sdei_event* @sdei_event_create(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.sdei_event*) #1

declare dso_local i32 @PTR_ERR(%struct.sdei_event*) #1

declare dso_local i32 @_sdei_event_register(%struct.sdei_event*) #1

declare dso_local i32 @sdei_event_destroy(%struct.sdei_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
