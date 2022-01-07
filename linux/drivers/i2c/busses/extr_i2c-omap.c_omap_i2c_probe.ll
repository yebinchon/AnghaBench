; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.omap_i2c_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__*, %struct.i2c_adapter, i32*, i32, i32*, i64, i32 }
%struct.i2c_adapter = type { i32, i32*, %struct.TYPE_19__, i32*, i32*, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.device_node*, %struct.TYPE_20__* }
%struct.resource = type { i32 }
%struct.omap_i2c_bus_platform_data = type { i32, i32, i32* }
%struct.of_device_id = type { %struct.omap_i2c_bus_platform_data* }

@.str = private unnamed_addr constant [18 x i8] c"no irq resource?\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@omap_i2c_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@OMAP_I2C_FLAG_BUS_SHIFT__SHIFT = common dso_local global i32 0, align 4
@OMAP_I2C_PM_TIMEOUT = common dso_local global i32 0, align 4
@reg_map_ip_v1 = common dso_local global i64 0, align 8
@OMAP_I2C_REV_REG = common dso_local global i32 0, align 4
@reg_map_ip_v2 = common dso_local global i64 0, align 8
@OMAP_I2C_IP_V2_REVNB_LO = common dso_local global i32 0, align 4
@OMAP_I2C_REV_ON_2430 = common dso_local global i64 0, align 8
@OMAP_I2C_REV_ON_4430_PLUS = common dso_local global i64 0, align 8
@I2C_OMAP_ERRATA_I207 = common dso_local global i32 0, align 4
@OMAP_I2C_REV_ON_3430_3530 = common dso_local global i64 0, align 8
@I2C_OMAP_ERRATA_I462 = common dso_local global i32 0, align 4
@OMAP_I2C_FLAG_NO_FIFO = common dso_local global i32 0, align 4
@OMAP_I2C_BUFSTAT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_REV_ON_3630 = common dso_local global i64 0, align 8
@OMAP_I2C_OMAP1_REV_2 = common dso_local global i64 0, align 8
@omap_i2c_omap1_isr = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@omap_i2c_isr = common dso_local global i32 0, align 4
@omap_i2c_isr_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failure requesting irq %i\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"OMAP I2C adapter\00", align 1
@omap_i2c_algo = common dso_local global i32 0, align 4
@omap_i2c_quirks = common dso_local global i32 0, align 4
@omap_i2c_bus_recovery_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"bus %d rev%d.%d at %d kHz\0A\00", align 1
@OMAP_I2C_CON_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_i2c_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.omap_i2c_bus_platform_data*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.omap_i2c_bus_platform_data* @dev_get_platdata(%struct.TYPE_20__* %18)
  store %struct.omap_i2c_bus_platform_data* %19, %struct.omap_i2c_bus_platform_data** %7, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %8, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @platform_get_irq(%struct.platform_device* %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %2, align 4
  br label %415

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.omap_i2c_dev* @devm_kzalloc(%struct.TYPE_20__* %35, i32 152, i32 %36)
  store %struct.omap_i2c_dev* %37, %struct.omap_i2c_dev** %4, align 8
  %38 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %39 = icmp ne %struct.omap_i2c_dev* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %415

43:                                               ; preds = %33
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = call %struct.resource* @platform_get_resource(%struct.platform_device* %44, i32 %45, i32 0)
  store %struct.resource* %46, %struct.resource** %6, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i64 @devm_ioremap_resource(%struct.TYPE_20__* %48, %struct.resource* %49)
  %51 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %52 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %51, i32 0, i32 14
  store i64 %50, i64* %52, align 8
  %53 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %54 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %53, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @IS_ERR(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %60 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %59, i32 0, i32 14
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @PTR_ERR(i64 %61)
  store i32 %62, i32* %2, align 4
  br label %415

63:                                               ; preds = %43
  %64 = load i32, i32* @omap_i2c_of_match, align 4
  %65 = call i32 @of_match_ptr(i32 %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call %struct.of_device_id* @of_match_device(i32 %65, %struct.TYPE_20__* %67)
  store %struct.of_device_id* %68, %struct.of_device_id** %9, align 8
  %69 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %70 = icmp ne %struct.of_device_id* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  store i32 100000, i32* %15, align 4
  %72 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %73 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %72, i32 0, i32 0
  %74 = load %struct.omap_i2c_bus_platform_data*, %struct.omap_i2c_bus_platform_data** %73, align 8
  store %struct.omap_i2c_bus_platform_data* %74, %struct.omap_i2c_bus_platform_data** %7, align 8
  %75 = load %struct.omap_i2c_bus_platform_data*, %struct.omap_i2c_bus_platform_data** %7, align 8
  %76 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, %struct.omap_i2c_bus_platform_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %79 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.device_node*, %struct.device_node** %8, align 8
  %81 = call i32 @of_property_read_u32(%struct.device_node* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  %82 = load i32, i32* %15, align 4
  %83 = sdiv i32 %82, 1000
  %84 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %85 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %106

86:                                               ; preds = %63
  %87 = load %struct.omap_i2c_bus_platform_data*, %struct.omap_i2c_bus_platform_data** %7, align 8
  %88 = icmp ne %struct.omap_i2c_bus_platform_data* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = load %struct.omap_i2c_bus_platform_data*, %struct.omap_i2c_bus_platform_data** %7, align 8
  %91 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, %struct.omap_i2c_bus_platform_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %94 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.omap_i2c_bus_platform_data*, %struct.omap_i2c_bus_platform_data** %7, align 8
  %96 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, %struct.omap_i2c_bus_platform_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %99 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.omap_i2c_bus_platform_data*, %struct.omap_i2c_bus_platform_data** %7, align 8
  %101 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, %struct.omap_i2c_bus_platform_data* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %104 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %103, i32 0, i32 11
  store i32* %102, i32** %104, align 8
  br label %105

105:                                              ; preds = %89, %86
  br label %106

106:                                              ; preds = %105, %71
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %110 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %109, i32 0, i32 9
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %113 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %116 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.omap_i2c_dev* %115)
  %117 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %118 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %117, i32 0, i32 15
  %119 = call i32 @init_completion(i32* %118)
  %120 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %121 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @OMAP_I2C_FLAG_BUS_SHIFT__SHIFT, align 4
  %124 = ashr i32 %122, %123
  %125 = and i32 %124, 3
  %126 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %127 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %129 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %128, i32 0, i32 9
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = call i32 @pm_runtime_enable(%struct.TYPE_20__* %130)
  %132 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %133 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %132, i32 0, i32 9
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = load i32, i32* @OMAP_I2C_PM_TIMEOUT, align 4
  %136 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__* %134, i32 %135)
  %137 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %138 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %137, i32 0, i32 9
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__* %139)
  %141 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %142 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %141, i32 0, i32 9
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = call i32 @pm_runtime_get_sync(%struct.TYPE_20__* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %106
  br label %413

148:                                              ; preds = %106
  %149 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %150 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %149, i32 0, i32 14
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 4
  %153 = call i32 @readw_relaxed(i64 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @OMAP_I2C_SCHEME(i32 %154)
  %156 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %157 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %159 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %180 [
    i32 129, label %161
    i32 128, label %179
  ]

161:                                              ; preds = %148
  %162 = load i64, i64* @reg_map_ip_v1, align 8
  %163 = inttoptr i64 %162 to i32*
  %164 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %165 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %164, i32 0, i32 13
  store i32* %163, i32** %165, align 8
  %166 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %167 = load i32, i32* @OMAP_I2C_REV_REG, align 4
  %168 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %166, i32 %167)
  %169 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %170 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %172 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @OMAP_I2C_REV_SCHEME_0_MAJOR(i32 %173)
  store i32 %174, i32* %13, align 4
  %175 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %176 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @OMAP_I2C_REV_SCHEME_0_MAJOR(i32 %177)
  store i32 %178, i32* %14, align 4
  br label %198

179:                                              ; preds = %148
  br label %180

180:                                              ; preds = %148, %179
  %181 = load i64, i64* @reg_map_ip_v2, align 8
  %182 = inttoptr i64 %181 to i32*
  %183 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %184 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %183, i32 0, i32 13
  store i32* %182, i32** %184, align 8
  %185 = load i32, i32* %12, align 4
  %186 = shl i32 %185, 16
  %187 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %188 = load i32, i32* @OMAP_I2C_IP_V2_REVNB_LO, align 4
  %189 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %187, i32 %188)
  %190 = or i32 %186, %189
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @OMAP_I2C_REV_SCHEME_1_MINOR(i32 %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @OMAP_I2C_REV_SCHEME_1_MAJOR(i32 %193)
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %197 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %180, %161
  %199 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %200 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %199, i32 0, i32 12
  store i32 0, i32* %200, align 8
  %201 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %202 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* @OMAP_I2C_REV_ON_2430, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %198
  %208 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %209 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* @OMAP_I2C_REV_ON_4430_PLUS, align 8
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i32, i32* @I2C_OMAP_ERRATA_I207, align 4
  %216 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %217 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %216, i32 0, i32 12
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %207, %198
  %221 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %222 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* @OMAP_I2C_REV_ON_3430_3530, align 8
  %226 = icmp sle i64 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %220
  %228 = load i32, i32* @I2C_OMAP_ERRATA_I462, align 4
  %229 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %230 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %229, i32 0, i32 12
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %220
  %234 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %235 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @OMAP_I2C_FLAG_NO_FIFO, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %284, label %240

240:                                              ; preds = %233
  %241 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %242 = load i32, i32* @OMAP_I2C_BUFSTAT_REG, align 4
  %243 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %241, i32 %242)
  %244 = ashr i32 %243, 14
  %245 = and i32 %244, 3
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %16, align 4
  %247 = shl i32 8, %246
  %248 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %249 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %248, i32 0, i32 6
  store i32 %247, i32* %249, align 8
  %250 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %251 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = sdiv i32 %252, 2
  %254 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %255 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %254, i32 0, i32 6
  store i32 %253, i32* %255, align 8
  %256 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %257 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* @OMAP_I2C_REV_ON_3630, align 8
  %261 = icmp slt i64 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %240
  %263 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %264 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %263, i32 0, i32 7
  store i32 1, i32* %264, align 4
  br label %265

265:                                              ; preds = %262, %240
  %266 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %267 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %266, i32 0, i32 11
  %268 = load i32*, i32** %267, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %283

270:                                              ; preds = %265
  %271 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %272 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = mul nsw i32 1000000, %273
  %275 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %276 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = mul nsw i32 1000, %277
  %279 = sdiv i32 %278, 8
  %280 = sdiv i32 %274, %279
  %281 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %282 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %281, i32 0, i32 8
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %270, %265
  br label %284

284:                                              ; preds = %283, %233
  %285 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %286 = call i32 @omap_i2c_init(%struct.omap_i2c_dev* %285)
  %287 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %288 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = load i64, i64* @OMAP_I2C_OMAP1_REV_2, align 8
  %292 = icmp slt i64 %290, %291
  br i1 %292, label %293, label %306

293:                                              ; preds = %284
  %294 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %295 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %294, i32 0, i32 0
  %296 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %297 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @omap_i2c_omap1_isr, align 4
  %300 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %301 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %302 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %305 = call i32 @devm_request_irq(%struct.TYPE_20__* %295, i32 %298, i32 %299, i32 %300, i32 %303, %struct.omap_i2c_dev* %304)
  store i32 %305, i32* %11, align 4
  br label %322

306:                                              ; preds = %284
  %307 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %308 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %307, i32 0, i32 0
  %309 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %310 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @omap_i2c_isr, align 4
  %313 = load i32, i32* @omap_i2c_isr_thread, align 4
  %314 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %315 = load i32, i32* @IRQF_ONESHOT, align 4
  %316 = or i32 %314, %315
  %317 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %318 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %321 = call i32 @devm_request_threaded_irq(%struct.TYPE_20__* %308, i32 %311, i32 %312, i32 %313, i32 %316, i32 %319, %struct.omap_i2c_dev* %320)
  store i32 %321, i32* %11, align 4
  br label %322

322:                                              ; preds = %306, %293
  %323 = load i32, i32* %11, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %322
  %326 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %327 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %326, i32 0, i32 9
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %327, align 8
  %329 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %330 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %328, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %331)
  br label %398

