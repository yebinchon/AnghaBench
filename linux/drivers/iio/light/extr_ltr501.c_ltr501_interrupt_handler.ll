; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ltr501_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LTR501_ALS_PS_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"irq read int reg failed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@LTR501_STATUS_ALS_INTR = common dso_local global i32 0, align 4
@IIO_INTENSITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@LTR501_STATUS_PS_INTR = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ltr501_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ltr501_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.iio_dev*
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.ltr501_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.ltr501_data* %13, %struct.ltr501_data** %7, align 8
  %14 = load %struct.ltr501_data*, %struct.ltr501_data** %7, align 8
  %15 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LTR501_ALS_PS_STATUS, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.ltr501_data*, %struct.ltr501_data** %7, align 8
  %23 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @LTR501_STATUS_ALS_INTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = load i32, i32* @IIO_INTENSITY, align 4
  %36 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %37 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %38 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %35, i32 0, i32 %36, i32 %37)
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = call i32 @iio_get_time_ns(%struct.iio_dev* %39)
  %41 = call i32 @iio_push_event(%struct.iio_dev* %34, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %33, %28
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @LTR501_STATUS_PS_INTR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = load i32, i32* @IIO_PROXIMITY, align 4
  %50 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %51 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %52 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %49, i32 0, i32 %50, i32 %51)
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = call i32 @iio_get_time_ns(%struct.iio_dev* %53)
  %55 = call i32 @iio_push_event(%struct.iio_dev* %48, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ltr501_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
