; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32*, i32 }
%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.dtv_frontend_properties, %struct.af9033_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.af9033_dev = type { i32, i32, %struct.TYPE_9__, %struct.i2c_client* }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"frequency=%u bandwidth_hz=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid bandwidth_hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@coeff_lut = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't find config for clock %u\0A\00", align 1
@clock_adc_lut = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Couldn't find ADC clock for clock %u\0A\00", align 1
@AF9033_ADC_MULTIPLIER_2X = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"if_frequency_cw=%06x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9033_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9033_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 2
  %17 = load %struct.af9033_dev*, %struct.af9033_dev** %16, align 8
  store %struct.af9033_dev* %17, %struct.af9033_dev** %4, align 8
  %18 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %19 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %18, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %5, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1
  store %struct.dtv_frontend_properties* %22, %struct.dtv_frontend_properties** %6, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %38 [
    i32 6000000, label %35
    i32 7000000, label %36
    i32 8000000, label %37
  ]

35:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  br label %44

36:                                               ; preds = %1
  store i32 1, i32* %13, align 4
  br label %44

37:                                               ; preds = %1
  store i32 2, i32* %13, align 4
  br label %44

38:                                               ; preds = %1
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %317

44:                                               ; preds = %37, %36, %35
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %48, align 8
  %50 = icmp ne i32 (%struct.dvb_frontend.1*)* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %55, align 8
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %58 = bitcast %struct.dvb_frontend* %57 to %struct.dvb_frontend.1*
  %59 = call i32 %56(%struct.dvb_frontend.1* %58)
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %65 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %132

68:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %99, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @coeff_lut, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %69
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @coeff_lut, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %82 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %80, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %74
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @coeff_lut, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %102

98:                                               ; preds = %86, %74
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %69

102:                                              ; preds = %97, %69
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** @coeff_lut, align 8
  %105 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %104)
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %111 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %317

117:                                              ; preds = %102
  %118 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %119 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @coeff_lut, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @regmap_bulk_write(i32 %120, i32 8388609, i32* %126, i32 8)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %117
  br label %317

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %60
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %137 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %135, %138
  br i1 %139, label %140, label %259

140:                                              ; preds = %132
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %160, %140
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** @clock_adc_lut, align 8
  %144 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %143)
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %141
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @clock_adc_lut, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %154 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %152, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %163

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %141

163:                                              ; preds = %158, %141
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** @clock_adc_lut, align 8
  %166 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %165)
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %172 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %317

178:                                              ; preds = %163
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @clock_adc_lut, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %10, align 4
  %185 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %186 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @AF9033_ADC_MULTIPLIER_2X, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %178
  %192 = load i32, i32* %10, align 4
  %193 = mul i32 2, %192
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %191, %178
  %195 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %196 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %198, align 8
  %200 = icmp ne i32 (%struct.dvb_frontend.0*, i64*)* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %203 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %205, align 8
  %207 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %208 = bitcast %struct.dvb_frontend* %207 to %struct.dvb_frontend.0*
  %209 = call i32 %206(%struct.dvb_frontend.0* %208, i64* %14)
  br label %211

210:                                              ; preds = %194
  store i64 0, i64* %14, align 8
  br label %211

211:                                              ; preds = %210, %201
  %212 = load i64, i64* %14, align 8
  %213 = trunc i64 %212 to i32
  %214 = mul nsw i32 %213, 8388608
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %214, i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %218 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %211
  %223 = load i64, i64* %14, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  %227 = sub i32 8388608, %226
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %225, %222, %211
  %229 = load i32, i32* %9, align 4
  %230 = lshr i32 %229, 0
  %231 = and i32 %230, 255
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* %9, align 4
  %234 = lshr i32 %233, 8
  %235 = and i32 %234, 255
  %236 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %9, align 4
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %239, i32* %240, align 4
  %241 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %242 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %245 = call i32 @regmap_bulk_write(i32 %243, i32 8388649, i32* %244, i32 3)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %228
  br label %317

249:                                              ; preds = %228
  %250 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %251 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %250, i32 0, i32 0
  %252 = load i32, i32* %9, align 4
  %253 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %251, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  %254 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %255 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %258 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %249, %132
  %260 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %261 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @regmap_update_bits(i32 %262, i32 8452356, i32 3, i32 %263)
  store i32 %264, i32* %7, align 4
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %317

268:                                              ; preds = %259
  %269 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %270 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @regmap_write(i32 %271, i32 8388672, i32 0)
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %317

276:                                              ; preds = %268
  %277 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %278 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @regmap_write(i32 %279, i32 8388679, i32 0)
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  br label %317

284:                                              ; preds = %276
  %285 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %286 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @regmap_update_bits(i32 %287, i32 8452505, i32 1, i32 0)
  store i32 %288, i32* %7, align 4
  %289 = load i32, i32* %7, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  br label %317

292:                                              ; preds = %284
  %293 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %294 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp sle i32 %295, 230000000
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  store i32 0, i32* %11, align 4
  br label %299

298:                                              ; preds = %292
  store i32 1, i32* %11, align 4
  br label %299

299:                                              ; preds = %298, %297
  %300 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %301 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @regmap_write(i32 %302, i32 8388683, i32 %303)
  store i32 %304, i32* %7, align 4
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %317

308:                                              ; preds = %299
  %309 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %310 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @regmap_write(i32 %311, i32 8388608, i32 0)
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* %7, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %308
  br label %317

316:                                              ; preds = %308
  store i32 0, i32* %2, align 4
  br label %323

317:                                              ; preds = %315, %307, %291, %283, %275, %267, %248, %168, %130, %107, %38
  %318 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %319 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %318, i32 0, i32 0
  %320 = load i32, i32* %7, align 4
  %321 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %319, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %7, align 4
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %317, %316
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
