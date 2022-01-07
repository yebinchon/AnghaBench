; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.i2c_device_id = type { i32, i32 }
%struct.ina2xx_chip_info = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.iio_dev = type { i32, %struct.TYPE_9__, i32*, i32, i32*, i8*, i8* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.iio_buffer = type { i32 }
%struct.ina2xx_platform_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ina2xx_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@ina2xx_config = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"shunt-resistor\00", align 1
@INA2XX_RSHUNT_DEFAULT = common dso_local global i32 0, align 4
@ina226 = common dso_local global i64 0, align 8
@INA226_DEFAULT_AVG = common dso_local global i32 0, align 4
@INA226_DEFAULT_IT = common dso_local global i32 0, align 4
@INA219_DEFAULT_IT = common dso_local global i32 0, align 4
@INA219_DEFAULT_BRNG = common dso_local global i32 0, align 4
@INA219_DEFAULT_PGA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"error configuring the device\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@ina226_channels = common dso_local global i8* null, align 8
@ina226_info = common dso_local global i32 0, align 4
@ina219_channels = common dso_local global i8* null, align 8
@ina219_info = common dso_local global i32 0, align 4
@ina2xx_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ina2xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ina2xx_chip_info*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ina2xx_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %14, i32 24)
  store %struct.iio_dev* %15, %struct.iio_dev** %7, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %210

21:                                               ; preds = %2
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev* %22)
  store %struct.ina2xx_chip_info* %23, %struct.ina2xx_chip_info** %6, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.iio_dev* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %27, i32* @ina2xx_regmap_config)
  %29 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %30 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %32 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %21
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @dev_err(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %41 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %210

44:                                               ; preds = %21
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i64 @of_device_get_match_data(%struct.TYPE_7__* %52)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  br label %59

55:                                               ; preds = %44
  %56 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ina2xx_config, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %65 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %64, i32 0, i32 1
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %65, align 8
  %66 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %67 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %66, i32 0, i32 2
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @of_property_read_u32(i64 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %59
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call %struct.ina2xx_platform_data* @dev_get_platdata(%struct.TYPE_7__* %77)
  store %struct.ina2xx_platform_data* %78, %struct.ina2xx_platform_data** %12, align 8
  %79 = load %struct.ina2xx_platform_data*, %struct.ina2xx_platform_data** %12, align 8
  %80 = icmp ne %struct.ina2xx_platform_data* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.ina2xx_platform_data*, %struct.ina2xx_platform_data** %12, align 8
  %83 = getelementptr inbounds %struct.ina2xx_platform_data, %struct.ina2xx_platform_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @INA2XX_RSHUNT_DEFAULT, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87, %59
  %89 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @set_shunt_resistor(%struct.ina2xx_chip_info* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %210

96:                                               ; preds = %88
  %97 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %98 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  %102 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* @ina226, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %96
  %109 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %110 = load i32, i32* @INA226_DEFAULT_AVG, align 4
  %111 = call i32 @ina226_set_average(%struct.ina2xx_chip_info* %109, i32 %110, i32* %9)
  %112 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %113 = load i32, i32* @INA226_DEFAULT_IT, align 4
  %114 = call i32 @ina226_set_int_time_vbus(%struct.ina2xx_chip_info* %112, i32 %113, i32* %9)
  %115 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %116 = load i32, i32* @INA226_DEFAULT_IT, align 4
  %117 = call i32 @ina226_set_int_time_vshunt(%struct.ina2xx_chip_info* %115, i32 %116, i32* %9)
  br label %133

118:                                              ; preds = %96
  %119 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %120 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %122 = load i32, i32* @INA219_DEFAULT_IT, align 4
  %123 = call i32 @ina219_set_int_time_vbus(%struct.ina2xx_chip_info* %121, i32 %122, i32* %9)
  %124 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %125 = load i32, i32* @INA219_DEFAULT_IT, align 4
  %126 = call i32 @ina219_set_int_time_vshunt(%struct.ina2xx_chip_info* %124, i32 %125, i32* %9)
  %127 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %128 = load i32, i32* @INA219_DEFAULT_BRNG, align 4
  %129 = call i32 @ina219_set_vbus_range_denom(%struct.ina2xx_chip_info* %127, i32 %128, i32* %9)
  %130 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %131 = load i32, i32* @INA219_DEFAULT_PGA, align 4
  %132 = call i32 @ina219_set_vshunt_pga_gain(%struct.ina2xx_chip_info* %130, i32 %131, i32* %9)
  br label %133

133:                                              ; preds = %118, %108
  %134 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @ina2xx_init(%struct.ina2xx_chip_info* %134, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.TYPE_7__* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %210

144:                                              ; preds = %133
  %145 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %146 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %149 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %150, i32 0, i32 0
  %152 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %153 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store %struct.TYPE_7__* %151, %struct.TYPE_7__** %154, align 8
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %160 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  %162 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %163 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* @ina226, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %144
  %169 = load i8*, i8** @ina226_channels, align 8
  %170 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %171 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %170, i32 0, i32 6
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @ina226_channels, align 8
  %173 = call i8* @ARRAY_SIZE(i8* %172)
  %174 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %175 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %174, i32 0, i32 5
  store i8* %173, i8** %175, align 8
  %176 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %177 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %176, i32 0, i32 4
  store i32* @ina226_info, i32** %177, align 8
  br label %188

178:                                              ; preds = %144
  %179 = load i8*, i8** @ina219_channels, align 8
  %180 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %181 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %180, i32 0, i32 6
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @ina219_channels, align 8
  %183 = call i8* @ARRAY_SIZE(i8* %182)
  %184 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %185 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %184, i32 0, i32 5
  store i8* %183, i8** %185, align 8
  %186 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %187 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %186, i32 0, i32 4
  store i32* @ina219_info, i32** %187, align 8
  br label %188

188:                                              ; preds = %178, %168
  %189 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %190 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %193 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 8
  %194 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %195 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %194, i32 0, i32 2
  store i32* @ina2xx_setup_ops, i32** %195, align 8
  %196 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %197 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %196, i32 0, i32 1
  %198 = call %struct.iio_buffer* @devm_iio_kfifo_allocate(%struct.TYPE_9__* %197)
  store %struct.iio_buffer* %198, %struct.iio_buffer** %8, align 8
  %199 = load %struct.iio_buffer*, %struct.iio_buffer** %8, align 8
  %200 = icmp ne %struct.iio_buffer* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %188
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %210

204:                                              ; preds = %188
  %205 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %206 = load %struct.iio_buffer*, %struct.iio_buffer** %8, align 8
  %207 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %205, %struct.iio_buffer* %206)
  %208 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %209 = call i32 @iio_device_register(%struct.iio_dev* %208)
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %204, %201, %139, %94, %36, %18
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local %struct.ina2xx_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local i32 @set_shunt_resistor(%struct.ina2xx_chip_info*, i32) #1

declare dso_local i32 @ina226_set_average(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina226_set_int_time_vbus(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina226_set_int_time_vshunt(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_int_time_vbus(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_int_time_vshunt(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_vbus_range_denom(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina219_set_vshunt_pga_gain(%struct.ina2xx_chip_info*, i32, i32*) #1

declare dso_local i32 @ina2xx_init(%struct.ina2xx_chip_info*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