333:                                              ; preds = %322
  %334 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %335 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %334, i32 0, i32 10
  store %struct.i2c_adapter* %335, %struct.i2c_adapter** %5, align 8
  %336 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %337 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %338 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %336, %struct.omap_i2c_dev* %337)
  %339 = load i32, i32* @THIS_MODULE, align 4
  %340 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %341 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 8
  %342 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %343 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %344 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %343, i32 0, i32 6
  store i32 %342, i32* %344, align 4
  %345 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %346 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @strlcpy(i32 %347, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %349 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %350 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %349, i32 0, i32 4
  store i32* @omap_i2c_algo, i32** %350, align 8
  %351 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %352 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %351, i32 0, i32 3
  store i32* @omap_i2c_quirks, i32** %352, align 8
  %353 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %354 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %353, i32 0, i32 0
  %355 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %356 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 1
  store %struct.TYPE_20__* %354, %struct.TYPE_20__** %357, align 8
  %358 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %359 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 0
  %361 = load %struct.device_node*, %struct.device_node** %360, align 8
  %362 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %363 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 0
  store %struct.device_node* %361, %struct.device_node** %364, align 8
  %365 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %366 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %365, i32 0, i32 1
  store i32* @omap_i2c_bus_recovery_info, i32** %366, align 8
  %367 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %368 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %371 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 8
  %372 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %373 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %372)
  store i32 %373, i32* %11, align 4
  %374 = load i32, i32* %11, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %333
  br label %398

