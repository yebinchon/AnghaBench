; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.bmg160_data = type { i32, i32 }
%struct.device = type { i32 }

@BMG160_REG_INT_STATUS_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error reading reg_int_status2\0A\00", align 1
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@BMG160_ANY_MOTION_BIT_X = common dso_local global i32 0, align 4
@IIO_ANGL_VEL = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@IIO_EV_TYPE_ROC = common dso_local global i32 0, align 4
@BMG160_ANY_MOTION_BIT_Y = common dso_local global i32 0, align 4
@IIO_MOD_Y = common dso_local global i32 0, align 4
@BMG160_ANY_MOTION_BIT_Z = common dso_local global i32 0, align 4
@IIO_MOD_Z = common dso_local global i32 0, align 4
@BMG160_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error writing reg_rst_latch\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bmg160_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.bmg160_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.bmg160_data* %14, %struct.bmg160_data** %6, align 8
  %15 = load %struct.bmg160_data*, %struct.bmg160_data** %6, align 8
  %16 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device* @regmap_get_device(i32 %17)
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.bmg160_data*, %struct.bmg160_data** %6, align 8
  %20 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BMG160_REG_INT_STATUS_2, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %10)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %83

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  store i32 %34, i32* %9, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @BMG160_ANY_MOTION_BIT_X, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = load i32, i32* @IIO_ANGL_VEL, align 4
  %45 = load i32, i32* @IIO_MOD_X, align 4
  %46 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @IIO_MOD_EVENT_CODE(i32 %44, i32 0, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %50 = call i32 @iio_get_time_ns(%struct.iio_dev* %49)
  %51 = call i32 @iio_push_event(%struct.iio_dev* %43, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @BMG160_ANY_MOTION_BIT_Y, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %59 = load i32, i32* @IIO_ANGL_VEL, align 4
  %60 = load i32, i32* @IIO_MOD_Y, align 4
  %61 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @IIO_MOD_EVENT_CODE(i32 %59, i32 0, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %65 = call i32 @iio_get_time_ns(%struct.iio_dev* %64)
  %66 = call i32 @iio_push_event(%struct.iio_dev* %58, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %57, %52
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @BMG160_ANY_MOTION_BIT_Z, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = load i32, i32* @IIO_ANGL_VEL, align 4
  %75 = load i32, i32* @IIO_MOD_Z, align 4
  %76 = load i32, i32* @IIO_EV_TYPE_ROC, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @IIO_MOD_EVENT_CODE(i32 %74, i32 0, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %80 = call i32 @iio_get_time_ns(%struct.iio_dev* %79)
  %81 = call i32 @iio_push_event(%struct.iio_dev* %73, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %72, %67
  br label %83

83:                                               ; preds = %82, %26
  %84 = load %struct.bmg160_data*, %struct.bmg160_data** %6, align 8
  %85 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load %struct.bmg160_data*, %struct.bmg160_data** %6, align 8
  %90 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BMG160_REG_INT_RST_LATCH, align 4
  %93 = load i32, i32* @BMG160_INT_MODE_LATCH_INT, align 4
  %94 = load i32, i32* @BMG160_INT_MODE_LATCH_RESET, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @regmap_write(i32 %91, i32 %92, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %88
  br label %103

103:                                              ; preds = %102, %83
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %104
}

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
