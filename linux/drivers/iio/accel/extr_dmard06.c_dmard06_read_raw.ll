; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard06.c_dmard06_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard06.c_dmard06_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.dmard06_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Error reading data: %d\0A\00", align 1
@DMARD06_SIGN_BIT = common dso_local global i32 0, align 4
@DMARD06_CHIP_ID = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMARD06_TEMP_CENTER_VAL = common dso_local global i32 0, align 4
@DMARD06_AXIS_SCALE_VAL = common dso_local global i32 0, align 4
@DMARD05_AXIS_SCALE_VAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @dmard06_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmard06_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dmard06_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.dmard06_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.dmard06_data* %15, %struct.dmard06_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %105 [
    i64 130, label %17
    i64 131, label %72
    i64 129, label %83
  ]

17:                                               ; preds = %5
  %18 = load %struct.dmard06_data*, %struct.dmard06_data** %12, align 8
  %19 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %20, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.dmard06_data*, %struct.dmard06_data** %12, align 8
  %29 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %108

35:                                               ; preds = %17
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @DMARD06_SIGN_BIT, align 4
  %38 = call i32 @sign_extend32(i32 %36, i32 %37)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.dmard06_data*, %struct.dmard06_data** %12, align 8
  %41 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMARD06_CHIP_ID, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 1
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %35
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %69 [
    i32 132, label %54
    i32 128, label %56
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %6, align 4
  br label %108

56:                                               ; preds = %50
  %57 = load %struct.dmard06_data*, %struct.dmard06_data** %12, align 8
  %58 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMARD06_CHIP_ID, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 2
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %68, i32* %6, align 4
  br label %108

69:                                               ; preds = %50
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %108

72:                                               ; preds = %5
  %73 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %74 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %80 [
    i32 128, label %76
  ]

76:                                               ; preds = %72
  %77 = load i32, i32* @DMARD06_TEMP_CENTER_VAL, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %79, i32* %6, align 4
  br label %108

80:                                               ; preds = %72
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %108

83:                                               ; preds = %5
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %102 [
    i32 132, label %87
  ]

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  store i32 0, i32* %88, align 4
  %89 = load %struct.dmard06_data*, %struct.dmard06_data** %12, align 8
  %90 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DMARD06_CHIP_ID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @DMARD06_AXIS_SCALE_VAL, align 4
  %96 = load i32*, i32** %10, align 8
  store i32 %95, i32* %96, align 4
  br label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @DMARD05_AXIS_SCALE_VAL, align 4
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %101, i32* %6, align 4
  br label %108

102:                                              ; preds = %83
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %108

105:                                              ; preds = %5
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %102, %100, %80, %76, %69, %67, %54, %27
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.dmard06_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
