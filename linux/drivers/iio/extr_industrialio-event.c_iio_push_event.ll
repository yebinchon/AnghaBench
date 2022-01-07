; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_push_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_push_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.iio_event_interface* }
%struct.iio_event_interface = type { i32, i32 }
%struct.iio_event_data = type { i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_push_event(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_event_interface*, align 8
  %9 = alloca %struct.iio_event_data, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  %13 = load %struct.iio_event_interface*, %struct.iio_event_interface** %12, align 8
  store %struct.iio_event_interface* %13, %struct.iio_event_interface** %8, align 8
  %14 = load %struct.iio_event_interface*, %struct.iio_event_interface** %8, align 8
  %15 = icmp ne %struct.iio_event_interface* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.iio_event_interface*, %struct.iio_event_interface** %8, align 8
  %19 = call i64 @iio_event_enabled(%struct.iio_event_interface* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %9, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.iio_event_interface*, %struct.iio_event_interface** %8, align 8
  %27 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %26, i32 0, i32 1
  %28 = bitcast %struct.iio_event_data* %9 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @kfifo_put(i32* %27, i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.iio_event_interface*, %struct.iio_event_interface** %8, align 8
  %35 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %34, i32 0, i32 0
  %36 = load i32, i32* @EPOLLIN, align 4
  %37 = call i32 @wake_up_poll(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %21
  br label %39

39:                                               ; preds = %38, %17
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @iio_event_enabled(%struct.iio_event_interface*) #1

declare dso_local i32 @kfifo_put(i32*, i64) #1

declare dso_local i32 @wake_up_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
