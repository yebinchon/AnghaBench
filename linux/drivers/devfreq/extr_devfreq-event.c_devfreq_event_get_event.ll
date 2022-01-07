; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.devfreq_event_data = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_event_get_event(%struct.devfreq_event_dev* %0, %struct.devfreq_event_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfreq_event_dev*, align 8
  %5 = alloca %struct.devfreq_event_data*, align 8
  %6 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %4, align 8
  store %struct.devfreq_event_data* %1, %struct.devfreq_event_data** %5, align 8
  %7 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %8 = icmp ne %struct.devfreq_event_dev* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %11 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %9
  %18 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %19 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %26 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)**
  %32 = load i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)*, i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)** %31, align 8
  %33 = icmp ne i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24, %17
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %75

37:                                               ; preds = %24
  %38 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %39 = call i32 @devfreq_event_is_enabled(%struct.devfreq_event_dev* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %75

44:                                               ; preds = %37
  %45 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %46 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %48 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %50 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %53 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)**
  %59 = load i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)*, i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)** %58, align 8
  %60 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %61 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %62 = call i32 %59(%struct.devfreq_event_dev* %60, %struct.devfreq_event_data* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %44
  %66 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %67 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %69 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %44
  %71 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %72 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %41, %34, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @devfreq_event_is_enabled(%struct.devfreq_event_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
