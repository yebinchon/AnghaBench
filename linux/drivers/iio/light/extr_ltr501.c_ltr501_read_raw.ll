; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.ltr501_data = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LTR501_ALS_DATA1 = common dso_local global i32 0, align 4
@LTR501_PS_DATA_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@LTR501_CONTR_PS_GAIN_MASK = common dso_local global i32 0, align 4
@LTR501_CONTR_PS_GAIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ltr501_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ltr501_data*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ltr501_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.ltr501_data* %17, %struct.ltr501_data** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %231 [
    i64 134, label %19
    i64 133, label %59
    i64 131, label %125
    i64 135, label %202
    i64 132, label %214
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %56 [
    i32 129, label %23
  ]

23:                                               ; preds = %19
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %234

30:                                               ; preds = %23
  %31 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %32 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %31, i32 0, i32 4
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %36 = call i32 @ltr501_read_als(%struct.ltr501_data* %34, i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %38 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %37, i32 0, i32 4
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %40)
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %6, align 4
  br label %234

46:                                               ; preds = %30
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = call i32 @ltr501_calculate_lux(i32 %49, i32 %52)
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %6, align 4
  br label %234

56:                                               ; preds = %19
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %234

59:                                               ; preds = %5
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %234

66:                                               ; preds = %59
  %67 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %68 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %118 [
    i32 130, label %70
    i32 128, label %100
  ]

70:                                               ; preds = %66
  %71 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %72 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %71, i32 0, i32 4
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %76 = call i32 @ltr501_read_als(%struct.ltr501_data* %74, i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %78 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %77, i32 0, i32 4
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %121

83:                                               ; preds = %70
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @LTR501_ALS_DATA1, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  br label %95

92:                                               ; preds = %83
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i32 [ %91, %89 ], [ %94, %92 ]
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %99, i32* %14, align 4
  br label %121

100:                                              ; preds = %66
  %101 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %102 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %101, i32 0, i32 3
  %103 = call i32 @mutex_lock(i32* %102)
  %104 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %105 = call i32 @ltr501_read_ps(%struct.ltr501_data* %104)
  store i32 %105, i32* %14, align 4
  %106 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %107 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %106, i32 0, i32 3
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %121

112:                                              ; preds = %100
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @LTR501_PS_DATA_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %117, i32* %14, align 4
  br label %121

118:                                              ; preds = %66
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %118, %112, %111, %95, %82
  %122 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %123 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %234

125:                                              ; preds = %5
  %126 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %127 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %199 [
    i32 130, label %129
    i32 128, label %168
  ]

129:                                              ; preds = %125
  %130 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %131 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %134 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %133, i32 0, i32 2
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %132, %137
  %139 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %140 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %138, %143
  store i32 %144, i32* %15, align 4
  %145 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %146 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  %156 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %157 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %167, i32* %6, align 4
  br label %234

168:                                              ; preds = %125
  %169 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %170 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @LTR501_CONTR_PS_GAIN_MASK, align 4
  %173 = and i32 %171, %172
  %174 = load i32, i32* @LTR501_CONTR_PS_GAIN_SHIFT, align 4
  %175 = ashr i32 %173, %174
  store i32 %175, i32* %15, align 4
  %176 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %177 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %176, i32 0, i32 2
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %9, align 8
  store i32 %185, i32* %186, align 4
  %187 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %188 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %187, i32 0, i32 2
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %10, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %198, i32* %6, align 4
  br label %234

199:                                              ; preds = %125
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %6, align 4
  br label %234

202:                                              ; preds = %5
  %203 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %204 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  switch i32 %205, label %211 [
    i32 130, label %206
  ]

206:                                              ; preds = %202
  %207 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = call i32 @ltr501_read_it_time(%struct.ltr501_data* %207, i32* %208, i32* %209)
  store i32 %210, i32* %6, align 4
  br label %234

211:                                              ; preds = %202
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  br label %234

214:                                              ; preds = %5
  %215 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %216 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  switch i32 %217, label %228 [
    i32 130, label %218
    i32 128, label %223
  ]

218:                                              ; preds = %214
  %219 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @ltr501_als_read_samp_freq(%struct.ltr501_data* %219, i32* %220, i32* %221)
  store i32 %222, i32* %6, align 4
  br label %234

223:                                              ; preds = %214
  %224 = load %struct.ltr501_data*, %struct.ltr501_data** %12, align 8
  %225 = load i32*, i32** %9, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = call i32 @ltr501_ps_read_samp_freq(%struct.ltr501_data* %224, i32* %225, i32* %226)
  store i32 %227, i32* %6, align 4
  br label %234

228:                                              ; preds = %214
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %6, align 4
  br label %234

231:                                              ; preds = %5
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %231, %228, %223, %218, %211, %206, %199, %168, %129, %121, %64, %56, %46, %44, %28
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local %struct.ltr501_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ltr501_read_als(%struct.ltr501_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ltr501_calculate_lux(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ltr501_read_ps(%struct.ltr501_data*) #1

declare dso_local i32 @ltr501_read_it_time(%struct.ltr501_data*, i32*, i32*) #1

declare dso_local i32 @ltr501_als_read_samp_freq(%struct.ltr501_data*, i32*, i32*) #1

declare dso_local i32 @ltr501_ps_read_samp_freq(%struct.ltr501_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
