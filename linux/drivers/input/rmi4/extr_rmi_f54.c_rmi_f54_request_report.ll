; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_request_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_request_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { %struct.TYPE_6__, %struct.rmi_device*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rmi_device = type { i32 }
%struct.f54_data = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@F54_GET_REPORT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*, i32)* @rmi_f54_request_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f54_request_report(%struct.rmi_function* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmi_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f54_data*, align 8
  %7 = alloca %struct.rmi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %10 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %9, i32 0, i32 2
  %11 = call %struct.f54_data* @dev_get_drvdata(i32* %10)
  store %struct.f54_data* %11, %struct.f54_data** %6, align 8
  %12 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %13 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %12, i32 0, i32 1
  %14 = load %struct.rmi_device*, %struct.rmi_device** %13, align 8
  store %struct.rmi_device* %14, %struct.rmi_device** %7, align 8
  %15 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %16 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  %22 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %23 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %22, i32 0, i32 7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @rmi_write(%struct.rmi_device* %21, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %75

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %37 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %2
  %39 = call i32 @usleep_range(i32 2000, i32 3000)
  %40 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %41 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  %44 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %45 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @F54_GET_REPORT, align 4
  %49 = call i32 @rmi_write(%struct.rmi_device* %43, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %70

53:                                               ; preds = %38
  %54 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %55 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %54, i32 0, i32 5
  %56 = call i32 @init_completion(i32* %55)
  %57 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %58 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i64, i64* @jiffies, align 8
  %60 = call i64 @msecs_to_jiffies(i32 100)
  %61 = add nsw i64 %59, %60
  %62 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %63 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %65 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %68 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %67, i32 0, i32 2
  %69 = call i32 @queue_delayed_work(i32 %66, i32* %68, i32 0)
  br label %70

70:                                               ; preds = %53, %52
  %71 = load %struct.f54_data*, %struct.f54_data** %6, align 8
  %72 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %32
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.f54_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_write(%struct.rmi_device*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
