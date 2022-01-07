; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ad7793_state = type { i32, i32**, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@AD7793_CONF_UNIPOLAR = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7793_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7793_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7793_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.ad7793_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.ad7793_state* %19, %struct.ad7793_state** %12, align 8
  %20 = load %struct.ad7793_state*, %struct.ad7793_state** %12, align 8
  %21 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AD7793_CONF_UNIPOLAR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load i64, i64* %11, align 8
  switch i64 %29, label %159 [
    i64 132, label %30
    i64 130, label %41
    i64 133, label %103
    i64 131, label %145
  ]

30:                                               ; preds = %5
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @ad_sigma_delta_single_conversion(%struct.iio_dev* %31, %struct.iio_chan_spec* %32, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %162

39:                                               ; preds = %30
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %162

41:                                               ; preds = %5
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %82 [
    i32 128, label %45
    i32 129, label %81
  ]

45:                                               ; preds = %41
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.ad7793_state*, %struct.ad7793_state** %12, align 8
  %52 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.ad7793_state*, %struct.ad7793_state** %12, align 8
  %55 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %53, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.ad7793_state*, %struct.ad7793_state** %12, align 8
  %66 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = load %struct.ad7793_state*, %struct.ad7793_state** %12, align 8
  %69 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %67, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %79, i32* %6, align 4
  br label %162

80:                                               ; preds = %45
  store i64 7020000000000, i64* %14, align 8
  br label %85

81:                                               ; preds = %41
  store i64 1444444444444444, i64* %14, align 8
  br label %85

82:                                               ; preds = %41
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %162

85:                                               ; preds = %81, %80
  %86 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %87 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 0, i32 1
  %94 = sub nsw i32 %89, %93
  %95 = load i64, i64* %14, align 8
  %96 = zext i32 %94 to i64
  %97 = lshr i64 %95, %96
  store i64 %97, i64* %14, align 8
  %98 = load i32*, i32** %9, align 8
  store i32 0, i32* %98, align 4
  %99 = load i64, i64* %14, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %10, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %102, i32* %6, align 4
  br label %162

103:                                              ; preds = %5
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %108 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = shl i32 1, %111
  %113 = sub nsw i32 0, %112
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  br label %117

115:                                              ; preds = %103
  %116 = load i32*, i32** %9, align 8
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %115, %106
  %118 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %119 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 129
  br i1 %121, label %122, label %143

122:                                              ; preds = %117
  %123 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %124 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 0, i32 1
  %131 = sub nsw i32 %126, %130
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = zext i32 %132 to i64
  %134 = shl i64 273, %133
  store i64 %134, i64* %16, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i32 @do_div(i64 %135, i32 1444)
  %137 = load i64, i64* %16, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sub i64 %140, %137
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  br label %143

143:                                              ; preds = %122, %117
  %144 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %144, i32* %6, align 4
  br label %162

145:                                              ; preds = %5
  %146 = load %struct.ad7793_state*, %struct.ad7793_state** %12, align 8
  %147 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.ad7793_state*, %struct.ad7793_state** %12, align 8
  %152 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @AD7793_MODE_RATE(i32 %153)
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %158, i32* %6, align 4
  br label %162

159:                                              ; preds = %5
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %159, %145, %143, %85, %82, %50, %39, %37
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.ad7793_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad_sigma_delta_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @AD7793_MODE_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
