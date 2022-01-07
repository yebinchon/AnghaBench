; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_passive.c_devfreq_passive_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_passive.c_devfreq_passive_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i64 }
%struct.devfreq_passive_data = type { %struct.devfreq*, %struct.notifier_block, i64 }
%struct.notifier_block = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@devfreq_passive_notifier_call = common dso_local global i32 0, align 4
@DEVFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq*, i32, i8*)* @devfreq_passive_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfreq_passive_event_handler(%struct.devfreq* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.devfreq_passive_data*, align 8
  %9 = alloca %struct.devfreq*, align 8
  %10 = alloca %struct.notifier_block*, align 8
  %11 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %13 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.devfreq_passive_data*
  store %struct.devfreq_passive_data* %15, %struct.devfreq_passive_data** %8, align 8
  %16 = load %struct.devfreq_passive_data*, %struct.devfreq_passive_data** %8, align 8
  %17 = getelementptr inbounds %struct.devfreq_passive_data, %struct.devfreq_passive_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.devfreq*
  store %struct.devfreq* %19, %struct.devfreq** %9, align 8
  %20 = load %struct.devfreq_passive_data*, %struct.devfreq_passive_data** %8, align 8
  %21 = getelementptr inbounds %struct.devfreq_passive_data, %struct.devfreq_passive_data* %20, i32 0, i32 1
  store %struct.notifier_block* %21, %struct.notifier_block** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %23 = icmp ne %struct.devfreq* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %52 [
    i32 129, label %29
    i32 128, label %46
  ]

29:                                               ; preds = %27
  %30 = load %struct.devfreq_passive_data*, %struct.devfreq_passive_data** %8, align 8
  %31 = getelementptr inbounds %struct.devfreq_passive_data, %struct.devfreq_passive_data* %30, i32 0, i32 0
  %32 = load %struct.devfreq*, %struct.devfreq** %31, align 8
  %33 = icmp ne %struct.devfreq* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  %36 = load %struct.devfreq_passive_data*, %struct.devfreq_passive_data** %8, align 8
  %37 = getelementptr inbounds %struct.devfreq_passive_data, %struct.devfreq_passive_data* %36, i32 0, i32 0
  store %struct.devfreq* %35, %struct.devfreq** %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* @devfreq_passive_notifier_call, align 4
  %40 = load %struct.notifier_block*, %struct.notifier_block** %10, align 8
  %41 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %43 = load %struct.notifier_block*, %struct.notifier_block** %10, align 8
  %44 = load i32, i32* @DEVFREQ_TRANSITION_NOTIFIER, align 4
  %45 = call i32 @devfreq_register_notifier(%struct.devfreq* %42, %struct.notifier_block* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  br label %53

46:                                               ; preds = %27
  %47 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %48 = load %struct.notifier_block*, %struct.notifier_block** %10, align 8
  %49 = load i32, i32* @DEVFREQ_TRANSITION_NOTIFIER, align 4
  %50 = call i32 @devfreq_unregister_notifier(%struct.devfreq* %47, %struct.notifier_block* %48, i32 %49)
  %51 = call i32 @WARN_ON(i32 %50)
  br label %53

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %46, %38
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %24
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @devfreq_register_notifier(%struct.devfreq*, %struct.notifier_block*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devfreq_unregister_notifier(%struct.devfreq*, %struct.notifier_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
