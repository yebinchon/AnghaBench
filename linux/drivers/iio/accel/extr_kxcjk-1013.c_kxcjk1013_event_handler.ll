; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.kxcjk1013_data = type { i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@KXCJK1013_REG_INT_SRC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error reading reg_int_src1\0A\00", align 1
@KXCJK1013_REG_INT_SRC1_BIT_WUFS = common dso_local global i32 0, align 4
@KXTF9 = common dso_local global i64 0, align 8
@IIO_ACCEL = common dso_local global i32 0, align 4
@IIO_MOD_X_AND_Y_AND_Z = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@KXCJK1013_REG_INT_REL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error reading reg_int_rel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kxcjk1013_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.kxcjk1013_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.kxcjk1013_data* %12, %struct.kxcjk1013_data** %7, align 8
  %13 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %14 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* @KXCJK1013_REG_INT_SRC1, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %22 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %53

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @KXCJK1013_REG_INT_SRC1_BIT_WUFS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %33 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KXTF9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = load i32, i32* @IIO_ACCEL, align 4
  %40 = load i32, i32* @IIO_MOD_X_AND_Y_AND_Z, align 4
  %41 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %42 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %43 = call i32 @IIO_MOD_EVENT_CODE(i32 %39, i32 0, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %45 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @iio_push_event(%struct.iio_dev* %38, i32 %43, i32 %46)
  br label %51

48:                                               ; preds = %31
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = call i32 @kxcjk1013_report_motion_event(%struct.iio_dev* %49)
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %20
  %54 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %55 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %76

60:                                               ; preds = %53
  %61 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %62 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* @KXCJK1013_REG_INT_REL, align 4
  %65 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %70 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %68, %60
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %58
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kxcjk1013_report_motion_event(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
