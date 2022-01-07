; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.resource = type { i64 }
%struct.cdns_i2c = type { i32, i32, i32, %struct.TYPE_20__, i32, %struct.TYPE_17__, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__, %struct.cdns_i2c*, i32, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.of_device_id = type { %struct.cdns_platform_data* }
%struct.cdns_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cdns_i2c_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@cdns_i2c_algo = common dso_local global i32 0, align 4
@CDNS_I2C_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Cadence I2C at %08lx\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"input clock not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@CNDS_I2C_PM_TIMEOUT = common dso_local global i32 0, align 4
@cdns_i2c_clk_notifier_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to register clock notifier.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@CDNS_I2C_SPEED_MAX = common dso_local global i32 0, align 4
@CDNS_I2C_SPEED_DEFAULT = common dso_local global i32 0, align 4
@CDNS_I2C_CR_ACK_EN = common dso_local global i32 0, align 4
@CDNS_I2C_CR_NEA = common dso_local global i32 0, align 4
@CDNS_I2C_CR_MS = common dso_local global i32 0, align 4
@CDNS_I2C_CR_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid SCL clock: %u Hz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cdns_i2c_isr = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"cannot get irq %d\0A\00", align 1
@CDNS_I2C_TIMEOUT_MAX = common dso_local global i32 0, align 4
@CDNS_I2C_TIME_OUT_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"%u kHz mmio %08lx irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.cdns_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.cdns_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cdns_i2c* @devm_kzalloc(%struct.TYPE_19__* %10, i32 104, i32 %11)
  store %struct.cdns_i2c* %12, %struct.cdns_i2c** %5, align 8
  %13 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %14 = icmp ne %struct.cdns_i2c* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %283

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %22 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %21, i32 0, i32 6
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.cdns_i2c* %24)
  %26 = load i32, i32* @cdns_i2c_of_match, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.of_device_id* @of_match_node(i32 %26, i32 %30)
  store %struct.of_device_id* %31, %struct.of_device_id** %7, align 8
  %32 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %33 = icmp ne %struct.of_device_id* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %18
  %35 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load %struct.cdns_platform_data*, %struct.cdns_platform_data** %36, align 8
  %38 = icmp ne %struct.cdns_platform_data* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %41 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %40, i32 0, i32 0
  %42 = load %struct.cdns_platform_data*, %struct.cdns_platform_data** %41, align 8
  store %struct.cdns_platform_data* %42, %struct.cdns_platform_data** %8, align 8
  %43 = load %struct.cdns_platform_data*, %struct.cdns_platform_data** %8, align 8
  %44 = getelementptr inbounds %struct.cdns_platform_data, %struct.cdns_platform_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %47 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %39, %34, %18
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %4, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %4, align 8
  %55 = call i32 @devm_ioremap_resource(%struct.TYPE_19__* %53, %struct.resource* %54)
  %56 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %57 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %59 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %65 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %283

