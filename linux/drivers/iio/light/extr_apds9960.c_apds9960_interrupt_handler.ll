; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.apds9960_data = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@APDS9960_REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"irq status reg read failed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@APDS9960_REG_STATUS_ALS_INT = common dso_local global i32 0, align 4
@IIO_INTENSITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@APDS9960_REG_CICLEAR = common dso_local global i32 0, align 4
@APDS9960_REG_STATUS_PS_INT = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@APDS9960_REG_PICLEAR = common dso_local global i32 0, align 4
@APDS9960_REG_STATUS_GINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apds9960_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.apds9960_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.iio_dev*
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.apds9960_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.apds9960_data* %13, %struct.apds9960_data** %7, align 8
  %14 = load %struct.apds9960_data*, %struct.apds9960_data** %7, align 8
  %15 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @APDS9960_REG_STATUS, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.apds9960_data*, %struct.apds9960_data** %7, align 8
  %23 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %86

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @APDS9960_REG_STATUS_ALS_INT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load %struct.apds9960_data*, %struct.apds9960_data** %7, align 8
  %35 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = load i32, i32* @IIO_INTENSITY, align 4
  %41 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %42 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %43 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %40, i32 0, i32 %41, i32 %42)
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = call i32 @iio_get_time_ns(%struct.iio_dev* %44)
  %46 = call i32 @iio_push_event(%struct.iio_dev* %39, i32 %43, i32 %45)
  %47 = load %struct.apds9960_data*, %struct.apds9960_data** %7, align 8
  %48 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @APDS9960_REG_CICLEAR, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %38, %33, %28
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @APDS9960_REG_STATUS_PS_INT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load %struct.apds9960_data*, %struct.apds9960_data** %7, align 8
  %59 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %64 = load i32, i32* @IIO_PROXIMITY, align 4
  %65 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %66 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %67 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %64, i32 0, i32 %65, i32 %66)
  %68 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %69 = call i32 @iio_get_time_ns(%struct.iio_dev* %68)
  %70 = call i32 @iio_push_event(%struct.iio_dev* %63, i32 %67, i32 %69)
  %71 = load %struct.apds9960_data*, %struct.apds9960_data** %7, align 8
  %72 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @APDS9960_REG_PICLEAR, align 4
  %75 = call i32 @regmap_write(i32 %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %62, %57, %52
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @APDS9960_REG_STATUS_GINT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.apds9960_data*, %struct.apds9960_data** %7, align 8
  %83 = call i32 @apds9960_read_gesture_fifo(%struct.apds9960_data* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.apds9960_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @apds9960_read_gesture_fifo(%struct.apds9960_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