377:                                              ; preds = %333
  %378 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %379 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %378, i32 0, i32 9
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %379, align 8
  %381 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %382 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %14, align 4
  %385 = load i32, i32* %13, align 4
  %386 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %387 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @dev_info(%struct.TYPE_20__* %380, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %383, i32 %384, i32 %385, i32 %388)
  %390 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %391 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %390, i32 0, i32 9
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %391, align 8
  %393 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_20__* %392)
  %394 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %395 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %394, i32 0, i32 9
  %396 = load %struct.TYPE_20__*, %struct.TYPE_20__** %395, align 8
  %397 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_20__* %396)
  store i32 0, i32* %2, align 4
  br label %415

398:                                              ; preds = %376, %325
  %399 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %400 = load i32, i32* @OMAP_I2C_CON_REG, align 4
  %401 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %399, i32 %400, i32 0)
  %402 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %403 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %402, i32 0, i32 9
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %403, align 8
  %405 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_20__* %404)
  %406 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %407 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %406, i32 0, i32 9
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %407, align 8
  %409 = call i32 @pm_runtime_put_sync(%struct.TYPE_20__* %408)
  %410 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %411 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %410, i32 0, i32 0
  %412 = call i32 @pm_runtime_disable(%struct.TYPE_20__* %411)
  br label %413

413:                                              ; preds = %398, %147
  %414 = load i32, i32* %11, align 4
  store i32 %414, i32* %2, align 4
  br label %415

415:                                              ; preds = %413, %377, %58, %40, %28
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local %struct.omap_i2c_bus_platform_data* @dev_get_platdata(%struct.TYPE_20__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local %struct.omap_i2c_dev* @devm_kzalloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_20__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_i2c_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_20__*) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @OMAP_I2C_SCHEME(i32) #1

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @OMAP_I2C_REV_SCHEME_0_MAJOR(i32) #1

declare dso_local i32 @OMAP_I2C_REV_SCHEME_1_MINOR(i32) #1

declare dso_local i32 @OMAP_I2C_REV_SCHEME_1_MAJOR(i32) #1

declare dso_local i32 @omap_i2c_init(%struct.omap_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_20__*, i32, i32, i32, i32, %struct.omap_i2c_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_20__*, i32, i32, i32, i32, i32, %struct.omap_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.omap_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.TYPE_20__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_20__*) #1

declare dso_local i32 @omap_i2c_write_reg(%struct.omap_i2c_dev*, i32, i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
