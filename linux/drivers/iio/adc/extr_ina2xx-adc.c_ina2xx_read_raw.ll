; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ina2xx_chip_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ina2xx_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ina2xx_chip_info*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev* %15)
  store %struct.ina2xx_chip_info* %16, %struct.ina2xx_chip_info** %13, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %166 [
    i64 134, label %18
    i64 135, label %58
    i64 136, label %64
    i64 133, label %82
    i64 132, label %88
    i64 137, label %143
  ]

18:                                               ; preds = %5
  %19 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %20 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_read(i32 %21, i32 %24, i32* %14)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %169

30:                                               ; preds = %18
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @is_signed_reg(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %14, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 131
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %49 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %47, %42
  %57 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %57, i32* %6, align 4
  br label %169

58:                                               ; preds = %5
  %59 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %60 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %63, i32* %6, align 4
  br label %169

64:                                               ; preds = %5
  %65 = load i32*, i32** %9, align 8
  store i32 0, i32* %65, align 4
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %67 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %72 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %80

75:                                               ; preds = %64
  %76 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %77 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %81, i32* %6, align 4
  br label %169

82:                                               ; preds = %5
  %83 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %84 = call i32 @SAMPLING_PERIOD(%struct.ina2xx_chip_info* %83)
  %85 = call i32 @DIV_ROUND_CLOSEST(i32 1000000, i32 %84)
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %87, i32* %6, align 4
  br label %169

88:                                               ; preds = %5
  %89 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %90 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %140 [
    i32 128, label %92
    i32 131, label %101
    i32 130, label %110
    i32 129, label %122
  ]

92:                                               ; preds = %88
  %93 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %94 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %93, i32 0, i32 6
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %10, align 8
  store i32 1000000, i32* %99, align 4
  %100 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %100, i32* %6, align 4
  br label %169

101:                                              ; preds = %88
  %102 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %103 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %102, i32 0, i32 6
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %10, align 8
  store i32 1000, i32* %108, align 4
  %109 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %109, i32* %6, align 4
  br label %169

110:                                              ; preds = %88
  %111 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %112 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %111, i32 0, i32 6
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %118 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %121, i32* %6, align 4
  br label %169

122:                                              ; preds = %88
  %123 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %124 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %123, i32 0, i32 6
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %129 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %128, i32 0, i32 6
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %127, %132
  %134 = load i32*, i32** %9, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %136 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %139, i32* %6, align 4
  br label %169

140:                                              ; preds = %88
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %169

143:                                              ; preds = %5
  %144 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %145 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %163 [
    i32 128, label %147
    i32 131, label %154
  ]

147:                                              ; preds = %143
  %148 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %149 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %9, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32*, i32** %10, align 8
  store i32 1000, i32* %152, align 4
  %153 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %153, i32* %6, align 4
  br label %169

154:                                              ; preds = %143
  %155 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %13, align 8
  %156 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 32
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 2
  %161 = load i32*, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %162, i32* %6, align 4
  br label %169

163:                                              ; preds = %143
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %6, align 4
  br label %169

166:                                              ; preds = %5
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %166, %163, %154, %147, %140, %122, %110, %101, %92, %82, %80, %58, %56, %28
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @is_signed_reg(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @SAMPLING_PERIOD(%struct.ina2xx_chip_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
