; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i64 }
%struct.i2c_bus_recovery_info = type { i8*, i8* }
%struct.platform_device = type { i32, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.davinci_i2c_dev = type { i32, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.i2c_adapter, i8*, i8*, i32 }
%struct.i2c_adapter = type { i32, %struct.i2c_bus_recovery_info*, %struct.TYPE_24__, i32, i32*, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_25__* }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't get irq resource ret=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@davinci_i2c_platform_data_default = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ti,has-pfunc\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DAVINCI_I2C_PM_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to runtime_get device: %d\0A\00", align 1
@i2c_davinci_isr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failure requesting irq %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to register cpufreq\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"DaVinci I2C adapter\00", align 1
@i2c_davinci_algo = common dso_local global i32 0, align 4
@DAVINCI_I2C_TIMEOUT = common dso_local global i32 0, align 4
@davinci_i2c_scl_recovery_info = common dso_local global %struct.i2c_bus_recovery_info zeroinitializer, align 8
@davinci_i2c_gpio_recovery_info = common dso_local global %struct.i2c_bus_recovery_info zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@GPIOD_OUT_HIGH_OPEN_DRAIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.davinci_i2c_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.i2c_bus_recovery_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 1
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %349

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @devm_kzalloc(%struct.TYPE_25__* %35, i32 112, i32 %36)
  %38 = bitcast i8* %37 to %struct.davinci_i2c_dev*
  store %struct.davinci_i2c_dev* %38, %struct.davinci_i2c_dev** %4, align 8
  %39 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %40 = icmp ne %struct.davinci_i2c_dev* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %349

47:                                               ; preds = %33
  %48 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %49 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %48, i32 0, i32 6
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %54 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %53, i32 0, i32 1
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %57 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = call %struct.TYPE_23__* @dev_get_platdata(%struct.TYPE_25__* %59)
  %61 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %62 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %61, i32 0, i32 2
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.davinci_i2c_dev* %64)
  %66 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %67 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %66, i32 0, i32 2
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %67, align 8
  %69 = icmp ne %struct.TYPE_23__* %68, null
  br i1 %69, label %119, label %70

70:                                               ; preds = %47
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %70
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @devm_kzalloc(%struct.TYPE_25__* %78, i32 4, i32 %79)
  %81 = bitcast i8* %80 to %struct.TYPE_23__*
  %82 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %83 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %82, i32 0, i32 2
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %83, align 8
  %84 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %85 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = icmp ne %struct.TYPE_23__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %349

