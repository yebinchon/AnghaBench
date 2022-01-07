; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_monitor_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_monitor_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i64*)*, i64 }

@devfreq_wq = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfreq_monitor_resume(%struct.devfreq* %0) #0 {
  %2 = alloca %struct.devfreq*, align 8
  %3 = alloca i64, align 8
  store %struct.devfreq* %0, %struct.devfreq** %2, align 8
  %4 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %5 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %8 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %14 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %13, i32 0, i32 6
  %15 = call i32 @delayed_work_pending(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %19 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i32, i32* @devfreq_wq, align 4
  %26 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %27 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %26, i32 0, i32 6
  %28 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %29 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %28, i32 0, i32 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @msecs_to_jiffies(i64 %32)
  %34 = call i32 @queue_delayed_work(i32 %25, i32* %27, i32 %33)
  br label %35

35:                                               ; preds = %24, %17, %12
  %36 = load i32, i32* @jiffies, align 4
  %37 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %38 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %40 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %42 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (i32, i64*)*, i32 (i32, i64*)** %44, align 8
  %46 = icmp ne i32 (i32, i64*)* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %35
  %48 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %49 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (i32, i64*)*, i32 (i32, i64*)** %51, align 8
  %53 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %54 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %52(i32 %56, i64* %3)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %47
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %62 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %47, %35
  br label %64

64:                                               ; preds = %63, %11
  %65 = load %struct.devfreq*, %struct.devfreq** %2, align 8
  %66 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
