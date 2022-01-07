; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_axis_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_axis_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.iqs5xx_private = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.touchscreen_properties = type { i32, i32, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@iqs5xx_open = common dso_local global i32 0, align 4
@iqs5xx_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@IQS5XX_TOTAL_RX = common dso_local global i32 0, align 4
@IQS5XX_NUM_POINTS = common dso_local global i32 0, align 4
@IQS5XX_TOTAL_TX = common dso_local global i32 0, align 4
@IQS5XX_XY_CFG0 = common dso_local global i32 0, align 4
@IQS5XX_SWITCH_XY_AXIS = common dso_local global i32 0, align 4
@IQS5XX_FLIP_Y = common dso_local global i32 0, align 4
@IQS5XX_FLIP_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid maximum x-coordinate: %u > %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IQS5XX_X_RES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid maximum y-coordinate: %u > %u\0A\00", align 1
@IQS5XX_Y_RES = common dso_local global i32 0, align 4
@IQS5XX_NUM_CONTACTS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to initialize slots: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @iqs5xx_axis_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iqs5xx_axis_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.iqs5xx_private*, align 8
  %5 = alloca %struct.touchscreen_properties, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = call %struct.iqs5xx_private* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.iqs5xx_private* %14, %struct.iqs5xx_private** %4, align 8
  %15 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %16 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %15, i32 0, i32 0
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  %18 = icmp ne %struct.input_dev* %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call %struct.input_dev* @devm_input_allocate_device(i32* %21)
  store %struct.input_dev* %22, %struct.input_dev** %6, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %24 = icmp ne %struct.input_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %296

28:                                               ; preds = %19
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @BUS_I2C, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @iqs5xx_open, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @iqs5xx_close, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = load i32, i32* @EV_ABS, align 4
  %46 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %47 = call i32 @input_set_capability(%struct.input_dev* %44, i32 %45, i32 %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = load i32, i32* @EV_ABS, align 4
  %50 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %51 = call i32 @input_set_capability(%struct.input_dev* %48, i32 %49, i32 %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %53 = load i32, i32* @EV_ABS, align 4
  %54 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %55 = call i32 @input_set_capability(%struct.input_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %58 = call i32 @input_set_drvdata(%struct.input_dev* %56, %struct.iqs5xx_private* %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %61 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %60, i32 0, i32 0
  store %struct.input_dev* %59, %struct.input_dev** %61, align 8
  br label %62

62:                                               ; preds = %28, %1
  %63 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %64 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %63, i32 0, i32 0
  %65 = load %struct.input_dev*, %struct.input_dev** %64, align 8
  %66 = call i32 @touchscreen_parse_properties(%struct.input_dev* %65, i32 1, %struct.touchscreen_properties* %5)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = load i32, i32* @IQS5XX_TOTAL_RX, align 4
  %69 = call i32 @iqs5xx_read_byte(%struct.i2c_client* %67, i32 %68, i32* %12)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %296

74:                                               ; preds = %62
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @IQS5XX_NUM_POINTS, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %80 = load i32, i32* @IQS5XX_TOTAL_TX, align 4
  %81 = call i32 @iqs5xx_read_byte(%struct.i2c_client* %79, i32 %80, i32* %12)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %296

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @IQS5XX_NUM_POINTS, align 4
  %90 = mul nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = load i32, i32* @IQS5XX_XY_CFG0, align 4
  %93 = call i32 @iqs5xx_read_byte(%struct.i2c_client* %91, i32 %92, i32* %12)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %296

98:                                               ; preds = %86
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @IQS5XX_SWITCH_XY_AXIS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @swap(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %98
  %108 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* @IQS5XX_SWITCH_XY_AXIS, align 4
  %113 = load i32, i32* %12, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @IQS5XX_FLIP_Y, align 4
  br label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @IQS5XX_FLIP_X, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load i32, i32* %12, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %127, %115
  %132 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @IQS5XX_FLIP_X, align 4
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @IQS5XX_FLIP_Y, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = load i32, i32* %12, align 4
  %146 = xor i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %143, %131
  %148 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %149 = load i32, i32* @IQS5XX_XY_CFG0, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @iqs5xx_write_byte(%struct.i2c_client* %148, i32 %149, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %296

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %296

170:                                              ; preds = %156
  %171 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %170
  %175 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %176 = load i32, i32* @IQS5XX_X_RES, align 4
  %177 = call i32 @iqs5xx_read_word(%struct.i2c_client* %175, i32 %176, i32* %8)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %296

182:                                              ; preds = %174
  %183 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %184 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %183, i32 0, i32 0
  %185 = load %struct.input_dev*, %struct.input_dev** %184, align 8
  %186 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  br label %193

191:                                              ; preds = %182
  %192 = load i32, i32* @ABS_MT_POSITION_X, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @input_abs_set_max(%struct.input_dev* %185, i32 %194, i32 %195)
  br label %200

197:                                              ; preds = %170
  %198 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %197, %193
  br label %201

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %201
  %207 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %208, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %2, align 4
  br label %296

215:                                              ; preds = %201
  %216 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %242

219:                                              ; preds = %215
  %220 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %221 = load i32, i32* @IQS5XX_Y_RES, align 4
  %222 = call i32 @iqs5xx_read_word(%struct.i2c_client* %220, i32 %221, i32* %10)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %2, align 4
  br label %296

227:                                              ; preds = %219
  %228 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %229 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %228, i32 0, i32 0
  %230 = load %struct.input_dev*, %struct.input_dev** %229, align 8
  %231 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = load i32, i32* @ABS_MT_POSITION_X, align 4
  br label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @input_abs_set_max(%struct.input_dev* %230, i32 %239, i32 %240)
  br label %245

242:                                              ; preds = %215
  %243 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %10, align 4
  br label %245

245:                                              ; preds = %242, %238
  br label %246

246:                                              ; preds = %245
  %247 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %248 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i32, i32* @IQS5XX_Y_RES, align 4
  br label %255

253:                                              ; preds = %246
  %254 = load i32, i32* @IQS5XX_X_RES, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @iqs5xx_write_word(%struct.i2c_client* %247, i32 %256, i32 %257)
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %2, align 4
  br label %296

263:                                              ; preds = %255
  %264 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %265 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %5, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = load i32, i32* @IQS5XX_X_RES, align 4
  br label %272

270:                                              ; preds = %263
  %271 = load i32, i32* @IQS5XX_Y_RES, align 4
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i32 [ %269, %268 ], [ %271, %270 ]
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @iqs5xx_write_word(%struct.i2c_client* %264, i32 %273, i32 %274)
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = load i32, i32* %7, align 4
  store i32 %279, i32* %2, align 4
  br label %296

280:                                              ; preds = %272
  %281 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %282 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %281, i32 0, i32 0
  %283 = load %struct.input_dev*, %struct.input_dev** %282, align 8
  %284 = load i32, i32* @IQS5XX_NUM_CONTACTS, align 4
  %285 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %286 = call i32 @input_mt_init_slots(%struct.input_dev* %283, i32 %284, i32 %285)
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %7, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %280
  %290 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %291 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %290, i32 0, i32 0
  %292 = load i32, i32* %7, align 4
  %293 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %291, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %289, %280
  %295 = load i32, i32* %7, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %294, %278, %261, %225, %206, %180, %161, %154, %96, %84, %72, %25
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local %struct.iqs5xx_private* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.iqs5xx_private*) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, %struct.touchscreen_properties*) #1

declare dso_local i32 @iqs5xx_read_byte(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @iqs5xx_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @iqs5xx_read_word(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @input_abs_set_max(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @iqs5xx_write_word(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
