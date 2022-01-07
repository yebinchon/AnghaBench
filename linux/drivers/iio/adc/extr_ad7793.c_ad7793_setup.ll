; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7793_platform_data = type { i32, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.ad7793_state = type { i32, i32**, %struct.TYPE_14__, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@AD7793_REG_ID = common dso_local global i32 0, align 4
@AD7793_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"device ID query failed\0A\00", align 1
@AD7793_FLAG_HAS_CLKSEL = common dso_local global i32 0, align 4
@AD7793_FLAG_HAS_REFSEL = common dso_local global i32 0, align 4
@AD7793_FLAG_HAS_VBIAS = common dso_local global i32 0, align 4
@AD7793_FLAG_HAS_BUFFER = common dso_local global i32 0, align 4
@AD7793_CONF_BUF = common dso_local global i32 0, align 4
@AD7793_CONF_BOOST = common dso_local global i32 0, align 4
@AD7793_CONF_BO_EN = common dso_local global i32 0, align 4
@AD7793_CONF_UNIPOLAR = common dso_local global i32 0, align 4
@AD7793_FLAG_HAS_GAIN = common dso_local global i32 0, align 4
@AD_SD_MODE_IDLE = common dso_local global i32 0, align 4
@AD7793_HAS_EXITATION_CURRENT = common dso_local global i32 0, align 4
@AD7793_REG_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.ad7793_platform_data*, i32)* @ad7793_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7793_setup(%struct.iio_dev* %0, %struct.ad7793_platform_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad7793_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ad7793_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.ad7793_platform_data* %1, %struct.ad7793_platform_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.ad7793_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.ad7793_state* %14, %struct.ad7793_state** %8, align 8
  %15 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %16 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %17 = call i32 @ad7793_check_platform_data(%struct.ad7793_state* %15, %struct.ad7793_platform_data* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %309

22:                                               ; preds = %3
  %23 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %24 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %23, i32 0, i32 2
  %25 = call i32 @ad_sd_reset(%struct.TYPE_14__* %24, i32 32)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %301

29:                                               ; preds = %22
  %30 = call i32 @usleep_range(i32 500, i32 2000)
  %31 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %32 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %31, i32 0, i32 2
  %33 = load i32, i32* @AD7793_REG_ID, align 4
  %34 = call i32 @ad_sd_read_reg(%struct.TYPE_14__* %32, i32 %33, i32 1, i32* %12)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %301

38:                                               ; preds = %29
  %39 = load i32, i32* @AD7793_ID_MASK, align 4
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %44 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %43, i32 0, i32 3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %42, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %51 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %301

56:                                               ; preds = %38
  %57 = call i32 @AD7793_MODE_RATE(i32 1)
  %58 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %59 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %61 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %63 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AD7793_FLAG_HAS_CLKSEL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %56
  %71 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %72 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @AD7793_MODE_CLKSRC(i32 %73)
  %75 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %76 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70, %56
  %80 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %81 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @AD7793_FLAG_HAS_REFSEL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %90 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @AD7793_CONF_REFSEL(i32 %91)
  %93 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %94 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %88, %79
  %98 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %99 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @AD7793_FLAG_HAS_VBIAS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %108 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @AD7793_CONF_VBIAS(i32 %109)
  %111 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %112 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %106, %97
  %116 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %117 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %115
  %121 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %122 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %121, i32 0, i32 3
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @AD7793_FLAG_HAS_BUFFER, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %120, %115
  %130 = load i32, i32* @AD7793_CONF_BUF, align 4
  %131 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %132 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %129, %120
  %136 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %137 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %142 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %141, i32 0, i32 3
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AD7793_FLAG_HAS_VBIAS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %140
  %150 = load i32, i32* @AD7793_CONF_BOOST, align 4
  %151 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %152 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %140, %135
  %156 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %157 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* @AD7793_CONF_BO_EN, align 4
  %162 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %163 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %155
  %167 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %168 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32, i32* @AD7793_CONF_UNIPOLAR, align 4
  %173 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %174 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %179 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %178, i32 0, i32 3
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @AD7793_FLAG_HAS_GAIN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %177
  %187 = call i32 @AD7793_CONF_GAIN(i32 7)
  %188 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %189 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %177
  %193 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %194 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %193, i32 0, i32 2
  %195 = load i32, i32* @AD_SD_MODE_IDLE, align 4
  %196 = call i32 @ad7793_set_mode(%struct.TYPE_14__* %194, i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %301

200:                                              ; preds = %192
  %201 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %202 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %201, i32 0, i32 2
  %203 = call i32 @ad7793_set_channel(%struct.TYPE_14__* %202, i32 0)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %301

207:                                              ; preds = %200
  %208 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %209 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %208, i32 0, i32 3
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @AD7793_HAS_EXITATION_CURRENT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %207
  %217 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %218 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %217, i32 0, i32 2
  %219 = load i32, i32* @AD7793_REG_IO, align 4
  %220 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %221 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.ad7793_platform_data*, %struct.ad7793_platform_data** %6, align 8
  %224 = getelementptr inbounds %struct.ad7793_platform_data, %struct.ad7793_platform_data* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = shl i32 %225, 2
  %227 = or i32 %222, %226
  %228 = call i32 @ad_sd_write_reg(%struct.TYPE_14__* %218, i32 %219, i32 1, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %216
  br label %301

232:                                              ; preds = %216
  br label %233

233:                                              ; preds = %232, %207
  %234 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %235 = call i32 @ad7793_calibrate_all(%struct.ad7793_state* %234)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %301

239:                                              ; preds = %233
  store i32 0, i32* %9, align 4
  br label %240

240:                                              ; preds = %297, %239
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %243 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %242, i32 0, i32 1
  %244 = load i32**, i32*** %243, align 8
  %245 = call i32 @ARRAY_SIZE(i32** %244)
  %246 = icmp slt i32 %241, %245
  br i1 %246, label %247, label %300

247:                                              ; preds = %240
  %248 = load i32, i32* %7, align 4
  %249 = mul nsw i32 %248, 100000000
  %250 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %251 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %250, i32 0, i32 3
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %260 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @AD7793_CONF_UNIPOLAR, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 0, i32 1
  %269 = sub nsw i32 %258, %268
  %270 = ashr i32 %249, %269
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %11, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i64, i64* %11, align 8
  %274 = zext i32 %272 to i64
  %275 = lshr i64 %273, %274
  store i64 %275, i64* %11, align 8
  %276 = load i64, i64* %11, align 8
  %277 = call i32 @do_div(i64 %276, i32 100000000)
  %278 = mul nsw i32 %277, 10
  %279 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %280 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %279, i32 0, i32 1
  %281 = load i32**, i32*** %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32*, i32** %281, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 %278, i32* %286, align 4
  %287 = load i64, i64* %11, align 8
  %288 = trunc i64 %287 to i32
  %289 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %290 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %289, i32 0, i32 1
  %291 = load i32**, i32*** %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32*, i32** %291, i64 %293
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  store i32 %288, i32* %296, align 4
  br label %297

297:                                              ; preds = %247
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %240

300:                                              ; preds = %240
  store i32 0, i32* %4, align 4
  br label %309

301:                                              ; preds = %238, %231, %206, %199, %49, %37, %28
  %302 = load %struct.ad7793_state*, %struct.ad7793_state** %8, align 8
  %303 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  %307 = call i32 @dev_err(i32* %306, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %308 = load i32, i32* %10, align 4
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %301, %300, %20
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local %struct.ad7793_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad7793_check_platform_data(%struct.ad7793_state*, %struct.ad7793_platform_data*) #1

declare dso_local i32 @ad_sd_reset(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ad_sd_read_reg(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @AD7793_MODE_RATE(i32) #1

declare dso_local i32 @AD7793_MODE_CLKSRC(i32) #1

declare dso_local i32 @AD7793_CONF_REFSEL(i32) #1

declare dso_local i32 @AD7793_CONF_VBIAS(i32) #1

declare dso_local i32 @AD7793_CONF_GAIN(i32) #1

declare dso_local i32 @ad7793_set_mode(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ad7793_set_channel(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ad_sd_write_reg(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @ad7793_calibrate_all(%struct.ad7793_state*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
