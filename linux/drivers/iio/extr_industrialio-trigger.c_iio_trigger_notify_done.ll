; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_notify_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trigger_notify_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 (%struct.iio_trigger*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_trigger_notify_done(%struct.iio_trigger* %0) #0 {
  %2 = alloca %struct.iio_trigger*, align 8
  store %struct.iio_trigger* %0, %struct.iio_trigger** %2, align 8
  %3 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %4 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %3, i32 0, i32 1
  %5 = call i64 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %9 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %14 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.iio_trigger*)*, i64 (%struct.iio_trigger*)** %16, align 8
  %18 = icmp ne i64 (%struct.iio_trigger*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %21 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (%struct.iio_trigger*)*, i64 (%struct.iio_trigger*)** %23, align 8
  %25 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %26 = call i64 %24(%struct.iio_trigger* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.iio_trigger*, %struct.iio_trigger** %2, align 8
  %30 = call i32 @iio_trigger_poll(%struct.iio_trigger* %29)
  br label %31

31:                                               ; preds = %28, %19
  br label %32

32:                                               ; preds = %31, %12, %7, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @iio_trigger_poll(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