91:                                               ; preds = %76
  %92 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %93 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %92, i32 0, i32 2
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = call i32 @memcpy(%struct.TYPE_23__* %94, %struct.TYPE_23__* @davinci_i2c_platform_data_default, i32 4)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @of_property_read_u32(i64 %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %10, align 4
  %104 = sdiv i32 %103, 1000
  %105 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %106 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %105, i32 0, i32 2
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  br label %109

109:                                              ; preds = %102, %91
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @of_property_read_bool(i64 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %116 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %115, i32 0, i32 2
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  store i64 %114, i64* %118, align 8
  br label %128

119:                                              ; preds = %70, %47
  %120 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %121 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %120, i32 0, i32 2
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = icmp ne %struct.TYPE_23__* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %126 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %125, i32 0, i32 2
  store %struct.TYPE_23__* @davinci_i2c_platform_data_default, %struct.TYPE_23__** %126, align 8
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %109
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 1
  %131 = call i8* @devm_clk_get(%struct.TYPE_25__* %130, i32* null)
  %132 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %133 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %135 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @IS_ERR(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %141 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @PTR_ERR(i8* %142)
  store i32 %143, i32* %2, align 4
  br label %349

144:                                              ; preds = %128
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = load i32, i32* @IORESOURCE_MEM, align 4
  %147 = call %struct.resource* @platform_get_resource(%struct.platform_device* %145, i32 %146, i32 0)
  store %struct.resource* %147, %struct.resource** %6, align 8
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 1
  %150 = load %struct.resource*, %struct.resource** %6, align 8
  %151 = call i8* @devm_ioremap_resource(%struct.TYPE_25__* %149, %struct.resource* %150)
  %152 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %153 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %155 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @IS_ERR(i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %144
  %160 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %161 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @PTR_ERR(i8* %162)
  store i32 %163, i32* %2, align 4
  br label %349

164:                                              ; preds = %144
  %165 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %166 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %165, i32 0, i32 1
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %166, align 8
  %168 = load i32, i32* @DAVINCI_I2C_PM_TIMEOUT, align 4
  %169 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_25__* %167, i32 %168)
  %170 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %171 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %170, i32 0, i32 1
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %171, align 8
  %173 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_25__* %172)
  %174 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %175 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %174, i32 0, i32 1
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %175, align 8
  %177 = call i32 @pm_runtime_enable(%struct.TYPE_25__* %176)
  %178 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %179 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %178, i32 0, i32 1
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = call i32 @pm_runtime_get_sync(%struct.TYPE_25__* %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %164
  %185 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %186 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %185, i32 0, i32 1
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %187, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  %190 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %191 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %190, i32 0, i32 1
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %191, align 8
  %193 = call i32 @pm_runtime_put_noidle(%struct.TYPE_25__* %192)
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %2, align 4
  br label %349

195:                                              ; preds = %164
  %196 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %197 = call i32 @i2c_davinci_init(%struct.davinci_i2c_dev* %196)
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 1
  %200 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %201 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @i2c_davinci_isr, align 4
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %208 = call i32 @devm_request_irq(%struct.TYPE_25__* %199, i32 %202, i32 %203, i32 0, i32 %206, %struct.davinci_i2c_dev* %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %195
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 1
  %214 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %215 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  br label %335

218:                                              ; preds = %195
  %219 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %220 = call i32 @i2c_davinci_cpufreq_register(%struct.davinci_i2c_dev* %219)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 1
  %226 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %335

227:                                              ; preds = %218
  %228 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %229 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %228, i32 0, i32 3
  store %struct.i2c_adapter* %229, %struct.i2c_adapter** %5, align 8
  %230 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %231 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %232 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %230, %struct.davinci_i2c_dev* %231)
  %233 = load i32, i32* @THIS_MODULE, align 4
  %234 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %235 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %234, i32 0, i32 7
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %237 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %238 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 4
  %239 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %240 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @strlcpy(i32 %241, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %243 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %244 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %243, i32 0, i32 4
  store i32* @i2c_davinci_algo, i32** %244, align 8
  %245 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %246 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %245, i32 0, i32 1
  %247 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %248 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  store %struct.TYPE_25__* %246, %struct.TYPE_25__** %249, align 8
  %250 = load i32, i32* @DAVINCI_I2C_TIMEOUT, align 4
  %251 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %252 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %254 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %258 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 0
  store i64 %256, i64* %259, align 8
  %260 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %261 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %260, i32 0, i32 2
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %227
  %267 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %268 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %267, i32 0, i32 1
  store %struct.i2c_bus_recovery_info* @davinci_i2c_scl_recovery_info, %struct.i2c_bus_recovery_info** %268, align 8
  br label %315

269:                                              ; preds = %227
  %270 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %271 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %270, i32 0, i32 2
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %314

276:                                              ; preds = %269
  store %struct.i2c_bus_recovery_info* @davinci_i2c_gpio_recovery_info, %struct.i2c_bus_recovery_info** %7, align 8
  %277 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %7, align 8
  %278 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %279 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %278, i32 0, i32 1
  store %struct.i2c_bus_recovery_info* %277, %struct.i2c_bus_recovery_info** %279, align 8
  %280 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %281 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %280, i32 0, i32 1
  %282 = load i32, i32* @GPIOD_OUT_HIGH_OPEN_DRAIN, align 4
  %283 = call i8* @devm_gpiod_get(%struct.TYPE_25__* %281, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %282)
  %284 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %7, align 8
  %285 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %284, i32 0, i32 1
  store i8* %283, i8** %285, align 8
  %286 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %7, align 8
  %287 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = call i64 @IS_ERR(i8* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %276
  %292 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %7, align 8
  %293 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @PTR_ERR(i8* %294)
  store i32 %295, i32* %8, align 4
  br label %335

296:                                              ; preds = %276
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 1
  %299 = load i32, i32* @GPIOD_IN, align 4
  %300 = call i8* @devm_gpiod_get(%struct.TYPE_25__* %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %299)
  %301 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %7, align 8
  %302 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  %303 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %7, align 8
  %304 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = call i64 @IS_ERR(i8* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %296
  %309 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %7, align 8
  %310 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @PTR_ERR(i8* %311)
  store i32 %312, i32* %8, align 4
  br label %335

313:                                              ; preds = %296
  br label %314

314:                                              ; preds = %313, %269
  br label %315

315:                                              ; preds = %314, %266
  %316 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %317 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %320 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %322 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %321)
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* %8, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %315
  br label %335

326:                                              ; preds = %315
  %327 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %328 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %327, i32 0, i32 1
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %328, align 8
  %330 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_25__* %329)
  %331 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %332 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %331, i32 0, i32 1
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %332, align 8
  %334 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_25__* %333)
  store i32 0, i32* %2, align 4
  br label %349

335:                                              ; preds = %325, %308, %291, %223, %211
  %336 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %337 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %336, i32 0, i32 1
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %337, align 8
  %339 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_25__* %338)
  %340 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %341 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %340, i32 0, i32 1
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %341, align 8
  %343 = call i32 @pm_runtime_put_sync(%struct.TYPE_25__* %342)
  %344 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %345 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %344, i32 0, i32 1
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %345, align 8
  %347 = call i32 @pm_runtime_disable(%struct.TYPE_25__* %346)
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %335, %326, %184, %159, %139, %88, %41, %31
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_25__*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.TYPE_23__* @dev_get_platdata(%struct.TYPE_25__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.davinci_i2c_dev*) #1

declare dso_local i32 @memcpy(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(i64, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_25__*, %struct.resource*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_25__*) #1

declare dso_local i32 @i2c_davinci_init(%struct.davinci_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_25__*, i32, i32, i32, i32, %struct.davinci_i2c_dev*) #1

declare dso_local i32 @i2c_davinci_cpufreq_register(%struct.davinci_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.davinci_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
