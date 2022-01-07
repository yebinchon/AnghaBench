; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.rpr0521_data = type { i32, i32 }

@IIO_INTENSITY = common dso_local global i32 0, align 4
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@rpr0521_data_reg = common dso_local global %struct.TYPE_2__* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @rpr0521_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rpr0521_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.rpr0521_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.rpr0521_data* %18, %struct.rpr0521_data** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %153 [
    i64 130, label %20
    i64 128, label %97
    i64 129, label %117
    i64 131, label %137
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IIO_INTENSITY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IIO_PROXIMITY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %156

35:                                               ; preds = %26, %20
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %156

43:                                               ; preds = %35
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rpr0521_data_reg, align 8
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %52 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @rpr0521_set_power_state(%struct.rpr0521_data* %54, i32 1, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %82

60:                                               ; preds = %43
  %61 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %62 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rpr0521_data_reg, align 8
  %65 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regmap_bulk_read(i32 %63, i32 %70, i32* %16, i32 4)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @rpr0521_set_power_state(%struct.rpr0521_data* %75, i32 0, i32 %76)
  br label %82

78:                                               ; preds = %60
  %79 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @rpr0521_set_power_state(%struct.rpr0521_data* %79, i32 0, i32 %80)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %78, %74, %59
  %83 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %84 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %6, align 4
  br label %156

92:                                               ; preds = %82
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %96, i32* %6, align 4
  br label %156

97:                                               ; preds = %5
  %98 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %99 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %98, i32 0, i32 0
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %102 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %103 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @rpr0521_get_gain(%struct.rpr0521_data* %101, i64 %104, i32* %105, i32* %106)
  store i32 %107, i32* %13, align 4
  %108 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %109 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %97
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %6, align 4
  br label %156

115:                                              ; preds = %97
  %116 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %116, i32* %6, align 4
  br label %156

117:                                              ; preds = %5
  %118 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %119 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %118, i32 0, i32 0
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %122 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %123 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @rpr0521_read_samp_freq(%struct.rpr0521_data* %121, i32 %124, i32* %125, i32* %126)
  store i32 %127, i32* %13, align 4
  %128 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %129 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %117
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %6, align 4
  br label %156

135:                                              ; preds = %117
  %136 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %136, i32* %6, align 4
  br label %156

137:                                              ; preds = %5
  %138 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %139 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %138, i32 0, i32 0
  %140 = call i32 @mutex_lock(i32* %139)
  %141 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @rpr0521_read_ps_offset(%struct.rpr0521_data* %141, i32* %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %145 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %144, i32 0, i32 0
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %6, align 4
  br label %156

151:                                              ; preds = %137
  %152 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %152, i32* %6, align 4
  br label %156

153:                                              ; preds = %5
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %153, %151, %149, %135, %133, %115, %113, %92, %90, %40, %32
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local %struct.rpr0521_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpr0521_set_power_state(%struct.rpr0521_data*, i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rpr0521_get_gain(%struct.rpr0521_data*, i64, i32*, i32*) #1

declare dso_local i32 @rpr0521_read_samp_freq(%struct.rpr0521_data*, i32, i32*, i32*) #1

declare dso_local i32 @rpr0521_read_ps_offset(%struct.rpr0521_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
