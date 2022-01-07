; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_gpio_twl4030_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_gpio_twl4030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.twl4030_gpio_platform_data = type { i32 (%struct.TYPE_11__*, i32, i64)*, i64, i32, i32, i32, i32 }
%struct.gpio_twl4030_priv = type { i32, %struct.TYPE_12__, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't dispatch IRQs from modules\0A\00", align 1
@TWL4030_GPIO_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to alloc irq_descs\0A\00", align 1
@irq_domain_simple_ops = common dso_local global i32 0, align 4
@TWL4030_MODULE_GPIO = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Platform data is missing\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"pullups %.05x %.05x --> %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"debounce %.03x %.01x --> %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"could not register gpiochip, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"setup --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_twl4030_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_twl4030_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_gpio_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.gpio_twl4030_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.twl4030_gpio_platform_data* @dev_get_platdata(%struct.TYPE_11__* %11)
  store %struct.twl4030_gpio_platform_data* %12, %struct.twl4030_gpio_platform_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.gpio_twl4030_priv* @devm_kzalloc(%struct.TYPE_11__* %18, i32 40, i32 %19)
  store %struct.gpio_twl4030_priv* %20, %struct.gpio_twl4030_priv** %6, align 8
  %21 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %22 = icmp ne %struct.gpio_twl4030_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %199

26:                                               ; preds = %1
  %27 = call i64 (...) @is_module()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %63

33:                                               ; preds = %26
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i64, i64* @TWL4030_GPIO_MAX, align 8
  %37 = call i32 @devm_irq_alloc_descs(%struct.TYPE_11__* %35, i32 -1, i32 0, i64 %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %199

45:                                               ; preds = %33
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load i64, i64* @TWL4030_GPIO_MAX, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @irq_domain_add_legacy(%struct.device_node* %46, i64 %47, i32 %48, i32 0, i32* @irq_domain_simple_ops, i32* null)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* @TWL4030_MODULE_GPIO, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @twl4030_sih_setup(%struct.TYPE_11__* %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %199

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %62 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %29
  %64 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %65 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %64, i32 0, i32 1
  %66 = bitcast %struct.TYPE_12__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 bitcast (%struct.TYPE_12__* @template_chip to i8*), i64 24, i1 false)
  %67 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %68 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load i64, i64* @TWL4030_GPIO_MAX, align 8
  %71 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %72 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %77 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %78, align 8
  %79 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %80 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %79, i32 0, i32 2
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = icmp ne %struct.device_node* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %63
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %88 = call %struct.twl4030_gpio_platform_data* @of_gpio_twl4030(%struct.TYPE_11__* %86, %struct.twl4030_gpio_platform_data* %87)
  store %struct.twl4030_gpio_platform_data* %88, %struct.twl4030_gpio_platform_data** %4, align 8
  br label %89

89:                                               ; preds = %84, %63
  %90 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %91 = icmp eq %struct.twl4030_gpio_platform_data* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @ENXIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %199

98:                                               ; preds = %89
  %99 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %100 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %103 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @gpio_twl4030_pulls(i32 %101, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %98
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %112 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %115 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_11__* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %108, %98
  %120 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %124 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @gpio_twl4030_debounce(i32 %122, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %133 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %136 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_11__* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %129, %119
  %141 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %142 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %147 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 2
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %153 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %152, i32 0, i32 1
  %154 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %155 = call i32 @gpiochip_add_data(%struct.TYPE_12__* %153, %struct.gpio_twl4030_priv* %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %151
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i32, i32* %7, align 4
  %162 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  %163 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %164 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = call i32 @gpio_twl4030_remove(%struct.platform_device* %166)
  br label %197

168:                                              ; preds = %151
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %171 = call i32 @platform_set_drvdata(%struct.platform_device* %169, %struct.gpio_twl4030_priv* %170)
  %172 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %173 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_11__*, i32, i64)*, i32 (%struct.TYPE_11__*, i32, i64)** %173, align 8
  %175 = icmp ne i32 (%struct.TYPE_11__*, i32, i64)* %174, null
  br i1 %175, label %176, label %196

176:                                              ; preds = %168
  %177 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %4, align 8
  %178 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %177, i32 0, i32 0
  %179 = load i32 (%struct.TYPE_11__*, i32, i64)*, i32 (%struct.TYPE_11__*, i32, i64)** %178, align 8
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %6, align 8
  %183 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i64, i64* @TWL4030_GPIO_MAX, align 8
  %187 = call i32 %179(%struct.TYPE_11__* %181, i32 %185, i64 %186)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %176
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load i32, i32* %9, align 4
  %194 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_11__* %192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %190, %176
  br label %196

196:                                              ; preds = %195, %168
  br label %197

197:                                              ; preds = %196, %158
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %92, %57, %40, %23
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.twl4030_gpio_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local %struct.gpio_twl4030_priv* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @is_module(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @devm_irq_alloc_descs(%struct.TYPE_11__*, i32, i32, i64, i32) #1

declare dso_local i32 @irq_domain_add_legacy(%struct.device_node*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @twl4030_sih_setup(%struct.TYPE_11__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.twl4030_gpio_platform_data* @of_gpio_twl4030(%struct.TYPE_11__*, %struct.twl4030_gpio_platform_data*) #1

declare dso_local i32 @gpio_twl4030_pulls(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, i32, ...) #1

declare dso_local i32 @gpio_twl4030_debounce(i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_12__*, %struct.gpio_twl4030_priv*) #1

declare dso_local i32 @gpio_twl4030_remove(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_twl4030_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
