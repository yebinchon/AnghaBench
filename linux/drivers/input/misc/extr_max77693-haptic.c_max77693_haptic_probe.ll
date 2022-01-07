; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.max77693_dev = type { i32, i32 }
%struct.max77693_haptic = type { i32, i32, %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_17__ = type { i8*, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX77693_HAPTIC_LRA = common dso_local global i32 0, align 4
@MAX77693_HAPTIC_EXTERNAL_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsupported device type: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max77693_haptic_play_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get pwm device\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"haptic\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"max77693-haptic\00", align 1
@max77693_haptic_open = common dso_local global i32 0, align 4
@max77693_haptic_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@max77693_haptic_play_effect = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to create force-feedback\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77693_haptic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_haptic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77693_dev*, align 8
  %5 = alloca %struct.max77693_haptic*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.max77693_dev* @dev_get_drvdata(i32 %10)
  store %struct.max77693_dev* %11, %struct.max77693_dev** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max77693_haptic* @devm_kzalloc(%struct.TYPE_18__* %13, i32 56, i32 %14)
  store %struct.max77693_haptic* %15, %struct.max77693_haptic** %5, align 8
  %16 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %17 = icmp ne %struct.max77693_haptic* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %197

21:                                               ; preds = %1
  %22 = load %struct.max77693_dev*, %struct.max77693_dev** %4, align 8
  %23 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %26 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %30 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %29, i32 0, i32 9
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %30, align 8
  %31 = load i32, i32* @MAX77693_HAPTIC_LRA, align 4
  %32 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %33 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @MAX77693_HAPTIC_EXTERNAL_MODE, align 4
  %35 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %36 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %38 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call %struct.TYPE_16__* @platform_get_device_id(%struct.platform_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %44 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %46 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %60 [
    i32 129, label %48
    i32 128, label %54
  ]

48:                                               ; preds = %21
  %49 = load %struct.max77693_dev*, %struct.max77693_dev** %4, align 8
  %50 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %53 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  br label %69

54:                                               ; preds = %21
  %55 = load %struct.max77693_dev*, %struct.max77693_dev** %4, align 8
  %56 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %59 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  br label %69

60:                                               ; preds = %21
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %64 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %197

69:                                               ; preds = %54, %48
  %70 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %71 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %70, i32 0, i32 5
  %72 = load i32, i32* @max77693_haptic_play_work, align 4
  %73 = call i32 @INIT_WORK(i32* %71, i32 %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @devm_pwm_get(%struct.TYPE_18__* %75, i32* null)
  %77 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %78 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %80 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %69
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %89 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %197

92:                                               ; preds = %69
  %93 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %94 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pwm_apply_args(i32 %95)
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @devm_regulator_get(%struct.TYPE_18__* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %101 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %103 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @IS_ERR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %92
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %112 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PTR_ERR(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %197

115:                                              ; preds = %92
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call %struct.TYPE_17__* @devm_input_allocate_device(%struct.TYPE_18__* %117)
  %119 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %120 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %119, i32 0, i32 2
  store %struct.TYPE_17__* %118, %struct.TYPE_17__** %120, align 8
  %121 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %122 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %121, i32 0, i32 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = icmp ne %struct.TYPE_17__* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %115
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %197

131:                                              ; preds = %115
  %132 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %133 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %132, i32 0, i32 2
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %135, align 8
  %136 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %137 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %136, i32 0, i32 2
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %144 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %143, i32 0, i32 2
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  store %struct.TYPE_18__* %142, %struct.TYPE_18__** %147, align 8
  %148 = load i32, i32* @max77693_haptic_open, align 4
  %149 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %150 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %149, i32 0, i32 2
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* @max77693_haptic_close, align 4
  %154 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %155 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %154, i32 0, i32 2
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 8
  %158 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %159 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %158, i32 0, i32 2
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  %161 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %162 = call i32 @input_set_drvdata(%struct.TYPE_17__* %160, %struct.max77693_haptic* %161)
  %163 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %164 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %163, i32 0, i32 2
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = load i32, i32* @EV_FF, align 4
  %167 = load i32, i32* @FF_RUMBLE, align 4
  %168 = call i32 @input_set_capability(%struct.TYPE_17__* %165, i32 %166, i32 %167)
  %169 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %170 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %169, i32 0, i32 2
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = load i32, i32* @max77693_haptic_play_effect, align 4
  %173 = call i32 @input_ff_create_memless(%struct.TYPE_17__* %171, i32* null, i32 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %131
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %197

181:                                              ; preds = %131
  %182 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %183 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %182, i32 0, i32 2
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = call i32 @input_register_device(%struct.TYPE_17__* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %2, align 4
  br label %197

193:                                              ; preds = %181
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = load %struct.max77693_haptic*, %struct.max77693_haptic** %5, align 8
  %196 = call i32 @platform_set_drvdata(%struct.platform_device* %194, %struct.max77693_haptic* %195)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %193, %188, %176, %125, %107, %84, %60, %18
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.max77693_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.max77693_haptic* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_pwm_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pwm_apply_args(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.TYPE_17__* @devm_input_allocate_device(%struct.TYPE_18__*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_17__*, %struct.max77693_haptic*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_17__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77693_haptic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
