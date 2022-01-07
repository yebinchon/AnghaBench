; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devfreq_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devfreq*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@DEVFREQ_GOV_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfreq_remove_device(%struct.devfreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq*, align 8
  store %struct.devfreq* %0, %struct.devfreq** %3, align 8
  %4 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %5 = icmp ne %struct.devfreq* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %11 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %16 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.devfreq*, i32, i32*)*, i32 (%struct.devfreq*, i32, i32*)** %18, align 8
  %20 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %21 = load i32, i32* @DEVFREQ_GOV_STOP, align 4
  %22 = call i32 %19(%struct.devfreq* %20, i32 %21, i32* null)
  br label %23

23:                                               ; preds = %14, %9
  %24 = load %struct.devfreq*, %struct.devfreq** %3, align 8
  %25 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %24, i32 0, i32 0
  %26 = call i32 @device_unregister(i32* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
