; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.img_i2c = type { %struct.TYPE_18__, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.device_node*, %struct.TYPE_21__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't get irq number\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"can't get system clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"scb\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"can't get core clock\0A\00", align 1
@img_i2c_isr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"can't request irq %d\0A\00", align 1
@img_i2c_check_timer = common dso_local global i32 0, align 4
@timings = common dso_local global %struct.TYPE_20__* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@img_i2c_algo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"IMG SCB I2C\00", align 1
@MODE_INACTIVE = common dso_local global i32 0, align 4
@IMG_I2C_PM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.img_i2c*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.img_i2c* @devm_kzalloc(%struct.TYPE_21__* %15, i32 88, i32 %16)
  store %struct.img_i2c* %17, %struct.img_i2c** %5, align 8
  %18 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %19 = icmp ne %struct.img_i2c* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %230

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = call i8* @devm_ioremap_resource(%struct.TYPE_21__* %28, %struct.resource* %29)
  %31 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %32 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %33, i32 0, i32 7
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %230

43:                                               ; preds = %23
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq(%struct.platform_device* %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %230

53:                                               ; preds = %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i8* @devm_clk_get(%struct.TYPE_21__* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %58 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %60 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %69 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %2, align 4
  br label %230

72:                                               ; preds = %53
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i8* @devm_clk_get(%struct.TYPE_21__* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %77 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %79 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %78, i32 0, i32 5
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %88 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %2, align 4
  br label %230

91:                                               ; preds = %72
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @img_i2c_isr, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %100 = call i32 @devm_request_irq(%struct.TYPE_21__* %93, i32 %94, i32 %95, i32 0, i32 %98, %struct.img_i2c* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %91
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %230

109:                                              ; preds = %91
  %110 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %111 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %110, i32 0, i32 4
  %112 = load i32, i32* @img_i2c_check_timer, align 4
  %113 = call i32 @timer_setup(i32* %111, i32 %112, i32 0)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** @timings, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %119 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load %struct.device_node*, %struct.device_node** %4, align 8
  %121 = call i32 @of_property_read_u32(%struct.device_node* %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %126 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %109
  %128 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %129 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %128, i32 0, i32 0
  %130 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %131 = call i32 @i2c_set_adapdata(%struct.TYPE_18__* %129, %struct.img_i2c* %130)
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %135 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %137, align 8
  %138 = load %struct.device_node*, %struct.device_node** %4, align 8
  %139 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %140 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  store %struct.device_node* %138, %struct.device_node** %142, align 8
  %143 = load i32, i32* @THIS_MODULE, align 4
  %144 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %145 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 4
  store i32 %143, i32* %146, align 8
  %147 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %148 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  store i32* @img_i2c_algo, i32** %149, align 8
  %150 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %151 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  store i32 5, i32* %152, align 8
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %157 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 8
  %159 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %160 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @snprintf(i32 %162, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %164 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %165 = load i32, i32* @MODE_INACTIVE, align 4
  %166 = call i32 @img_i2c_switch_mode(%struct.img_i2c* %164, i32 %165)
  %167 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %168 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %167, i32 0, i32 2
  %169 = call i32 @spin_lock_init(i32* %168)
  %170 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %171 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %170, i32 0, i32 1
  %172 = call i32 @init_completion(i32* %171)
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %175 = call i32 @platform_set_drvdata(%struct.platform_device* %173, %struct.img_i2c* %174)
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load i32, i32* @IMG_I2C_PM_TIMEOUT, align 4
  %179 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_21__* %177, i32 %178)
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_21__* %181)
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @pm_runtime_enable(%struct.TYPE_21__* %184)
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @pm_runtime_enabled(%struct.TYPE_21__* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %127
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @img_i2c_runtime_resume(%struct.TYPE_21__* %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %2, align 4
  br label %230

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %127
  %200 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %201 = call i32 @img_i2c_init(%struct.img_i2c* %200)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %213

205:                                              ; preds = %199
  %206 = load %struct.img_i2c*, %struct.img_i2c** %5, align 8
  %207 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %206, i32 0, i32 0
  %208 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_18__* %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %213

212:                                              ; preds = %205
  store i32 0, i32* %2, align 4
  br label %230

213:                                              ; preds = %211, %204
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call i32 @pm_runtime_enabled(%struct.TYPE_21__* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %213
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = call i32 @img_i2c_runtime_suspend(%struct.TYPE_21__* %220)
  br label %222

222:                                              ; preds = %218, %213
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 @pm_runtime_disable(%struct.TYPE_21__* %224)
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_21__* %227)
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %222, %212, %196, %103, %83, %64, %48, %38, %20
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.img_i2c* @devm_kzalloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_21__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_21__*, i32, i32, i32, i32, %struct.img_i2c*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_18__*, %struct.img_i2c*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @img_i2c_switch_mode(%struct.img_i2c*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.img_i2c*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.TYPE_21__*) #1

declare dso_local i32 @img_i2c_runtime_resume(%struct.TYPE_21__*) #1

declare dso_local i32 @img_i2c_init(%struct.img_i2c*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_18__*) #1

declare dso_local i32 @img_i2c_runtime_suspend(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
