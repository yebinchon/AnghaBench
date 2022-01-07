; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy_buffer.c_iio_simple_dummy_configure_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy_buffer.c_iio_simple_dummy_configure_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32, i32, i32* }
%struct.iio_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@iio_simple_dummy_buffer_setup_ops = common dso_local global i32 0, align 4
@iio_simple_dummy_trigger_h = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"iio_simple_dummy_consumer%d\00", align 1
@INDIO_BUFFER_TRIGGERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_simple_dummy_configure_buffer(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_buffer*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = call %struct.iio_buffer* (...) @iio_kfifo_allocate()
  store %struct.iio_buffer* %6, %struct.iio_buffer** %5, align 8
  %7 = load %struct.iio_buffer*, %struct.iio_buffer** %5, align 8
  %8 = icmp ne %struct.iio_buffer* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = load %struct.iio_buffer*, %struct.iio_buffer** %5, align 8
  %15 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %13, %struct.iio_buffer* %14)
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 4
  store i32* @iio_simple_dummy_buffer_setup_ops, i32** %17, align 8
  %18 = load i32, i32* @IRQF_ONESHOT, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iio_alloc_pollfunc(i32* null, i32* @iio_simple_dummy_trigger_h, i32 %18, %struct.iio_dev* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %12
  %34 = load i32, i32* @INDIO_BUFFER_TRIGGERED, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %46

39:                                               ; preds = %30
  %40 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @iio_kfifo_free(i32 %42)
  br label %44

44:                                               ; preds = %39, %9
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.iio_buffer* @iio_kfifo_allocate(...) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i32 @iio_alloc_pollfunc(i32*, i32*, i32, %struct.iio_dev*, i8*, i32) #1

declare dso_local i32 @iio_kfifo_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
