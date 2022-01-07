; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vibra_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.vibra_info = type { i32, i32, i32, i32, i64, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"vibra\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"parent of node is missing?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ti,vibldrv-res\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ti,vibrdrv-res\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ti,viblmotor-res\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ti,vibrmotor-res\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ti,vddvibl-uV\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ti,vddvibr-uV\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"invalid vibra driver/motor resistance\0A\00", align 1
@twl6040_vib_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"twl6040_irq_vib\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"VIB IRQ request failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"vddvibl\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"vddvibr\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"couldn't get regulators %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"failed to set VDDVIBL volt %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"failed to set VDDVIBR volt %d\0A\00", align 1
@vibra_play_work = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [32 x i8] c"couldn't allocate input device\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"twl6040:vibrator\00", align 1
@twl6040_vibra_close = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@vibra_play = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [34 x i8] c"couldn't register vibrator to FF\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"couldn't register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl6040_vibra_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_vibra_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.vibra_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_get_child_by_name(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %285

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.vibra_info* @devm_kzalloc(%struct.TYPE_14__* %28, i32 64, i32 %29)
  store %struct.vibra_info* %30, %struct.vibra_info** %6, align 8
  %31 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %32 = icmp ne %struct.vibra_info* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %285

41:                                               ; preds = %26
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %45 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %44, i32 0, i32 5
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.device*, %struct.device** %48, align 8
  %50 = call i32 @dev_get_drvdata(%struct.device* %49)
  %51 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %52 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 8
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %55 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %54, i32 0, i32 0
  %56 = call i32 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %55)
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %59 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %58, i32 0, i32 1
  %60 = call i32 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %59)
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %63 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %62, i32 0, i32 2
  %64 = call i32 @of_property_read_u32(%struct.device_node* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %63)
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %67 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %66, i32 0, i32 3
  %68 = call i32 @of_property_read_u32(%struct.device_node* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %67)
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = call i32 @of_property_read_u32(%struct.device_node* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %7)
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = call i32 @of_property_read_u32(%struct.device_node* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  %73 = load %struct.device_node*, %struct.device_node** %5, align 8
  %74 = call i32 @of_node_put(%struct.device_node* %73)
  %75 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %76 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %41
  %80 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %81 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79, %41
  %85 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %86 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %84
  %90 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %91 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89, %79
  %95 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %96 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %95, i32 0, i32 5
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %285

101:                                              ; preds = %89, %84
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = call i64 @platform_get_irq(%struct.platform_device* %102, i32 0)
  %104 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %105 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %104, i32 0, i32 4
  store i64 %103, i64* %105, align 8
  %106 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %107 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %285

113:                                              ; preds = %101
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %117 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @twl6040_vib_irq_handler, align 4
  %120 = load i32, i32* @IRQF_ONESHOT, align 4
  %121 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %122 = call i32 @devm_request_threaded_irq(%struct.TYPE_14__* %115, i64 %118, i32* null, i32 %119, i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), %struct.vibra_info* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %113
  %126 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %127 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %126, i32 0, i32 5
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %285

132:                                              ; preds = %113
  %133 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %134 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %133, i32 0, i32 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %137, align 8
  %138 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %139 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %138, i32 0, i32 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i64 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %145 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %144, i32 0, i32 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %146)
  %148 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %149 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %148, i32 0, i32 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = call i32 @devm_regulator_bulk_get(%struct.device* %143, i32 %147, %struct.TYPE_15__* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %132
  %155 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %156 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %155, i32 0, i32 5
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %2, align 4
  br label %285

161:                                              ; preds = %132
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %166 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %165, i32 0, i32 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @regulator_set_voltage(i32 %170, i32 %171, i32 %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %164
  %177 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %178 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %177, i32 0, i32 5
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %2, align 4
  br label %285

183:                                              ; preds = %164
  br label %184

184:                                              ; preds = %183, %161
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %184
  %188 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %189 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %188, i32 0, i32 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @regulator_set_voltage(i32 %193, i32 %194, i32 %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %187
  %200 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %201 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %200, i32 0, i32 5
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %2, align 4
  br label %285

206:                                              ; preds = %187
  br label %207

207:                                              ; preds = %206, %184
  %208 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %209 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %208, i32 0, i32 7
  %210 = load i32, i32* @vibra_play_work, align 4
  %211 = call i32 @INIT_WORK(i32* %209, i32 %210)
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call %struct.TYPE_13__* @devm_input_allocate_device(%struct.TYPE_14__* %213)
  %215 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %216 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %215, i32 0, i32 6
  store %struct.TYPE_13__* %214, %struct.TYPE_13__** %216, align 8
  %217 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %218 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %217, i32 0, i32 6
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = icmp ne %struct.TYPE_13__* %219, null
  br i1 %220, label %228, label %221

221:                                              ; preds = %207
  %222 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %223 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %222, i32 0, i32 5
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %224, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %2, align 4
  br label %285

228:                                              ; preds = %207
  %229 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %230 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %229, i32 0, i32 6
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %233 = call i32 @input_set_drvdata(%struct.TYPE_13__* %231, %struct.vibra_info* %232)
  %234 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %235 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %234, i32 0, i32 6
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %237, align 8
  %238 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %239 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %238, i32 0, i32 6
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load i32, i32* @twl6040_vibra_close, align 4
  %244 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %245 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %244, i32 0, i32 6
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 2
  store i32 %243, i32* %247, align 4
  %248 = load i32, i32* @FF_RUMBLE, align 4
  %249 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %250 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %249, i32 0, i32 6
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @__set_bit(i32 %248, i32 %253)
  %255 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %256 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %255, i32 0, i32 6
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = load i32, i32* @vibra_play, align 4
  %259 = call i32 @input_ff_create_memless(%struct.TYPE_13__* %257, i32* null, i32 %258)
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %228
  %263 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %264 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %263, i32 0, i32 5
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %264, align 8
  %266 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %265, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %267 = load i32, i32* %9, align 4
  store i32 %267, i32* %2, align 4
  br label %285

268:                                              ; preds = %228
  %269 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %270 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %269, i32 0, i32 6
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = call i32 @input_register_device(%struct.TYPE_13__* %271)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %268
  %276 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %277 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %276, i32 0, i32 5
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %280 = load i32, i32* %9, align 4
  store i32 %280, i32* %2, align 4
  br label %285

281:                                              ; preds = %268
  %282 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %283 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %284 = call i32 @platform_set_drvdata(%struct.platform_device* %282, %struct.vibra_info* %283)
  store i32 0, i32* %2, align 4
  br label %285

285:                                              ; preds = %281, %275, %262, %221, %199, %176, %154, %125, %110, %94, %33, %20
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.vibra_info* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_14__*, i64, i32*, i32, i32, i8*, %struct.vibra_info*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @devm_input_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_13__*, %struct.vibra_info*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vibra_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
