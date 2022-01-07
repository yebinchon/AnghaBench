; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.mma9553_data = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MMA9553_REG_STEPCNT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@MMA9553_REG_DISTANCE = common dso_local global i32 0, align 4
@MMA9553_REG_STATUS = common dso_local global i32 0, align 4
@MMA9553_MASK_STATUS_ACTIVITY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z = common dso_local global i32 0, align 4
@MMA9553_REG_SPEED = common dso_local global i32 0, align 4
@MMA9553_REG_CALORIES = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_HEIGHT = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_WEIGHT = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_FILTSTEP = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_FILTTIME = common dso_local global i32 0, align 4
@MMA9553_MASK_CONF_SPDPRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mma9553_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mma9553_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.mma9553_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.mma9553_data* %17, %struct.mma9553_data** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %248 [
    i64 134, label %19
    i64 133, label %74
    i64 132, label %129
    i64 136, label %156
    i64 140, label %162
    i64 139, label %178
    i64 138, label %188
    i64 137, label %205
    i64 135, label %222
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %71 [
    i32 129, label %23
    i32 131, label %35
    i32 141, label %47
  ]

23:                                               ; preds = %19
  %24 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %25 = load i32, i32* @MMA9553_REG_STEPCNT, align 4
  %26 = call i32 @mma9553_read_status_word(%struct.mma9553_data* %24, i32 %25, i32* %14)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %251

31:                                               ; preds = %23
  %32 = load i32, i32* %14, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %34, i32* %6, align 4
  br label %251

35:                                               ; preds = %19
  %36 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %37 = load i32, i32* @MMA9553_REG_DISTANCE, align 4
  %38 = call i32 @mma9553_read_status_word(%struct.mma9553_data* %36, i32 %37, i32* %14)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %251

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %46, i32* %6, align 4
  br label %251

47:                                               ; preds = %19
  %48 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %49 = load i32, i32* @MMA9553_REG_STATUS, align 4
  %50 = call i32 @mma9553_read_status_word(%struct.mma9553_data* %48, i32 %49, i32* %14)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %251

55:                                               ; preds = %47
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @MMA9553_MASK_STATUS_ACTIVITY, align 4
  %58 = call i8* @mma9553_get_bits(i32 %56, i32 %57)
  store i8* %58, i8** %15, align 8
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @mma9553_activity_to_mod(i8* %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32*, i32** %9, align 8
  store i32 100, i32* %66, align 4
  br label %69

67:                                               ; preds = %55
  %68 = load i32*, i32** %9, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %6, align 4
  br label %251

71:                                               ; preds = %19
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %251

74:                                               ; preds = %5
  %75 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %76 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %126 [
    i32 128, label %78
    i32 130, label %99
    i32 142, label %111
  ]

78:                                               ; preds = %74
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %251

87:                                               ; preds = %78
  %88 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %89 = load i32, i32* @MMA9553_REG_SPEED, align 4
  %90 = call i32 @mma9553_read_status_word(%struct.mma9553_data* %88, i32 %89, i32* %14)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %6, align 4
  br label %251

95:                                               ; preds = %87
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %98, i32* %6, align 4
  br label %251

99:                                               ; preds = %74
  %100 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %101 = load i32, i32* @MMA9553_REG_CALORIES, align 4
  %102 = call i32 @mma9553_read_status_word(%struct.mma9553_data* %100, i32 %101, i32* %14)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %6, align 4
  br label %251

107:                                              ; preds = %99
  %108 = load i32, i32* %14, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %110, i32* %6, align 4
  br label %251

111:                                              ; preds = %74
  %112 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %113 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %112, i32 0, i32 2
  %114 = call i32 @mutex_lock(i32* %113)
  %115 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %116 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @mma9551_read_accel_chan(i32 %117, %struct.iio_chan_spec* %118, i32* %119, i32* %120)
  store i32 %121, i32* %13, align 4
  %122 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %123 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %122, i32 0, i32 2
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %6, align 4
  br label %251

126:                                              ; preds = %74
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %251

129:                                              ; preds = %5
  %130 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %131 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %153 [
    i32 128, label %133
    i32 130, label %146
    i32 142, label %149
  ]

133:                                              ; preds = %129
  %134 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %135 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %251

142:                                              ; preds = %133
  %143 = load i32*, i32** %9, align 8
  store i32 0, i32* %143, align 4
  %144 = load i32*, i32** %10, align 8
  store i32 277, i32* %144, align 4
  %145 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %145, i32* %6, align 4
  br label %251

146:                                              ; preds = %129
  %147 = load i32*, i32** %9, align 8
  store i32 4184, i32* %147, align 4
  %148 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %148, i32* %6, align 4
  br label %251

149:                                              ; preds = %129
  %150 = load i32*, i32** %9, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @mma9551_read_accel_scale(i32* %150, i32* %151)
  store i32 %152, i32* %6, align 4
  br label %251

153:                                              ; preds = %129
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %251

156:                                              ; preds = %5
  %157 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %158 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %9, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %161, i32* %6, align 4
  br label %251

162:                                              ; preds = %5
  %163 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %164 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @MMA9553_MASK_CONF_HEIGHT, align 4
  %168 = call i8* @mma9553_get_bits(i32 %166, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = sdiv i32 %170, 100
  %172 = load i32*, i32** %9, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %14, align 4
  %174 = srem i32 %173, 100
  %175 = mul nsw i32 %174, 10000
  %176 = load i32*, i32** %10, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %177, i32* %6, align 4
  br label %251

178:                                              ; preds = %5
  %179 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %180 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @MMA9553_MASK_CONF_WEIGHT, align 4
  %184 = call i8* @mma9553_get_bits(i32 %182, i32 %183)
  %185 = ptrtoint i8* %184 to i32
  %186 = load i32*, i32** %9, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %187, i32* %6, align 4
  br label %251

188:                                              ; preds = %5
  %189 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %190 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %202 [
    i32 129, label %192
  ]

192:                                              ; preds = %188
  %193 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %194 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @MMA9553_MASK_CONF_FILTSTEP, align 4
  %198 = call i8* @mma9553_get_bits(i32 %196, i32 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load i32*, i32** %9, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %201, i32* %6, align 4
  br label %251

202:                                              ; preds = %188
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %6, align 4
  br label %251

205:                                              ; preds = %5
  %206 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %207 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  switch i32 %208, label %219 [
    i32 129, label %209
  ]

209:                                              ; preds = %205
  %210 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %211 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @MMA9553_MASK_CONF_FILTTIME, align 4
  %215 = call i8* @mma9553_get_bits(i32 %213, i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load i32*, i32** %9, align 8
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %218, i32* %6, align 4
  br label %251

219:                                              ; preds = %205
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %6, align 4
  br label %251

222:                                              ; preds = %5
  %223 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %224 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  switch i32 %225, label %245 [
    i32 128, label %226
  ]

226:                                              ; preds = %222
  %227 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %228 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %6, align 4
  br label %251

235:                                              ; preds = %226
  %236 = load %struct.mma9553_data*, %struct.mma9553_data** %12, align 8
  %237 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @MMA9553_MASK_CONF_SPDPRD, align 4
  %241 = call i8* @mma9553_get_bits(i32 %239, i32 %240)
  %242 = ptrtoint i8* %241 to i32
  %243 = load i32*, i32** %9, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %244, i32* %6, align 4
  br label %251

245:                                              ; preds = %222
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %6, align 4
  br label %251

248:                                              ; preds = %5
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %6, align 4
  br label %251

251:                                              ; preds = %248, %245, %235, %232, %219, %209, %202, %192, %178, %162, %156, %153, %149, %146, %142, %139, %126, %111, %107, %105, %95, %93, %84, %71, %69, %53, %43, %41, %31, %29
  %252 = load i32, i32* %6, align 4
  ret i32 %252
}

declare dso_local %struct.mma9553_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mma9553_read_status_word(%struct.mma9553_data*, i32, i32*) #1

declare dso_local i8* @mma9553_get_bits(i32, i32) #1

declare dso_local i32 @mma9553_activity_to_mod(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9551_read_accel_chan(i32, %struct.iio_chan_spec*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mma9551_read_accel_scale(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
