; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-core.c_at91_twi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-core.c_at91_twi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.at91_twi_dev = type { i64, %struct.TYPE_17__*, i32, %struct.TYPE_18__, i64, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no clock defined\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"AT91\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@AT91_I2C_TIMEOUT = common dso_local global i32 0, align 4
@AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"AT91 i2c bus driver (hw version: %#x).\0A\00", align 1
@AT91_TWI_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_twi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_twi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.at91_twi_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.at91_twi_dev* @devm_kzalloc(%struct.TYPE_17__* %9, i32 80, i32 %10)
  store %struct.at91_twi_dev* %11, %struct.at91_twi_dev** %4, align 8
  %12 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %13 = icmp ne %struct.at91_twi_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %216

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %21 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %20, i32 0, i32 1
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %5, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %216

30:                                               ; preds = %17
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @at91_twi_get_driver_data(%struct.platform_device* %34)
  %36 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %37 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %39 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %216

45:                                               ; preds = %30
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %5, align 8
  %49 = call i32 @devm_ioremap_resource(%struct.TYPE_17__* %47, %struct.resource* %48)
  %50 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %51 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %53 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %59 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %216

62:                                               ; preds = %45
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i64 @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %66 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %68 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %73 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %2, align 4
  br label %216

76:                                               ; preds = %62
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.at91_twi_dev* %78)
  %80 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %81 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = call i32 @devm_clk_get(%struct.TYPE_17__* %82, i32* null)
  %84 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %85 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %87 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %76
  %92 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %93 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = call i32 @dev_err(%struct.TYPE_17__* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %216

98:                                               ; preds = %76
  %99 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %100 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @clk_prepare_enable(i32 %101)
  %103 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %104 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @snprintf(i32 %106, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %109 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %108, i32 0, i32 3
  %110 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %111 = call i32 @i2c_set_adapdata(%struct.TYPE_18__* %109, %struct.at91_twi_dev* %110)
  %112 = load i32, i32* @THIS_MODULE, align 4
  %113 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %114 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %117 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %118 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 8
  %120 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %121 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %124 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %131 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @AT91_I2C_TIMEOUT, align 4
  %134 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %135 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %142 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  store i32 %140, i32* %144, align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i64 @i2c_detect_slave_mode(%struct.TYPE_17__* %146)
  %148 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %149 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  %150 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %151 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %98
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %158 = call i32 @at91_twi_probe_slave(%struct.platform_device* %155, i32 %156, %struct.at91_twi_dev* %157)
  store i32 %158, i32* %6, align 4
  br label %164

159:                                              ; preds = %98
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %163 = call i32 @at91_twi_probe_master(%struct.platform_device* %160, i32 %161, %struct.at91_twi_dev* %162)
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %216

169:                                              ; preds = %164
  %170 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %171 = call i32 @at91_init_twi_bus(%struct.at91_twi_dev* %170)
  %172 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %173 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %172, i32 0, i32 1
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = load i32, i32* @AUTOSUSPEND_TIMEOUT, align 4
  %176 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_17__* %174, i32 %175)
  %177 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %178 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %177, i32 0, i32 1
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_17__* %179)
  %181 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %182 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %181, i32 0, i32 1
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = call i32 @pm_runtime_set_active(%struct.TYPE_17__* %183)
  %185 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %186 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %185, i32 0, i32 1
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = call i32 @pm_runtime_enable(%struct.TYPE_17__* %187)
  %189 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %190 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %189, i32 0, i32 3
  %191 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_18__* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %169
  %195 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %196 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @clk_disable_unprepare(i32 %197)
  %199 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %200 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %199, i32 0, i32 1
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = call i32 @pm_runtime_disable(%struct.TYPE_17__* %201)
  %203 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %204 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %203, i32 0, i32 1
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %204, align 8
  %206 = call i32 @pm_runtime_set_suspended(%struct.TYPE_17__* %205)
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %2, align 4
  br label %216

208:                                              ; preds = %169
  %209 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %210 = getelementptr inbounds %struct.at91_twi_dev, %struct.at91_twi_dev* %209, i32 0, i32 1
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = load %struct.at91_twi_dev*, %struct.at91_twi_dev** %4, align 8
  %213 = load i32, i32* @AT91_TWI_VER, align 4
  %214 = call i32 @at91_twi_read(%struct.at91_twi_dev* %212, i32 %213)
  %215 = call i32 @dev_info(%struct.TYPE_17__* %211, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %208, %194, %167, %91, %71, %57, %42, %27, %14
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.at91_twi_dev* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @at91_twi_get_driver_data(%struct.platform_device*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_17__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.at91_twi_dev*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_18__*, %struct.at91_twi_dev*) #1

declare dso_local i64 @i2c_detect_slave_mode(%struct.TYPE_17__*) #1

declare dso_local i32 @at91_twi_probe_slave(%struct.platform_device*, i32, %struct.at91_twi_dev*) #1

declare dso_local i32 @at91_twi_probe_master(%struct.platform_device*, i32, %struct.at91_twi_dev*) #1

declare dso_local i32 @at91_init_twi_bus(%struct.at91_twi_dev*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_18__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @at91_twi_read(%struct.at91_twi_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
