; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_disable_edev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_disable_edev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unbalanced enable_count\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_event_disable_edev(%struct.devfreq_event_dev* %0) #0 {
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
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %7
  %16 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %17 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %20 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %25 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %24, i32 0, i32 3
  %26 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %15
  %30 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %31 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %66

36:                                               ; preds = %29
  %37 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %38 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.devfreq_event_dev*)**
  %44 = load i32 (%struct.devfreq_event_dev*)*, i32 (%struct.devfreq_event_dev*)** %43, align 8
  %45 = icmp ne i32 (%struct.devfreq_event_dev*)* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %36
  %47 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %48 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %53 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.devfreq_event_dev*)**
  %59 = load i32 (%struct.devfreq_event_dev*)*, i32 (%struct.devfreq_event_dev*)** %58, align 8
  %60 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %61 = call i32 %59(%struct.devfreq_event_dev* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %71

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %46, %36, %29
  %67 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %68 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %64, %23
  %72 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %73 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
