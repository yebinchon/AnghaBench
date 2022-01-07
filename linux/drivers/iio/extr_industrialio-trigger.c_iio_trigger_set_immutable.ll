; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_set_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_set_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32 }
%struct.iio_trigger = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_trigger_set_immutable(%struct.iio_dev* %0, %struct.iio_trigger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_trigger*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_trigger* %1, %struct.iio_trigger** %5, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %7 = icmp ne %struct.iio_dev* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %10 = icmp ne %struct.iio_trigger* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %23 = call i32 @iio_trigger_get(%struct.iio_trigger* %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iio_trigger_get(%struct.iio_trigger*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
