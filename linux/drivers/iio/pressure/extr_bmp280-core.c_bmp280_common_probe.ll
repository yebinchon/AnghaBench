; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.bmp280_data*)* }
%struct.bmp280_data = type { i32, %struct.gpio_desc*, %struct.gpio_desc*, %struct.device*, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.regmap*, i8*, i8*, i8*, i32 }
%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@bmp280_channels = common dso_local global i32 0, align 4
@bmp280_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@bmp180_chip_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@bmp280_chip_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@bme280_chip_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vddd\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get VDDD regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to enable VDDD regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to get VDDA regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to enable VDDA regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"release reset\0A\00", align 1
@BMP280_REG_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"bad chip id: expected %x got %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"failed to read calibration coefficients\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmp280_common_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iio_dev*, align 8
  %14 = alloca %struct.bmp280_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gpio_desc*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.regmap* %1, %struct.regmap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %17, i32 88)
  store %struct.iio_dev* %18, %struct.iio_dev** %13, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %20 = icmp ne %struct.iio_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %308

24:                                               ; preds = %5
  %25 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %26 = call %struct.bmp280_data* @iio_priv(%struct.iio_dev* %25)
  store %struct.bmp280_data* %26, %struct.bmp280_data** %14, align 8
  %27 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %28 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %27, i32 0, i32 10
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %32 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %31, i32 0, i32 3
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.device* %33, %struct.device** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @bmp280_channels, align 4
  %41 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 3
  store i32* @bmp280_info, i32** %44, align 8
  %45 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %91 [
    i32 129, label %49
    i32 128, label %62
    i32 130, label %75
  ]

49:                                               ; preds = %24
  %50 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 1
  store i32 2, i32* %51, align 8
  %52 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %53 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %52, i32 0, i32 5
  store %struct.TYPE_8__* @bmp180_chip_info, %struct.TYPE_8__** %53, align 8
  %54 = call i8* @ilog2(i32 8)
  %55 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %56 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = call i8* @ilog2(i32 1)
  %58 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %59 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %61 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %60, i32 0, i32 0
  store i32 10000, i32* %61, align 8
  br label %94

62:                                               ; preds = %24
  %63 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  store i32 2, i32* %64, align 8
  %65 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %66 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %65, i32 0, i32 5
  store %struct.TYPE_8__* @bmp280_chip_info, %struct.TYPE_8__** %66, align 8
  %67 = call i8* @ilog2(i32 16)
  %68 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %69 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %68, i32 0, i32 9
  store i8* %67, i8** %69, align 8
  %70 = call i8* @ilog2(i32 2)
  %71 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %72 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %74 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %73, i32 0, i32 0
  store i32 2000, i32* %74, align 8
  br label %94

75:                                               ; preds = %24
  %76 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 1
  store i32 3, i32* %77, align 8
  %78 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %79 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %78, i32 0, i32 5
  store %struct.TYPE_8__* @bme280_chip_info, %struct.TYPE_8__** %79, align 8
  %80 = call i8* @ilog2(i32 16)
  %81 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %82 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %81, i32 0, i32 9
  store i8* %80, i8** %82, align 8
  %83 = call i8* @ilog2(i32 16)
  %84 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %85 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %84, i32 0, i32 8
  store i8* %83, i8** %85, align 8
  %86 = call i8* @ilog2(i32 2)
  %87 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %88 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %90 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %89, i32 0, i32 0
  store i32 2000, i32* %90, align 8
  br label %94

91:                                               ; preds = %24
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %308

