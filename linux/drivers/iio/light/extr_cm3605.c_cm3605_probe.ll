; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3605.c_cm3605_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3605.c_cm3605_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cm3605 = type { i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"capella,aset-resistance-ohms\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"no RSET specified, assuming 100K\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"non-standard resistance\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"aout\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"no ADC, deferring...\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to get AOUT ADC channel\0A\00", align 1
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"wrong type of IIO channel specified for AOUT\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to get VDD regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to enable VDD regulator\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"aset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"no ASET GPIO\0A\00", align 1
@cm3605_prox_irq = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"cm3605\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@LED_FULL = common dso_local global i32 0, align 4
@cm3605_info = common dso_local global i32 0, align 4
@cm3605_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [53 x i8] c"Capella Microsystems CM3605 enabled range 0..%d LUX\0A\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cm3605_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3605_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cm3605*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %16, i32 32)
  store %struct.iio_dev* %17, %struct.iio_dev** %5, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %226

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.iio_dev* %25)
  %27 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %28 = call %struct.cm3605* @iio_priv(%struct.iio_dev* %27)
  store %struct.cm3605* %28, %struct.cm3605** %4, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %31 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %30, i32 0, i32 6
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %33 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %34 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = call i32 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 100000, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %23
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %56 [
    i32 50000, label %44
    i32 100000, label %47
    i32 300000, label %50
    i32 600000, label %53
  ]

44:                                               ; preds = %42
  %45 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %46 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %45, i32 0, i32 0
  store i32 650, i32* %46, align 8
  br label %61

47:                                               ; preds = %42
  %48 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %49 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %48, i32 0, i32 0
  store i32 300, i32* %49, align 8
  br label %61

50:                                               ; preds = %42
  %51 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %52 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %51, i32 0, i32 0
  store i32 100, i32* %52, align 8
  br label %61

53:                                               ; preds = %42
  %54 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %55 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %54, i32 0, i32 0
  store i32 50, i32* %55, align 8
  br label %61

56:                                               ; preds = %42
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %226

61:                                               ; preds = %53, %50, %47, %44
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @devm_iio_channel_get(%struct.device* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %65 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %67 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %61
  %72 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %73 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* @EPROBE_DEFER, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %226

84:                                               ; preds = %71
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %88 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %226

91:                                               ; preds = %61
  %92 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %93 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @iio_get_channel_type(i32 %94, i32* %8)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %2, align 4
  br label %226

100:                                              ; preds = %91
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @IIO_VOLTAGE, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %226

109:                                              ; preds = %100
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 @devm_regulator_get(%struct.device* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %112 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %113 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %115 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @IS_ERR(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %122 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %123 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @PTR_ERR(i32 %124)
  store i32 %125, i32* %2, align 4
  br label %226

126:                                              ; preds = %109
  %127 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %128 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @regulator_enable(i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %2, align 4
  br label %226

137:                                              ; preds = %126
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %140 = call i32 @devm_gpiod_get(%struct.device* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  %141 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %142 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %144 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @IS_ERR(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %137
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %151 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %152 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @PTR_ERR(i32 %153)
  store i32 %154, i32* %10, align 4
  br label %220

155:                                              ; preds = %137
  %156 = load %struct.device*, %struct.device** %6, align 8
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = call i32 @platform_get_irq(%struct.platform_device* %157, i32 0)
  %159 = load i32, i32* @cm3605_prox_irq, align 4
  %160 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %161 = call i32 @devm_request_threaded_irq(%struct.device* %156, i32 %158, i32 %159, i32* null, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), %struct.iio_dev* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load %struct.device*, %struct.device** %6, align 8
  %166 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %215

167:                                              ; preds = %155
  %168 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %169 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %168, i32 0, i32 3
  %170 = call i32 @led_trigger_register_simple(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32* %169)
  %171 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %172 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @LED_FULL, align 4
  %175 = call i32 @led_trigger_event(i32 %173, i32 %174)
  %176 = load %struct.device*, %struct.device** %6, align 8
  %177 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %178 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store %struct.device* %176, %struct.device** %179, align 8
  %180 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %181 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %180, i32 0, i32 4
  store i32* @cm3605_info, i32** %181, align 8
  %182 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %183 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %182, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %183, align 8
  %184 = load i32, i32* @cm3605_channels, align 4
  %185 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %186 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @cm3605_channels, align 4
  %188 = call i32 @ARRAY_SIZE(i32 %187)
  %189 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %190 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %192 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %193 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %195 = call i32 @iio_device_register(%struct.iio_dev* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %167
  br label %205

199:                                              ; preds = %167
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %202 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %200, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %203)
  store i32 0, i32* %2, align 4
  br label %226

205:                                              ; preds = %198
  %206 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %207 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @LED_OFF, align 4
  %210 = call i32 @led_trigger_event(i32 %208, i32 %209)
  %211 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %212 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @led_trigger_unregister_simple(i32 %213)
  br label %215

215:                                              ; preds = %205, %164
  %216 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %217 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @gpiod_set_value_cansleep(i32 %218, i32 0)
  br label %220

220:                                              ; preds = %215, %148
  %221 = load %struct.cm3605*, %struct.cm3605** %4, align 8
  %222 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @regulator_disable(i32 %223)
  %225 = load i32, i32* %10, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %220, %199, %133, %119, %104, %98, %84, %79, %56, %20
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.cm3605* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_iio_channel_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iio_get_channel_type(i32, i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32*, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @led_trigger_register_simple(i8*, i32*) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @led_trigger_unregister_simple(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
