; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_msm-vibrator.c_msm_vibrator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.msm_vibrator = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get regulator: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to get enable gpio: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to lookup pwm clock: %ld\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to get platform resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to iomap resource.\0A\00", align 1
@msm_vibrator_worker = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"msm-vibrator\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@msm_vibrator_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@msm_vibrator_play_effect = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to create ff memless: %d\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to register input device: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msm_vibrator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_vibrator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msm_vibrator*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.msm_vibrator* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.msm_vibrator* %10, %struct.msm_vibrator** %4, align 8
  %11 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %12 = icmp ne %struct.msm_vibrator* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %225

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.TYPE_8__* @devm_input_allocate_device(i32* %18)
  %20 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %21 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %20, i32 0, i32 1
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %21, align 8
  %22 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %23 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %225

29:                                               ; preds = %16
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @devm_regulator_get(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %34 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %36 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %29
  %41 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %42 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  %45 = load i32, i32* @EPROBE_DEFER, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %52 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %40
  %57 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %58 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %225

61:                                               ; preds = %29
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %65 = call i32 @devm_gpiod_get(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %67 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %69 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %61
  %74 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %75 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PTR_ERR(i32 %76)
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %85 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %81, %73
  %90 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %91 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %225

94:                                               ; preds = %61
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @devm_clk_get(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %99 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %101 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %94
  %106 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %107 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PTR_ERR(i32 %108)
  %110 = load i32, i32* @EPROBE_DEFER, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %117 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PTR_ERR(i32 %118)
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %113, %105
  %122 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %123 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @PTR_ERR(i32 %124)
  store i32 %125, i32* %2, align 4
  br label %225

126:                                              ; preds = %94
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load i32, i32* @IORESOURCE_MEM, align 4
  %129 = call %struct.resource* @platform_get_resource(%struct.platform_device* %127, i32 %128, i32 0)
  store %struct.resource* %129, %struct.resource** %5, align 8
  %130 = load %struct.resource*, %struct.resource** %5, align 8
  %131 = icmp ne %struct.resource* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %225

138:                                              ; preds = %126
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load %struct.resource*, %struct.resource** %5, align 8
  %142 = getelementptr inbounds %struct.resource, %struct.resource* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.resource*, %struct.resource** %5, align 8
  %145 = call i32 @resource_size(%struct.resource* %144)
  %146 = call i32 @devm_ioremap(i32* %140, i32 %143, i32 %145)
  %147 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %148 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %150 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %138
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %225

159:                                              ; preds = %138
  %160 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %161 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %163 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %162, i32 0, i32 3
  %164 = call i32 @mutex_init(i32* %163)
  %165 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %166 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %165, i32 0, i32 2
  %167 = load i32, i32* @msm_vibrator_worker, align 4
  %168 = call i32 @INIT_WORK(i32* %166, i32 %167)
  %169 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %170 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %172, align 8
  %173 = load i32, i32* @BUS_HOST, align 4
  %174 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %175 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %174, i32 0, i32 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 %173, i32* %178, align 4
  %179 = load i32, i32* @msm_vibrator_close, align 4
  %180 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %181 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %180, i32 0, i32 1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 8
  %184 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %185 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %188 = call i32 @input_set_drvdata(%struct.TYPE_8__* %186, %struct.msm_vibrator* %187)
  %189 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %190 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %189, i32 0, i32 1
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i32, i32* @EV_FF, align 4
  %193 = load i32, i32* @FF_RUMBLE, align 4
  %194 = call i32 @input_set_capability(%struct.TYPE_8__* %191, i32 %192, i32 %193)
  %195 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %196 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %195, i32 0, i32 1
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load i32, i32* @msm_vibrator_play_effect, align 4
  %199 = call i32 @input_ff_create_memless(%struct.TYPE_8__* %197, i32* null, i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %159
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = load i32, i32* %6, align 4
  %206 = call i32 (i32*, i8*, ...) @dev_err(i32* %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %2, align 4
  br label %225

208:                                              ; preds = %159
  %209 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %210 = getelementptr inbounds %struct.msm_vibrator, %struct.msm_vibrator* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = call i32 @input_register_device(%struct.TYPE_8__* %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = load i32, i32* %6, align 4
  %219 = call i32 (i32*, i8*, ...) @dev_err(i32* %217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %2, align 4
  br label %225

221:                                              ; preds = %208
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = load %struct.msm_vibrator*, %struct.msm_vibrator** %4, align 8
  %224 = call i32 @platform_set_drvdata(%struct.platform_device* %222, %struct.msm_vibrator* %223)
  store i32 0, i32* %2, align 4
  br label %225

225:                                              ; preds = %221, %215, %202, %153, %132, %121, %89, %56, %26, %13
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.msm_vibrator* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_8__*, %struct.msm_vibrator*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.msm_vibrator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
