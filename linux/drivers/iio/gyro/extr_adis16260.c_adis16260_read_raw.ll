; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16260.c_adis16260_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16260.c_adis16260_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.adis16260 = type { %struct.adis, %struct.adis16260_chip_info* }
%struct.adis = type { i32 }
%struct.adis16260_chip_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ADIS16260_ERROR_ACTIVE = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@adis16260_addresses = common dso_local global i32** null, align 8
@ADIS16260_SMPL_PRD = common dso_local global i32 0, align 4
@ADIS16260_SMPL_PRD_TIME_BASE = common dso_local global i32 0, align 4
@ADIS16260_SMPL_PRD_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16260_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16260_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16260*, align 8
  %13 = alloca %struct.adis16260_chip_info*, align 8
  %14 = alloca %struct.adis*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.adis16260* @iio_priv(%struct.iio_dev* %18)
  store %struct.adis16260* %19, %struct.adis16260** %12, align 8
  %20 = load %struct.adis16260*, %struct.adis16260** %12, align 8
  %21 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %20, i32 0, i32 1
  %22 = load %struct.adis16260_chip_info*, %struct.adis16260_chip_info** %21, align 8
  store %struct.adis16260_chip_info* %22, %struct.adis16260_chip_info** %13, align 8
  %23 = load %struct.adis16260*, %struct.adis16260** %12, align 8
  %24 = getelementptr inbounds %struct.adis16260, %struct.adis16260* %23, i32 0, i32 0
  store %struct.adis* %24, %struct.adis** %14, align 8
  %25 = load i64, i64* %11, align 8
  switch i64 %25, label %156 [
    i64 133, label %26
    i64 131, label %32
    i64 134, label %71
    i64 136, label %74
    i64 135, label %95
    i64 132, label %115
  ]

26:                                               ; preds = %5
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = load i32, i32* @ADIS16260_ERROR_ACTIVE, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @adis_single_conversion(%struct.iio_dev* %27, %struct.iio_chan_spec* %28, i32 %29, i32* %30)
  store i32 %31, i32* %6, align 4
  br label %159

32:                                               ; preds = %5
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %68 [
    i32 137, label %36
    i32 130, label %46
    i32 128, label %51
    i32 129, label %64
  ]

36:                                               ; preds = %32
  %37 = load %struct.adis16260_chip_info*, %struct.adis16260_chip_info** %13, align 8
  %38 = getelementptr inbounds %struct.adis16260_chip_info, %struct.adis16260_chip_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.adis16260_chip_info*, %struct.adis16260_chip_info** %13, align 8
  %42 = getelementptr inbounds %struct.adis16260_chip_info, %struct.adis16260_chip_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %45, i32* %6, align 4
  br label %159

46:                                               ; preds = %32
  %47 = load i32*, i32** %9, align 8
  store i32 0, i32* %47, align 4
  %48 = call i32 @IIO_DEGREE_TO_RAD(i32 36630)
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %50, i32* %6, align 4
  br label %159

51:                                               ; preds = %32
  %52 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %53 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 831500, i32* %58, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load i32*, i32** %9, align 8
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 610500, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %63, i32* %6, align 4
  br label %159

64:                                               ; preds = %32
  %65 = load i32*, i32** %9, align 8
  store i32 145, i32* %65, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 300000, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %67, i32* %6, align 4
  br label %159

68:                                               ; preds = %32
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %159

71:                                               ; preds = %5
  %72 = load i32*, i32** %9, align 8
  store i32 172, i32* %72, align 4
  %73 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %73, i32* %6, align 4
  br label %159

74:                                               ; preds = %5
  %75 = load i32**, i32*** @adis16260_addresses, align 8
  %76 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %77 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  %83 = load %struct.adis*, %struct.adis** %14, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @adis_read_reg_16(%struct.adis* %83, i32 %84, i32* %17)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %6, align 4
  br label %159

90:                                               ; preds = %74
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @sign_extend32(i32 %91, i32 11)
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %94, i32* %6, align 4
  br label %159

95:                                               ; preds = %5
  %96 = load i32**, i32*** @adis16260_addresses, align 8
  %97 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %98 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32*, i32** %96, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %16, align 4
  %104 = load %struct.adis*, %struct.adis** %14, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @adis_read_reg_16(%struct.adis* %104, i32 %105, i32* %17)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %6, align 4
  br label %159

111:                                              ; preds = %95
  %112 = load i32, i32* %17, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %114, i32* %6, align 4
  br label %159

115:                                              ; preds = %5
  %116 = load %struct.adis*, %struct.adis** %14, align 8
  %117 = load i32, i32* @ADIS16260_SMPL_PRD, align 4
  %118 = call i32 @adis_read_reg_16(%struct.adis* %116, i32 %117, i32* %17)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %6, align 4
  br label %159

123:                                              ; preds = %115
  %124 = load %struct.adis*, %struct.adis** %14, align 8
  %125 = getelementptr inbounds %struct.adis, %struct.adis* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.TYPE_2__* @spi_get_device_id(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* @ADIS16260_SMPL_PRD_TIME_BASE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 8, i32 256
  %138 = load i32*, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  br label %147

139:                                              ; preds = %123
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @ADIS16260_SMPL_PRD_TIME_BASE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 66, i32 2048
  %146 = load i32*, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %139, %131
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* @ADIS16260_SMPL_PRD_DIV_MASK, align 4
  %150 = and i32 %148, %149
  %151 = add nsw i32 %150, 1
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %155, i32* %6, align 4
  br label %159

156:                                              ; preds = %5
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %156, %147, %121, %111, %109, %90, %88, %71, %68, %64, %62, %46, %36, %26
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local %struct.adis16260* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @IIO_DEGREE_TO_RAD(i32) #1

declare dso_local i32 @adis_read_reg_16(%struct.adis*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local %struct.TYPE_2__* @spi_get_device_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
