; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@CONFIG_IIO_CONSUMERS_PER_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_trigger_poll(%struct.iio_trigger* %0) #0 {
  %2 = alloca %struct.iio_trigger*, align 8
  %3 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %2, align 8
  %4 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %5 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %4, i32 0, i32 2
  %6 = call i32 @atomic_read(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %1
  %9 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %10 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %9, i32 0, i32 2
  %11 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %12 = call i32 @atomic_set(i32* %10, i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %39, %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %19 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %29 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @generic_handle_irq(i64 %33)
  br label %38

35:                                               ; preds = %17
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %37 = call i32 @iio_trigger_notify_done(%struct.iio_trigger* %36)
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @generic_handle_irq(i64) #1

declare dso_local i32 @iio_trigger_notify_done(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
