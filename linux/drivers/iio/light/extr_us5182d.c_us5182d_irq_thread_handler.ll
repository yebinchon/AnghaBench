; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.us5182d_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@US5182D_REG_CFG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"i2c transfer error in irq\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@US5182D_CFG0_PROX = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@US5182D_CFG0_PX_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @us5182d_irq_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.us5182d_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.us5182d_data* %14, %struct.us5182d_data** %7, align 8
  %15 = load %struct.us5182d_data*, %struct.us5182d_data** %7, align 8
  %16 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* @US5182D_REG_CFG0, align 4
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.us5182d_data*, %struct.us5182d_data** %7, align 8
  %24 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @US5182D_CFG0_PROX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @IIO_PROXIMITY, align 4
  %41 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %40, i32 1, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = call i32 @iio_get_time_ns(%struct.iio_dev* %46)
  %48 = call i32 @iio_push_event(%struct.iio_dev* %44, i32 %45, i32 %47)
  %49 = load %struct.us5182d_data*, %struct.us5182d_data** %7, align 8
  %50 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* @US5182D_REG_CFG0, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @US5182D_CFG0_PX_IRQ, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %51, i32 %52, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %38
  %61 = load %struct.us5182d_data*, %struct.us5182d_data** %7, align 8
  %62 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %38
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
