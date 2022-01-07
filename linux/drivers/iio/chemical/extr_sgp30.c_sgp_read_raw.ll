; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.sgp_data = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.sgp_crc_word* }
%struct.sgp_crc_word = type { i32 }
%struct.TYPE_3__ = type { %struct.sgp_crc_word* }

@IAQ_BUFFER_VALID = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IAQ_BUFFER_EMPTY = common dso_local global i32 0, align 4
@SGP_MEASUREMENT_LEN = common dso_local global i32 0, align 4
@SGP_MEASUREMENT_DURATION_US = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @sgp_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgp_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sgp_data*, align 8
  %13 = alloca %struct.sgp_crc_word*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.sgp_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.sgp_data* %16, %struct.sgp_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %138 [
    i64 135, label %18
    i64 134, label %66
  ]

18:                                               ; preds = %5
  %19 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %20 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %23 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IAQ_BUFFER_VALID, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %29 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %143

33:                                               ; preds = %18
  %34 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %35 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.sgp_crc_word*, %struct.sgp_crc_word** %36, align 8
  store %struct.sgp_crc_word* %37, %struct.sgp_crc_word** %13, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %59 [
    i32 132, label %41
    i32 129, label %41
    i32 133, label %50
  ]

41:                                               ; preds = %33, %33
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  %43 = load %struct.sgp_crc_word*, %struct.sgp_crc_word** %13, align 8
  %44 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %43, i64 1
  %45 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %49, i32* %14, align 4
  br label %62

50:                                               ; preds = %33
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  %52 = load %struct.sgp_crc_word*, %struct.sgp_crc_word** %13, align 8
  %53 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %52, i64 0
  %54 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %58, i32* %14, align 4
  br label %62

59:                                               ; preds = %33
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %59, %50, %41
  %63 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %64 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %141

66:                                               ; preds = %5
  %67 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %68 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %71 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %76 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IAQ_BUFFER_EMPTY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  br label %84

83:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %86 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load %struct.sgp_crc_word*, %struct.sgp_crc_word** %87, align 8
  store %struct.sgp_crc_word* %88, %struct.sgp_crc_word** %13, align 8
  br label %103

89:                                               ; preds = %66
  %90 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %91 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %92 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %95 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %94, i32 0, i32 1
  %96 = load i32, i32* @SGP_MEASUREMENT_LEN, align 4
  %97 = load i32, i32* @SGP_MEASUREMENT_DURATION_US, align 4
  %98 = call i32 @sgp_read_cmd(%struct.sgp_data* %90, i32 %93, %struct.TYPE_4__* %95, i32 %96, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %100 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.sgp_crc_word*, %struct.sgp_crc_word** %101, align 8
  store %struct.sgp_crc_word* %102, %struct.sgp_crc_word** %13, align 8
  br label %103

103:                                              ; preds = %89, %84
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %108 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %6, align 4
  br label %143

111:                                              ; preds = %103
  %112 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %113 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %131 [
    i32 131, label %115
    i32 128, label %123
    i32 130, label %123
  ]

115:                                              ; preds = %111
  %116 = load %struct.sgp_crc_word*, %struct.sgp_crc_word** %13, align 8
  %117 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %116, i64 1
  %118 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @be16_to_cpu(i32 %119)
  %121 = load i32*, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %122, i32* %14, align 4
  br label %134

123:                                              ; preds = %111, %111
  %124 = load %struct.sgp_crc_word*, %struct.sgp_crc_word** %13, align 8
  %125 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %124, i64 0
  %126 = getelementptr inbounds %struct.sgp_crc_word, %struct.sgp_crc_word* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @be16_to_cpu(i32 %127)
  %129 = load i32*, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %130, i32* %14, align 4
  br label %134

131:                                              ; preds = %111
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %131, %123, %115
  %135 = load %struct.sgp_data*, %struct.sgp_data** %12, align 8
  %136 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  br label %141

138:                                              ; preds = %5
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %143

141:                                              ; preds = %134, %62
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %138, %106, %27
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local %struct.sgp_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @sgp_read_cmd(%struct.sgp_data*, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