68:                                               ; preds = %48
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @platform_get_irq(%struct.platform_device* %69, i32 0)
  %71 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %72 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @THIS_MODULE, align 4
  %74 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %75 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 6
  store i32 %73, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %82 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 8
  %85 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %86 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 5
  store i32* @cdns_i2c_algo, i32** %87, align 8
  %88 = load i32, i32* @CDNS_I2C_TIMEOUT, align 4
  %89 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %90 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 8
  %92 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %93 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  store i32 3, i32* %94, align 8
  %95 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %96 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %97 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  store %struct.cdns_i2c* %95, %struct.cdns_i2c** %98, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %102 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %104, align 8
  %105 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %106 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %105, i32 0, i32 7
  %107 = call i32 @init_completion(i32* %106)
  %108 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %109 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.resource*, %struct.resource** %4, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @snprintf(i32 %111, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @devm_clk_get(%struct.TYPE_19__* %117, i32* null)
  %119 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %120 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %122 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @IS_ERR(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %68
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %131 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @PTR_ERR(i32 %132)
  store i32 %133, i32* %2, align 4
  br label %283

134:                                              ; preds = %68
  %135 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %136 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @clk_prepare_enable(i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %147 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %146, i32 0, i32 6
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = call i32 @pm_runtime_enable(%struct.TYPE_19__* %148)
  %150 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %151 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %150, i32 0, i32 6
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %151, align 8
  %153 = load i32, i32* @CNDS_I2C_PM_TIMEOUT, align 4
  %154 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_19__* %152, i32 %153)
  %155 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %156 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %155, i32 0, i32 6
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %156, align 8
  %158 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_19__* %157)
  %159 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %160 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %159, i32 0, i32 6
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = call i32 @pm_runtime_set_active(%struct.TYPE_19__* %161)
  %163 = load i32, i32* @cdns_i2c_clk_notifier_cb, align 4
  %164 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %165 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  %167 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %168 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %171 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %170, i32 0, i32 5
  %172 = call i64 @clk_notifier_register(i32 %169, %struct.TYPE_17__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %145
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i32 @dev_warn(%struct.TYPE_19__* %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %145
  %179 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %180 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @clk_get_rate(i32 %181)
  %183 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %184 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %190 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %189, i32 0, i32 1
  %191 = call i32 @of_property_read_u32(i32 %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %178
  %195 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %196 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @CDNS_I2C_SPEED_MAX, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194, %178
  %201 = load i32, i32* @CDNS_I2C_SPEED_DEFAULT, align 4
  %202 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %203 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i32, i32* @CDNS_I2C_CR_ACK_EN, align 4
  %206 = load i32, i32* @CDNS_I2C_CR_NEA, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @CDNS_I2C_CR_MS, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %211 = call i32 @cdns_i2c_writereg(i32 %209, i32 %210)
  %212 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %213 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %216 = call i32 @cdns_i2c_setclk(i32 %214, %struct.cdns_i2c* %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %204
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %223 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %221, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %6, align 4
  br label %271

228:                                              ; preds = %204
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %232 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @cdns_i2c_isr, align 4
  %235 = load i32, i32* @DRIVER_NAME, align 4
  %236 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %237 = call i32 @devm_request_irq(%struct.TYPE_19__* %230, i32 %233, i32 %234, i32 0, i32 %235, %struct.cdns_i2c* %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %228
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %244 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %242, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %245)
  br label %271

247:                                              ; preds = %228
  %248 = load i32, i32* @CDNS_I2C_TIMEOUT_MAX, align 4
  %249 = load i32, i32* @CDNS_I2C_TIME_OUT_OFFSET, align 4
  %250 = call i32 @cdns_i2c_writereg(i32 %248, i32 %249)
  %251 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %252 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %251, i32 0, i32 3
  %253 = call i32 @i2c_add_adapter(%struct.TYPE_20__* %252)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  br label %271

257:                                              ; preds = %247
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %258, i32 0, i32 0
  %260 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %261 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sdiv i32 %262, 1000
  %264 = load %struct.resource*, %struct.resource** %4, align 8
  %265 = getelementptr inbounds %struct.resource, %struct.resource* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %268 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @dev_info(%struct.TYPE_19__* %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %263, i64 %266, i32 %269)
  store i32 0, i32* %2, align 4
  br label %283

271:                                              ; preds = %256, %240, %219
  %272 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %273 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @clk_disable_unprepare(i32 %274)
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 0
  %278 = call i32 @pm_runtime_set_suspended(%struct.TYPE_19__* %277)
  %279 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %280 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %279, i32 0, i32 0
  %281 = call i32 @pm_runtime_disable(%struct.TYPE_19__* %280)
  %282 = load i32, i32* %6, align 4
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %271, %257, %126, %63, %15
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local %struct.cdns_i2c* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cdns_i2c*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_19__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_19__*) #1

declare dso_local i64 @clk_notifier_register(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @cdns_i2c_writereg(i32, i32) #1

declare dso_local i32 @cdns_i2c_setclk(i32, %struct.cdns_i2c*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_19__*, i32, i32, i32, i32, %struct.cdns_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_20__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_19__*, i8*, i32, i64, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
