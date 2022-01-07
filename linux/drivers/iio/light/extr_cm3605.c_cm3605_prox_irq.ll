; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3605.c_cm3605_prox_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3605.c_cm3605_prox_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.cm3605 = type { i64 }

@IIO_PROXIMITY = common dso_local global i32 0, align 4
@CM3605_PROX_CHANNEL = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i64 0, align 8
@IIO_EV_DIR_FALLING = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cm3605_prox_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3605_prox_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.cm3605*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iio_dev*
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.cm3605* @iio_priv(%struct.iio_dev* %10)
  store %struct.cm3605* %11, %struct.cm3605** %6, align 8
  %12 = load i32, i32* @IIO_PROXIMITY, align 4
  %13 = load i32, i32* @CM3605_PROX_CHANNEL, align 4
  %14 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %15 = load %struct.cm3605*, %struct.cm3605** %6, align 8
  %16 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %12, i32 %13, i32 %14, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = call i32 @iio_get_time_ns(%struct.iio_dev* %21)
  %23 = call i32 @iio_push_event(%struct.iio_dev* %19, i32 %20, i32 %22)
  %24 = load %struct.cm3605*, %struct.cm3605** %6, align 8
  %25 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IIO_EV_DIR_RISING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, i64* @IIO_EV_DIR_FALLING, align 8
  %31 = load %struct.cm3605*, %struct.cm3605** %6, align 8
  %32 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load i64, i64* @IIO_EV_DIR_RISING, align 8
  %35 = load %struct.cm3605*, %struct.cm3605** %6, align 8
  %36 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local %struct.cm3605* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i64) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
