; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mma8452_data = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32** }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@MMA8452_DATA_CFG_FS_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@mma8452_samp_freq = common dso_local global i32** null, align 8
@MMA8452_OFF_X = common dso_local global i64 0, align 8
@MMA8452_DATA_CFG_HPF_MASK = common dso_local global i32 0, align 4
@mma8452_os_ratio = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mma8452_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mma8452_data*, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.mma8452_data* %17, %struct.mma8452_data** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %175 [
    i64 130, label %19
    i64 128, label %62
    i64 129, label %93
    i64 133, label %113
    i64 132, label %132
    i64 131, label %154
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %6, align 4
  br label %178

26:                                               ; preds = %19
  %27 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %28 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %27, i32 0, i32 3
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %32 = call i32 @mma8452_read(%struct.mma8452_data* %30, i32* %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %34 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %33, i32 0, i32 3
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %36)
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  br label %178

42:                                               ; preds = %26
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %48, %52
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @sign_extend32(i32 %53, i32 %58)
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %6, align 4
  br label %178

62:                                               ; preds = %5
  %63 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %64 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MMA8452_DATA_CFG_FS_MASK, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %69 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %81 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %92, i32* %6, align 4
  br label %178

93:                                               ; preds = %5
  %94 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %95 = call i32 @mma8452_get_odr_index(%struct.mma8452_data* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32**, i32*** @mma8452_samp_freq, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32**, i32*** @mma8452_samp_freq, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %112, i32* %6, align 4
  br label %178

113:                                              ; preds = %5
  %114 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %115 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @MMA8452_OFF_X, align 8
  %118 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %119 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %117, %120
  %122 = call i32 @i2c_smbus_read_byte_data(i32 %116, i64 %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %6, align 4
  br label %178

127:                                              ; preds = %113
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @sign_extend32(i32 %128, i32 7)
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %131, i32* %6, align 4
  br label %178

132:                                              ; preds = %5
  %133 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %134 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MMA8452_DATA_CFG_HPF_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %132
  %140 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @mma8452_read_hp_filter(%struct.mma8452_data* %140, i32* %141, i32* %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %6, align 4
  br label %178

148:                                              ; preds = %139
  br label %152

149:                                              ; preds = %132
  %150 = load i32*, i32** %9, align 8
  store i32 0, i32* %150, align 4
  %151 = load i32*, i32** %10, align 8
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %148
  %153 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %153, i32* %6, align 4
  br label %178

154:                                              ; preds = %5
  %155 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %156 = call i32 @mma8452_get_power_mode(%struct.mma8452_data* %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %6, align 4
  br label %178

161:                                              ; preds = %154
  %162 = load %struct.mma8452_data*, %struct.mma8452_data** %12, align 8
  %163 = call i32 @mma8452_get_odr_index(%struct.mma8452_data* %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32**, i32*** @mma8452_os_ratio, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %9, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %174, i32* %6, align 4
  br label %178

175:                                              ; preds = %5
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %175, %161, %159, %152, %146, %127, %125, %93, %62, %42, %40, %24
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma8452_read(%struct.mma8452_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mma8452_get_odr_index(%struct.mma8452_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i64) #1

declare dso_local i32 @mma8452_read_hp_filter(%struct.mma8452_data*, i32*, i32*) #1

declare dso_local i32 @mma8452_get_power_mode(%struct.mma8452_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
