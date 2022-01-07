; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1027.c_max1027_read_single_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1027.c_max1027_read_single_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.max1027_state = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"trigger mode already enabled\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MAX1027_SETUP_REG = common dso_local global i32 0, align 4
@MAX1027_REF_MODE2 = common dso_local global i32 0, align 4
@MAX1027_CKS_MODE2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to configure setup register\0A\00", align 1
@MAX1027_CONV_REG = common dso_local global i32 0, align 4
@MAX1027_NOSCAN = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i64 0, align 8
@MAX1027_TEMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to configure conversion register\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @max1027_read_single_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1027_read_single_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.max1027_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.max1027_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.max1027_state* %11, %struct.max1027_state** %9, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call i64 @iio_buffer_enabled(%struct.iio_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %107

21:                                               ; preds = %3
  %22 = load i32, i32* @MAX1027_SETUP_REG, align 4
  %23 = load i32, i32* @MAX1027_REF_MODE2, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAX1027_CKS_MODE2, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %28 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %30 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %33 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %32, i32 0, i32 0
  %34 = call i32 @spi_write(i32 %31, i32* %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %107

42:                                               ; preds = %21
  %43 = load i32, i32* @MAX1027_CONV_REG, align 4
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @MAX1027_CHAN(i32 %46)
  %48 = or i32 %43, %47
  %49 = load i32, i32* @MAX1027_NOSCAN, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %52 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IIO_TEMP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load i32, i32* @MAX1027_TEMP, align 4
  %60 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %61 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %42
  %65 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %66 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %69 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %68, i32 0, i32 0
  %70 = call i32 @spi_write(i32 %67, i32* %69, i32 1)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %107

78:                                               ; preds = %64
  %79 = call i32 @mdelay(i32 1)
  %80 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %81 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %84 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %87 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IIO_TEMP, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 4, i32 2
  %93 = call i32 @spi_read(i32 %82, i32* %85, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %78
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %107

98:                                               ; preds = %78
  %99 = load %struct.max1027_state*, %struct.max1027_state** %9, align 8
  %100 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @be16_to_cpu(i32 %103)
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %98, %96, %73, %37, %15
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.max1027_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @MAX1027_CHAN(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spi_read(i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
