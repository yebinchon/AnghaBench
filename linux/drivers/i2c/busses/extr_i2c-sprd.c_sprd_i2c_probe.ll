; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32, i32 }
%struct.device = type { i32 }
%struct.sprd_i2c = type { i64, i32, i32, %struct.device*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, %struct.sprd_i2c*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get irq resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sprd-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@sprd_i2c_algo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPRD_I2C_PM_TIMEOUT = common dso_local global i32 0, align 4
@sprd_i2c_isr = common dso_local global i32 0, align 4
@sprd_i2c_isr_thread = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"add adapter failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sprd_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @of_alias_get_id(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.sprd_i2c* @devm_kzalloc(%struct.device* %16, i32 88, i32 %17)
  store %struct.sprd_i2c* %18, %struct.sprd_i2c** %5, align 8
  %19 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %20 = icmp ne %struct.sprd_i2c* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %232

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %25, i32 0)
  %27 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %28 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %36 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %232

39:                                               ; preds = %24
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i64 @platform_get_irq(%struct.platform_device* %40, i32 0)
  %42 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %43 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %45 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %232

56:                                               ; preds = %39
  %57 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %58 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %57, i32 0, i32 4
  %59 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %60 = call i32 @i2c_set_adapdata(%struct.TYPE_5__* %58, %struct.sprd_i2c* %59)
  %61 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %62 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %61, i32 0, i32 5
  %63 = call i32 @init_completion(i32* %62)
  %64 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %65 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snprintf(i32 %67, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %70 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %69, i32 0, i32 1
  store i32 100000, i32* %70, align 8
  %71 = load i32, i32* @THIS_MODULE, align 4
  %72 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %73 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %77 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %76, i32 0, i32 3
  store %struct.device* %75, %struct.device** %77, align 8
  %78 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %79 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 3, i32* %80, align 8
  %81 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %82 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i32* @sprd_i2c_algo, i32** %83, align 8
  %84 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %85 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %86 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  store %struct.sprd_i2c* %84, %struct.sprd_i2c** %87, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %90 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store %struct.device* %88, %struct.device** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %97 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %103 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @of_property_read_u32(i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %56
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %114 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %56
  %116 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %117 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 100000
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %122 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 400000
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %232

128:                                              ; preds = %120, %115
  %129 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %130 = call i32 @sprd_i2c_clk_init(%struct.sprd_i2c* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %232

135:                                              ; preds = %128
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %138 = call i32 @platform_set_drvdata(%struct.platform_device* %136, %struct.sprd_i2c* %137)
  %139 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %140 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @clk_prepare_enable(i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %232

147:                                              ; preds = %135
  %148 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %149 = call i32 @sprd_i2c_enable(%struct.sprd_i2c* %148)
  %150 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %151 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %150, i32 0, i32 3
  %152 = load %struct.device*, %struct.device** %151, align 8
  %153 = load i32, i32* @SPRD_I2C_PM_TIMEOUT, align 4
  %154 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %152, i32 %153)
  %155 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %156 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %155, i32 0, i32 3
  %157 = load %struct.device*, %struct.device** %156, align 8
  %158 = call i32 @pm_runtime_use_autosuspend(%struct.device* %157)
  %159 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %160 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %159, i32 0, i32 3
  %161 = load %struct.device*, %struct.device** %160, align 8
  %162 = call i32 @pm_runtime_set_active(%struct.device* %161)
  %163 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %164 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %163, i32 0, i32 3
  %165 = load %struct.device*, %struct.device** %164, align 8
  %166 = call i32 @pm_runtime_enable(%struct.device* %165)
  %167 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %168 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %167, i32 0, i32 3
  %169 = load %struct.device*, %struct.device** %168, align 8
  %170 = call i32 @pm_runtime_get_sync(%struct.device* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %147
  br label %218

174:                                              ; preds = %147
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %177 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* @sprd_i2c_isr, align 4
  %181 = load i32, i32* @sprd_i2c_isr_thread, align 4
  %182 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %183 = load i32, i32* @IRQF_ONESHOT, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %189 = call i32 @devm_request_threaded_irq(%struct.device* %175, i32 %179, i32 %180, i32 %181, i32 %184, i32 %187, %struct.sprd_i2c* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %174
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %196 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %197)
  br label %218

199:                                              ; preds = %174
  %200 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %201 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %200, i32 0, i32 4
  %202 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_5__* %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %207, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %218

209:                                              ; preds = %199
  %210 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %211 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %210, i32 0, i32 3
  %212 = load %struct.device*, %struct.device** %211, align 8
  %213 = call i32 @pm_runtime_mark_last_busy(%struct.device* %212)
  %214 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %215 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %214, i32 0, i32 3
  %216 = load %struct.device*, %struct.device** %215, align 8
  %217 = call i32 @pm_runtime_put_autosuspend(%struct.device* %216)
  store i32 0, i32* %2, align 4
  br label %232

218:                                              ; preds = %205, %192, %173
  %219 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %220 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %219, i32 0, i32 3
  %221 = load %struct.device*, %struct.device** %220, align 8
  %222 = call i32 @pm_runtime_put_noidle(%struct.device* %221)
  %223 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %224 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %223, i32 0, i32 3
  %225 = load %struct.device*, %struct.device** %224, align 8
  %226 = call i32 @pm_runtime_disable(%struct.device* %225)
  %227 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %228 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @clk_disable_unprepare(i32 %229)
  %231 = load i32, i32* %7, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %218, %209, %145, %133, %125, %48, %34, %21
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local %struct.sprd_i2c* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_5__*, %struct.sprd_i2c*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @sprd_i2c_clk_init(%struct.sprd_i2c*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_i2c*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @sprd_i2c_enable(%struct.sprd_i2c*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.sprd_i2c*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