94:                                               ; preds = %75, %62, %49
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = call i8* @devm_regulator_get(%struct.device* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %97 = bitcast i8* %96 to %struct.gpio_desc*
  %98 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %99 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %98, i32 0, i32 1
  store %struct.gpio_desc* %97, %struct.gpio_desc** %99, align 8
  %100 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %101 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %100, i32 0, i32 1
  %102 = load %struct.gpio_desc*, %struct.gpio_desc** %101, align 8
  %103 = call i64 @IS_ERR(%struct.gpio_desc* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %109 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %108, i32 0, i32 1
  %110 = load %struct.gpio_desc*, %struct.gpio_desc** %109, align 8
  %111 = call i32 @PTR_ERR(%struct.gpio_desc* %110)
  store i32 %111, i32* %6, align 4
  br label %308

112:                                              ; preds = %94
  %113 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %114 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %113, i32 0, i32 1
  %115 = load %struct.gpio_desc*, %struct.gpio_desc** %114, align 8
  %116 = call i32 @regulator_enable(%struct.gpio_desc* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %6, align 4
  br label %308

123:                                              ; preds = %112
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = call i8* @devm_regulator_get(%struct.device* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %126 = bitcast i8* %125 to %struct.gpio_desc*
  %127 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %128 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %127, i32 0, i32 2
  store %struct.gpio_desc* %126, %struct.gpio_desc** %128, align 8
  %129 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %130 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %129, i32 0, i32 2
  %131 = load %struct.gpio_desc*, %struct.gpio_desc** %130, align 8
  %132 = call i64 @IS_ERR(%struct.gpio_desc* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %123
  %135 = load %struct.device*, %struct.device** %7, align 8
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %137 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %138 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %137, i32 0, i32 2
  %139 = load %struct.gpio_desc*, %struct.gpio_desc** %138, align 8
  %140 = call i32 @PTR_ERR(%struct.gpio_desc* %139)
  store i32 %140, i32* %12, align 4
  br label %302

141:                                              ; preds = %123
  %142 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %143 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %142, i32 0, i32 2
  %144 = load %struct.gpio_desc*, %struct.gpio_desc** %143, align 8
  %145 = call i32 @regulator_enable(%struct.gpio_desc* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.device*, %struct.device** %7, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %302

151:                                              ; preds = %141
  %152 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %153 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %156 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 100
  %159 = call i32 @usleep_range(i32 %154, i32 %158)
  %160 = load %struct.device*, %struct.device** %7, align 8
  %161 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %162 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  store %struct.gpio_desc* %162, %struct.gpio_desc** %16, align 8
  %163 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %164 = call i64 @IS_ERR(%struct.gpio_desc* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %151
  %167 = load %struct.device*, %struct.device** %7, align 8
  %168 = call i32 @dev_info(%struct.device* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %169 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %170 = call i32 @gpiod_set_value(%struct.gpio_desc* %169, i32 0)
  br label %171

171:                                              ; preds = %166, %151
  %172 = load %struct.regmap*, %struct.regmap** %8, align 8
  %173 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %174 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %173, i32 0, i32 6
  store %struct.regmap* %172, %struct.regmap** %174, align 8
  %175 = load %struct.regmap*, %struct.regmap** %8, align 8
  %176 = load i32, i32* @BMP280_REG_ID, align 4
  %177 = call i32 @regmap_read(%struct.regmap* %175, i32 %176, i32* %15)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %297

181:                                              ; preds = %171
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load %struct.device*, %struct.device** %7, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %12, align 4
  br label %297

192:                                              ; preds = %181
  %193 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %194 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %193, i32 0, i32 5
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32 (%struct.bmp280_data*)*, i32 (%struct.bmp280_data*)** %196, align 8
  %198 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %199 = call i32 %197(%struct.bmp280_data* %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %297

203:                                              ; preds = %192
  %204 = load %struct.device*, %struct.device** %7, align 8
  %205 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %206 = call i32 @dev_set_drvdata(%struct.device* %204, %struct.iio_dev* %205)
  %207 = load i32, i32* %15, align 4
  %208 = icmp eq i32 %207, 129
  br i1 %208, label %209, label %223

209:                                              ; preds = %203
  %210 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %211 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %212 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = call i32 @bmp180_read_calib(%struct.bmp280_data* %210, i32* %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %209
  %218 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %219 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %218, i32 0, i32 3
  %220 = load %struct.device*, %struct.device** %219, align 8
  %221 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %220, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %297

222:                                              ; preds = %209
  br label %245

223:                                              ; preds = %203
  %224 = load i32, i32* %15, align 4
  %225 = icmp eq i32 %224, 128
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %15, align 4
  %228 = icmp eq i32 %227, 130
  br i1 %228, label %229, label %244

229:                                              ; preds = %226, %223
  %230 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %231 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %232 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @bmp280_read_calib(%struct.bmp280_data* %230, i32* %233, i32 %234)
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %229
  %239 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %240 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %239, i32 0, i32 3
  %241 = load %struct.device*, %struct.device** %240, align 8
  %242 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %241, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %297

243:                                              ; preds = %229
  br label %244

244:                                              ; preds = %243, %226
  br label %245

245:                                              ; preds = %244, %222
  %246 = load i32, i32* %11, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %15, align 4
  %250 = icmp eq i32 %249, 129
  br i1 %250, label %251, label %261

251:                                              ; preds = %248, %245
  %252 = load %struct.device*, %struct.device** %7, align 8
  %253 = load i8*, i8** %10, align 8
  %254 = load i32, i32* %11, align 4
  %255 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %256 = call i32 @bmp085_fetch_eoc_irq(%struct.device* %252, i8* %253, i32 %254, %struct.bmp280_data* %255)
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  br label %297

260:                                              ; preds = %251
  br label %261

261:                                              ; preds = %260, %248
  %262 = load %struct.device*, %struct.device** %7, align 8
  %263 = call i32 @pm_runtime_get_noresume(%struct.device* %262)
  %264 = load %struct.device*, %struct.device** %7, align 8
  %265 = call i32 @pm_runtime_set_active(%struct.device* %264)
  %266 = load %struct.device*, %struct.device** %7, align 8
  %267 = call i32 @pm_runtime_enable(%struct.device* %266)
  %268 = load %struct.device*, %struct.device** %7, align 8
  %269 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %270 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sdiv i32 %271, 10
  %273 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %268, i32 %272)
  %274 = load %struct.device*, %struct.device** %7, align 8
  %275 = call i32 @pm_runtime_use_autosuspend(%struct.device* %274)
  %276 = load %struct.device*, %struct.device** %7, align 8
  %277 = call i32 @pm_runtime_put(%struct.device* %276)
  %278 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %279 = call i32 @iio_device_register(%struct.iio_dev* %278)
  store i32 %279, i32* %12, align 4
  %280 = load i32, i32* %12, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %261
  br label %284

283:                                              ; preds = %261
  store i32 0, i32* %6, align 4
  br label %308

284:                                              ; preds = %282
  %285 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %286 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %285, i32 0, i32 3
  %287 = load %struct.device*, %struct.device** %286, align 8
  %288 = call i32 @pm_runtime_get_sync(%struct.device* %287)
  %289 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %290 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %289, i32 0, i32 3
  %291 = load %struct.device*, %struct.device** %290, align 8
  %292 = call i32 @pm_runtime_put_noidle(%struct.device* %291)
  %293 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %294 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %293, i32 0, i32 3
  %295 = load %struct.device*, %struct.device** %294, align 8
  %296 = call i32 @pm_runtime_disable(%struct.device* %295)
  br label %297

297:                                              ; preds = %284, %259, %238, %217, %202, %185, %180
  %298 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %299 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %298, i32 0, i32 2
  %300 = load %struct.gpio_desc*, %struct.gpio_desc** %299, align 8
  %301 = call i32 @regulator_disable(%struct.gpio_desc* %300)
  br label %302

302:                                              ; preds = %297, %148, %134
  %303 = load %struct.bmp280_data*, %struct.bmp280_data** %14, align 8
  %304 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %303, i32 0, i32 1
  %305 = load %struct.gpio_desc*, %struct.gpio_desc** %304, align 8
  %306 = call i32 @regulator_disable(%struct.gpio_desc* %305)
  %307 = load i32, i32* %12, align 4
  store i32 %307, i32* %6, align 4
  br label %308

308:                                              ; preds = %302, %283, %119, %105, %91, %21
  %309 = load i32, i32* %6, align 4
  ret i32 %309
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.bmp280_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @regulator_enable(%struct.gpio_desc*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @bmp180_read_calib(%struct.bmp280_data*, i32*) #1

declare dso_local i32 @bmp280_read_calib(%struct.bmp280_data*, i32*, i32) #1

declare dso_local i32 @bmp085_fetch_eoc_irq(%struct.device*, i8*, i32, %struct.bmp280_data*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @regulator_disable(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
