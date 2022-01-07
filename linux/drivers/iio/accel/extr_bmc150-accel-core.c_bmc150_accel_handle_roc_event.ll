; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_handle_roc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_handle_roc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.bmc150_accel_data = type { i32, i32 }
%struct.device = type { i32 }

@BMC150_ACCEL_REG_INT_STATUS_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error reading reg_int_status_2\0A\00", align 1
@BMC150_ACCEL_ANY_MOTION_BIT_SIGN = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@BMC150_ACCEL_ANY_MOTION_BIT_X = common dso_local global i32 0, align 4
@IIO_ACCEL = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@IIO_EV_TYPE_ROC = common dso_local global i32 0, align 4
@BMC150_ACCEL_ANY_MOTION_BIT_Y = common dso_local global i32 0, align 4
@IIO_MOD_Y = common dso_local global i32 0, align 4
@BMC150_ACCEL_ANY_MOTION_BIT_Z = common dso_local global i32 0, align 4
@IIO_MOD_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @bmc150_accel_handle_roc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_handle_roc_event(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.bmc150_accel_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.bmc150_accel_data* %10, %struct.bmc150_accel_data** %4, align 8
  %11 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %12 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device* @regmap_get_device(i32 %13)
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %16 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BMC150_ACCEL_REG_INT_STATUS_2, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @BMC150_ACCEL_ANY_MOTION_BIT_SIGN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @BMC150_ACCEL_ANY_MOTION_BIT_X, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %42 = load i32, i32* @IIO_ACCEL, align 4
  %43 = load i32, i32* @IIO_MOD_X, align 4
  %44 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @IIO_MOD_EVENT_CODE(i32 %42, i32 0, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %48 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @iio_push_event(%struct.iio_dev* %41, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %40, %35
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BMC150_ACCEL_ANY_MOTION_BIT_Y, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %58 = load i32, i32* @IIO_ACCEL, align 4
  %59 = load i32, i32* @IIO_MOD_Y, align 4
  %60 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @IIO_MOD_EVENT_CODE(i32 %58, i32 0, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %64 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @iio_push_event(%struct.iio_dev* %57, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %56, %51
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @BMC150_ACCEL_ANY_MOTION_BIT_Z, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %74 = load i32, i32* @IIO_ACCEL, align 4
  %75 = load i32, i32* @IIO_MOD_Z, align 4
  %76 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @IIO_MOD_EVENT_CODE(i32 %74, i32 0, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %80 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @iio_push_event(%struct.iio_dev* %73, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %72, %67
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %22
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
