; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_report_motion_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_report_motion_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.kxcjk1013_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KXCJK1013_REG_INT_SRC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error reading reg_int_src2\0A\00", align 1
@KXCJK1013_REG_INT_SRC2_BIT_XN = common dso_local global i32 0, align 4
@IIO_ACCEL = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@KXCJK1013_REG_INT_SRC2_BIT_XP = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@KXCJK1013_REG_INT_SRC2_BIT_YN = common dso_local global i32 0, align 4
@IIO_MOD_Y = common dso_local global i32 0, align 4
@KXCJK1013_REG_INT_SRC2_BIT_YP = common dso_local global i32 0, align 4
@KXCJK1013_REG_INT_SRC2_BIT_ZN = common dso_local global i32 0, align 4
@IIO_MOD_Z = common dso_local global i32 0, align 4
@KXCJK1013_REG_INT_SRC2_BIT_ZP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @kxcjk1013_report_motion_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kxcjk1013_report_motion_event(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.kxcjk1013_data*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %5)
  store %struct.kxcjk1013_data* %6, %struct.kxcjk1013_data** %3, align 8
  %7 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %8 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @KXCJK1013_REG_INT_SRC2, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %16 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %116

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KXCJK1013_REG_INT_SRC2_BIT_XN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %27 = load i32, i32* @IIO_ACCEL, align 4
  %28 = load i32, i32* @IIO_MOD_X, align 4
  %29 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %30 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %31 = call i32 @IIO_MOD_EVENT_CODE(i32 %27, i32 0, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %33 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iio_push_event(%struct.iio_dev* %26, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %25, %20
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @KXCJK1013_REG_INT_SRC2_BIT_XP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %43 = load i32, i32* @IIO_ACCEL, align 4
  %44 = load i32, i32* @IIO_MOD_X, align 4
  %45 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %46 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %47 = call i32 @IIO_MOD_EVENT_CODE(i32 %43, i32 0, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %49 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @iio_push_event(%struct.iio_dev* %42, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %41, %36
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @KXCJK1013_REG_INT_SRC2_BIT_YN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %59 = load i32, i32* @IIO_ACCEL, align 4
  %60 = load i32, i32* @IIO_MOD_Y, align 4
  %61 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %62 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %63 = call i32 @IIO_MOD_EVENT_CODE(i32 %59, i32 0, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %65 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @iio_push_event(%struct.iio_dev* %58, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %57, %52
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @KXCJK1013_REG_INT_SRC2_BIT_YP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %75 = load i32, i32* @IIO_ACCEL, align 4
  %76 = load i32, i32* @IIO_MOD_Y, align 4
  %77 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %78 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %79 = call i32 @IIO_MOD_EVENT_CODE(i32 %75, i32 0, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %81 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @iio_push_event(%struct.iio_dev* %74, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %73, %68
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @KXCJK1013_REG_INT_SRC2_BIT_ZN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %91 = load i32, i32* @IIO_ACCEL, align 4
  %92 = load i32, i32* @IIO_MOD_Z, align 4
  %93 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %94 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %95 = call i32 @IIO_MOD_EVENT_CODE(i32 %91, i32 0, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %97 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @iio_push_event(%struct.iio_dev* %90, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %89, %84
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @KXCJK1013_REG_INT_SRC2_BIT_ZP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %107 = load i32, i32* @IIO_ACCEL, align 4
  %108 = load i32, i32* @IIO_MOD_Z, align 4
  %109 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %110 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %111 = call i32 @IIO_MOD_EVENT_CODE(i32 %107, i32 0, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %113 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @iio_push_event(%struct.iio_dev* %106, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %14, %105, %100
  ret void
}

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
