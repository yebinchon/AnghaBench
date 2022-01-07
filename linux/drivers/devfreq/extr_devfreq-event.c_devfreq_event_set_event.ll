; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_set_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_event_set_event(%struct.devfreq_event_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  %5 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %6 = icmp ne %struct.devfreq_event_dev* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %9 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %7
  %16 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %17 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %24 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.devfreq_event_dev*)**
  %30 = load i32 (%struct.devfreq_event_dev*)*, i32 (%struct.devfreq_event_dev*)** %29, align 8
  %31 = icmp ne i32 (%struct.devfreq_event_dev*)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %22, %15
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %22
  %36 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %37 = call i32 @devfreq_event_is_enabled(%struct.devfreq_event_dev* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %60

42:                                               ; preds = %35
  %43 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %44 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %47 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.devfreq_event_dev*)**
  %53 = load i32 (%struct.devfreq_event_dev*)*, i32 (%struct.devfreq_event_dev*)** %52, align 8
  %54 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %55 = call i32 %53(%struct.devfreq_event_dev* %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %57 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %42, %39, %32, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
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
