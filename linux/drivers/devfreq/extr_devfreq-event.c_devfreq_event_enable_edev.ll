; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_enable_edev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_enable_edev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_event_enable_edev(%struct.devfreq_event_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %6 = icmp ne %struct.devfreq_event_dev* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %9 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %7
  %16 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %17 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %20 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %15
  %26 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %27 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.devfreq_event_dev*)**
  %33 = load i32 (%struct.devfreq_event_dev*)*, i32 (%struct.devfreq_event_dev*)** %32, align 8
  %34 = icmp ne i32 (%struct.devfreq_event_dev*)* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %25
  %36 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %37 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %42 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.devfreq_event_dev*)**
  %48 = load i32 (%struct.devfreq_event_dev*)*, i32 (%struct.devfreq_event_dev*)** %47, align 8
  %49 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %50 = call i32 %48(%struct.devfreq_event_dev* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %60

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %35, %25, %15
  %56 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %57 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %53
  %61 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %62 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
