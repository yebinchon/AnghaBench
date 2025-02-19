; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_remove_edev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devfreq_event_remove_edev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@devfreq_event_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_event_remove_edev(%struct.devfreq_event_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_event_dev*, align 8
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  %4 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %5 = icmp ne %struct.devfreq_event_dev* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %11 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = call i32 @mutex_lock(i32* @devfreq_event_list_lock)
  %15 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %16 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  %18 = call i32 @mutex_unlock(i32* @devfreq_event_list_lock)
  %19 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %20 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %19, i32 0, i32 0
  %21 = call i32 @device_unregister(i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %9, %6
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
