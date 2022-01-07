; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32)* }

@devfreq_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"releasing devfreq which doesn't exist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @devfreq_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfreq_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.devfreq*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.devfreq* @to_devfreq(%struct.device* %4)
  store %struct.devfreq* %5, %struct.devfreq** %3, align 8
  %6 = call i32 @mutex_lock(i32* @devfreq_list_lock)
  %7 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %8 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @find_device_devfreq(i32 %10)
  %12 = call i64 @IS_ERR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = call i32 @mutex_unlock(i32* @devfreq_list_lock)
  %16 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %17 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %16, i32 0, i32 1
  %18 = call i32 @dev_warn(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %21 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %20, i32 0, i32 3
  %22 = call i32 @list_del(i32* %21)
  %23 = call i32 @mutex_unlock(i32* @devfreq_list_lock)
  %24 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %25 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = icmp ne i32 (i32)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %32 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %37 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %35(i32 %39)
  br label %41

41:                                               ; preds = %30, %19
  %42 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %43 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %42, i32 0, i32 0
  %44 = call i32 @mutex_destroy(i32* %43)
  %45 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %46 = call i32 @kfree(%struct.devfreq* %45)
  br label %47

47:                                               ; preds = %41, %14
  ret void
}

declare dso_local %struct.devfreq* @to_devfreq(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @find_device_devfreq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.devfreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
