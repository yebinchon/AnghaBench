; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.lpi2c_imx_struct = type { i32, i32, %struct.TYPE_18__, i64, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__, i32, i32*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't get irq number\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@lpi2c_imx_algo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't get I2C peripheral clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@LPI2C_DEFAULT_RATE = common dso_local global i32 0, align 4
@lpi2c_imx_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"can't claim irq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"clk enable failed %d\0A\00", align 1
@I2C_PM_TIMEOUT = common dso_local global i32 0, align 4
@LPI2C_PARAM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"LPI2C adapter registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpi2c_imx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpi2c_imx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpi2c_imx_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lpi2c_imx_struct* @devm_kzalloc(%struct.TYPE_20__* %9, i32 72, i32 %10)
  store %struct.lpi2c_imx_struct* %11, %struct.lpi2c_imx_struct** %4, align 8
  %12 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %13 = icmp ne %struct.lpi2c_imx_struct* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %204

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %21 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %23 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @IS_ERR(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %29 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @PTR_ERR(i64 %30)
  store i32 %31, i32* %2, align 4
  br label %204

32:                                               ; preds = %17
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = call i32 @platform_get_irq(%struct.platform_device* %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %204

42:                                               ; preds = %32
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %45 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %48 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  store i32* @lpi2c_imx_algo, i32** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %53 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %61 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %65 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strlcpy(i32 %67, i32 %70, i32 4)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i64 @devm_clk_get(%struct.TYPE_20__* %73, i32* null)
  %75 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %76 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %78 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @IS_ERR(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %42
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %87 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @PTR_ERR(i64 %88)
  store i32 %89, i32* %2, align 4
  br label %204

90:                                               ; preds = %42
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %96 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %95, i32 0, i32 5
  %97 = call i32 @of_property_read_u32(i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load i32, i32* @LPI2C_DEFAULT_RATE, align 4
  %102 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %103 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %90
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @lpi2c_imx_isr, align 4
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %113 = call i32 @devm_request_irq(%struct.TYPE_20__* %106, i32 %107, i32 %108, i32 0, i32 %111, %struct.lpi2c_imx_struct* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %104
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %204

122:                                              ; preds = %104
  %123 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %124 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %123, i32 0, i32 2
  %125 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %126 = call i32 @i2c_set_adapdata(%struct.TYPE_18__* %124, %struct.lpi2c_imx_struct* %125)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.lpi2c_imx_struct* %128)
  %130 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %131 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @clk_prepare_enable(i64 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %204

142:                                              ; preds = %122
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load i32, i32* @I2C_PM_TIMEOUT, align 4
  %146 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__* %144, i32 %145)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__* %148)
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @pm_runtime_get_noresume(%struct.TYPE_20__* %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @pm_runtime_set_active(%struct.TYPE_20__* %154)
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @pm_runtime_enable(%struct.TYPE_20__* %157)
  %159 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %160 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @LPI2C_PARAM, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @readl(i64 %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, 15
  %167 = shl i32 1, %166
  %168 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %169 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %5, align 4
  %171 = lshr i32 %170, 8
  %172 = and i32 %171, 15
  %173 = shl i32 1, %172
  %174 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %175 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %177 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %176, i32 0, i32 2
  %178 = call i32 @i2c_add_adapter(%struct.TYPE_18__* %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %142
  br label %193

182:                                              ; preds = %142
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_20__* %184)
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_20__* %187)
  %189 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %4, align 8
  %190 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = call i32 @dev_info(%struct.TYPE_19__* %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %204

193:                                              ; preds = %181
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 @pm_runtime_put(%struct.TYPE_20__* %195)
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i32 @pm_runtime_disable(%struct.TYPE_20__* %198)
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_20__* %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %193, %182, %136, %116, %82, %37, %27, %14
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.lpi2c_imx_struct* @devm_kzalloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_20__*, i32, i32, i32, i32, %struct.lpi2c_imx_struct*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_18__*, %struct.lpi2c_imx_struct*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpi2c_imx_struct*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_20__*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_20__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
