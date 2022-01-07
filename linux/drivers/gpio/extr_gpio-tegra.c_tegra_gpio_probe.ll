; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.tegra_gpio_info = type { i32, %struct.tegra_gpio_bank*, %struct.TYPE_11__, i32, %struct.TYPE_12__, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.tegra_gpio_bank = type { i32, i32, i32*, i32*, %struct.tegra_gpio_info* }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32, i32, %struct.TYPE_10__*, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing IRQ resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tegra-gpio\00", align 1
@tegra_gpio_request = common dso_local global i32 0, align 4
@tegra_gpio_free = common dso_local global i32 0, align 4
@tegra_gpio_direction_input = common dso_local global i32 0, align 4
@tegra_gpio_get = common dso_local global i32 0, align 4
@tegra_gpio_direction_output = common dso_local global i32 0, align 4
@tegra_gpio_set = common dso_local global i32 0, align 4
@tegra_gpio_get_direction = common dso_local global i32 0, align 4
@tegra_gpio_to_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@tegra_gpio_irq_ack = common dso_local global i32 0, align 4
@tegra_gpio_irq_mask = common dso_local global i32 0, align 4
@tegra_gpio_irq_unmask = common dso_local global i32 0, align 4
@tegra_gpio_irq_set_type = common dso_local global i32 0, align 4
@tegra_gpio_irq_shutdown = common dso_local global i32 0, align 4
@tegra_gpio_set_config = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@irq_domain_simple_ops = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@tegra_gpio_irq_handler = common dso_local global i32 0, align 4
@tegra_gpio_irq_set_wake = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_gpio_info*, align 8
  %5 = alloca %struct.tegra_gpio_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_gpio_info* @devm_kzalloc(%struct.TYPE_10__* %13, i32 152, i32 %14)
  store %struct.tegra_gpio_info* %15, %struct.tegra_gpio_info** %4, align 8
  %16 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %17 = icmp ne %struct.tegra_gpio_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %352

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.TYPE_9__* @of_device_get_match_data(%struct.TYPE_10__* %23)
  %25 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %25, i32 0, i32 6
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %29, i32 0, i32 7
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @platform_irq_count(%struct.platform_device* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %352

37:                                               ; preds = %21
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_10__* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %352

51:                                               ; preds = %37
  %52 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @tegra_gpio_request, align 4
  %56 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 13
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @tegra_gpio_free, align 4
  %60 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 12
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @tegra_gpio_direction_input, align 4
  %64 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 11
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @tegra_gpio_get, align 4
  %68 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %69 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 10
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @tegra_gpio_direction_output, align 4
  %72 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %73 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 9
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @tegra_gpio_set, align 4
  %76 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 8
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @tegra_gpio_get_direction, align 4
  %80 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %81 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 7
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @tegra_gpio_to_irq, align 4
  %84 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %85 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 8
  %87 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 32
  %94 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %95 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %100 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %101, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 8
  %109 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %110 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %111, align 8
  %112 = load i32, i32* @tegra_gpio_irq_ack, align 4
  %113 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %114 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 6
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @tegra_gpio_irq_mask, align 4
  %117 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %118 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 5
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @tegra_gpio_irq_unmask, align 4
  %121 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %122 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @tegra_gpio_irq_set_type, align 4
  %125 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %126 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* @tegra_gpio_irq_shutdown, align 4
  %129 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %130 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 4
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %134 = call i32 @platform_set_drvdata(%struct.platform_device* %132, %struct.tegra_gpio_info* %133)
  %135 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %136 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %135, i32 0, i32 6
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %51
  %142 = load i32, i32* @tegra_gpio_set_config, align 4
  %143 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %144 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %51
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %150 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call %struct.tegra_gpio_bank* @devm_kcalloc(%struct.TYPE_10__* %148, i32 %151, i32 32, i32 %152)
  %154 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %155 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %154, i32 0, i32 1
  store %struct.tegra_gpio_bank* %153, %struct.tegra_gpio_bank** %155, align 8
  %156 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %157 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %156, i32 0, i32 1
  %158 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %157, align 8
  %159 = icmp ne %struct.tegra_gpio_bank* %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %146
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %352

163:                                              ; preds = %146
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %169 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @irq_domain_add_linear(i32 %167, i32 %171, i32* @irq_domain_simple_ops, i32* null)
  %173 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %174 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  %175 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %176 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %163
  %180 = load i32, i32* @ENODEV, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %352

182:                                              ; preds = %163
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %213, %182
  %184 = load i32, i32* %7, align 4
  %185 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %186 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ult i32 %184, %187
  br i1 %188, label %189, label %216

189:                                              ; preds = %183
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @platform_get_irq(%struct.platform_device* %190, i32 %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %2, align 4
  br label %352

197:                                              ; preds = %189
  %198 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %199 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %198, i32 0, i32 1
  %200 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %200, i64 %202
  store %struct.tegra_gpio_bank* %203, %struct.tegra_gpio_bank** %5, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %206 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %209 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %211 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %212 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %211, i32 0, i32 4
  store %struct.tegra_gpio_info* %210, %struct.tegra_gpio_info** %212, align 8
  br label %213

213:                                              ; preds = %197
  %214 = load i32, i32* %7, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %183

216:                                              ; preds = %183
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %217, i32 0)
  %219 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %220 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %219, i32 0, i32 5
  store i32 %218, i32* %220, align 8
  %221 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %222 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @IS_ERR(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %216
  %227 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %228 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @PTR_ERR(i32 %229)
  store i32 %230, i32* %2, align 4
  br label %352

231:                                              ; preds = %216
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %255, %231
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %235 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ult i32 %233, %236
  br i1 %237, label %238, label %258

238:                                              ; preds = %232
  store i32 0, i32* %8, align 4
  br label %239

239:                                              ; preds = %251, %238
  %240 = load i32, i32* %8, align 4
  %241 = icmp ult i32 %240, 4
  br i1 %241, label %242, label %254

242:                                              ; preds = %239
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @tegra_gpio_compose(i32 %243, i32 %244, i32 0)
  store i32 %245, i32* %10, align 4
  %246 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %247 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @GPIO_INT_ENB(%struct.tegra_gpio_info* %247, i32 %248)
  %250 = call i32 @tegra_gpio_writel(%struct.tegra_gpio_info* %246, i32 0, i32 %249)
  br label %251

251:                                              ; preds = %242
  %252 = load i32, i32* %8, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %239

254:                                              ; preds = %239
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %7, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %232

258:                                              ; preds = %232
  %259 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %260 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %259, i32 0, i32 0
  %261 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %262 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %261, i32 0, i32 4
  %263 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %264 = call i32 @devm_gpiochip_add_data(%struct.TYPE_10__* %260, %struct.TYPE_12__* %262, %struct.tegra_gpio_info* %263)
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %258
  %268 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %269 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @irq_domain_remove(i32 %270)
  %272 = load i32, i32* %9, align 4
  store i32 %272, i32* %2, align 4
  br label %352

273:                                              ; preds = %258
  store i32 0, i32* %6, align 4
  br label %274

274:                                              ; preds = %301, %273
  %275 = load i32, i32* %6, align 4
  %276 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %277 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp ult i32 %275, %279
  br i1 %280, label %281, label %304

281:                                              ; preds = %274
  %282 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %283 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %6, align 4
  %286 = call i32 @irq_create_mapping(i32 %284, i32 %285)
  store i32 %286, i32* %11, align 4
  %287 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %288 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %287, i32 0, i32 1
  %289 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i64 @GPIO_BANK(i32 %290)
  %292 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %289, i64 %291
  store %struct.tegra_gpio_bank* %292, %struct.tegra_gpio_bank** %5, align 8
  %293 = load i32, i32* %11, align 4
  %294 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %295 = call i32 @irq_set_chip_data(i32 %293, %struct.tegra_gpio_bank* %294)
  %296 = load i32, i32* %11, align 4
  %297 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %298 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %297, i32 0, i32 2
  %299 = load i32, i32* @handle_simple_irq, align 4
  %300 = call i32 @irq_set_chip_and_handler(i32 %296, %struct.TYPE_11__* %298, i32 %299)
  br label %301

301:                                              ; preds = %281
  %302 = load i32, i32* %6, align 4
  %303 = add i32 %302, 1
  store i32 %303, i32* %6, align 4
  br label %274

304:                                              ; preds = %274
  store i32 0, i32* %7, align 4
  br label %305

305:                                              ; preds = %346, %304
  %306 = load i32, i32* %7, align 4
  %307 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %308 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp ult i32 %306, %309
  br i1 %310, label %311, label %349

311:                                              ; preds = %305
  %312 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %313 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %312, i32 0, i32 1
  %314 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %313, align 8
  %315 = load i32, i32* %7, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %314, i64 %316
  store %struct.tegra_gpio_bank* %317, %struct.tegra_gpio_bank** %5, align 8
  %318 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %319 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @tegra_gpio_irq_handler, align 4
  %322 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %323 = call i32 @irq_set_chained_handler_and_data(i32 %320, i32 %321, %struct.tegra_gpio_bank* %322)
  store i32 0, i32* %8, align 4
  br label %324

324:                                              ; preds = %342, %311
  %325 = load i32, i32* %8, align 4
  %326 = icmp ult i32 %325, 4
  br i1 %326, label %327, label %345

327:                                              ; preds = %324
  %328 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %329 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %328, i32 0, i32 3
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %8, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = call i32 @spin_lock_init(i32* %333)
  %335 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %5, align 8
  %336 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %8, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = call i32 @spin_lock_init(i32* %340)
  br label %342

342:                                              ; preds = %327
  %343 = load i32, i32* %8, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %8, align 4
  br label %324

345:                                              ; preds = %324
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %7, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %7, align 4
  br label %305

349:                                              ; preds = %305
  %350 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %4, align 8
  %351 = call i32 @tegra_gpio_debuginit(%struct.tegra_gpio_info* %350)
  store i32 0, i32* %2, align 4
  br label %352

352:                                              ; preds = %349, %267, %226, %195, %179, %160, %45, %35, %18
  %353 = load i32, i32* %2, align 4
  ret i32 %353
}

declare dso_local %struct.tegra_gpio_info* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @of_device_get_match_data(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_gpio_info*) #1

declare dso_local %struct.tegra_gpio_bank* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tegra_gpio_compose(i32, i32, i32) #1

declare dso_local i32 @tegra_gpio_writel(%struct.tegra_gpio_info*, i32, i32) #1

declare dso_local i32 @GPIO_INT_ENB(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_10__*, %struct.TYPE_12__*, %struct.tegra_gpio_info*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i64 @GPIO_BANK(i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.tegra_gpio_bank*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.tegra_gpio_bank*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tegra_gpio_debuginit(%struct.tegra_gpio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
