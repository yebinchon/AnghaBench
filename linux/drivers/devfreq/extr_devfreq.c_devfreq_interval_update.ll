; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_interval_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_interval_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@devfreq_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfreq_interval_update(%struct.devfreq* %0, i32* %1) #0 {
  %3 = alloca %struct.devfreq*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.devfreq* %0, %struct.devfreq** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %8 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %15 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %19 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %23 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %82

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %32 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %35 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %34, i32 0, i32 2
  %36 = call i32 @cancel_delayed_work_sync(i32* %35)
  br label %86

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @devfreq_wq, align 4
  %42 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %43 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %42, i32 0, i32 2
  %44 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %45 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @msecs_to_jiffies(i32 %48)
  %50 = call i32 @queue_delayed_work(i32 %41, i32* %43, i32 %49)
  br label %82

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  %56 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %57 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %60 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %59, i32 0, i32 2
  %61 = call i32 @cancel_delayed_work_sync(i32* %60)
  %62 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %63 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %66 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* @devfreq_wq, align 4
  %71 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %72 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %71, i32 0, i32 2
  %73 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %74 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @msecs_to_jiffies(i32 %77)
  %79 = call i32 @queue_delayed_work(i32 %70, i32* %72, i32 %78)
  br label %80

80:                                               ; preds = %69, %55
  br label %81

81:                                               ; preds = %80, %51
  br label %82

82:                                               ; preds = %81, %40, %26
  %83 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %84 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  br label %86

86:                                               ; preds = %82, %30
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
