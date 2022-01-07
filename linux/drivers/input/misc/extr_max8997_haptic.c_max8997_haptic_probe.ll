; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max8997_dev = type { i32, i32 }
%struct.max8997_platform_data = type { %struct.max8997_haptic_platform_data* }
%struct.max8997_haptic_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.max8997_haptic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.input_dev*, %struct.TYPE_7__*, i32, i32, i32 }
%struct.input_dev = type { i8*, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"no haptic platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@max8997_haptic_play_effect_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"max8997-haptic\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"unable to request PWM for haptic, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid chip mode specified (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"inmotor\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"unable to get regulator, error: %d\0A\00", align 1
@max8997_haptic_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@max8997_haptic_play_effect = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"unable to create FF device, error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"unable to register input device, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8997_haptic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_haptic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  %5 = alloca %struct.max8997_platform_data*, align 8
  %6 = alloca %struct.max8997_haptic_platform_data*, align 8
  %7 = alloca %struct.max8997_haptic*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.max8997_dev* @dev_get_drvdata(i32 %13)
  store %struct.max8997_dev* %14, %struct.max8997_dev** %4, align 8
  %15 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %16 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.max8997_platform_data* @dev_get_platdata(i32 %17)
  store %struct.max8997_platform_data* %18, %struct.max8997_platform_data** %5, align 8
  store %struct.max8997_haptic_platform_data* null, %struct.max8997_haptic_platform_data** %6, align 8
  %19 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %20 = icmp ne %struct.max8997_platform_data* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %22, i32 0, i32 0
  %24 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %23, align 8
  store %struct.max8997_haptic_platform_data* %24, %struct.max8997_haptic_platform_data** %6, align 8
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %27 = icmp ne %struct.max8997_haptic_platform_data* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %233

34:                                               ; preds = %25
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.max8997_haptic* @kzalloc(i32 72, i32 %35)
  store %struct.max8997_haptic* %36, %struct.max8997_haptic** %7, align 8
  %37 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %37, %struct.input_dev** %8, align 8
  %38 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %39 = icmp ne %struct.max8997_haptic* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %42 = icmp ne %struct.input_dev* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %227

49:                                               ; preds = %40
  %50 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %51 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %50, i32 0, i32 13
  %52 = load i32, i32* @max8997_haptic_play_effect_work, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %55 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %54, i32 0, i32 12
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %58 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %61 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %65 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %64, i32 0, i32 10
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %67 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %68 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %67, i32 0, i32 9
  store %struct.input_dev* %66, %struct.input_dev** %68, align 8
  %69 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %70 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %73 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %75 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %78 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %80 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %83 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %85 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %88 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %90 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %134 [
    i32 128, label %92
    i32 129, label %108
  ]

92:                                               ; preds = %49
  %93 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %94 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %97 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %99 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %102 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %104 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %107 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %143

108:                                              ; preds = %49
  %109 = load %struct.max8997_haptic_platform_data*, %struct.max8997_haptic_platform_data** %6, align 8
  %110 = getelementptr inbounds %struct.max8997_haptic_platform_data, %struct.max8997_haptic_platform_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pwm_request(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %114 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %116 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @IS_ERR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %108
  %121 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %122 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @PTR_ERR(i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* %9, align 4
  %128 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %227

129:                                              ; preds = %108
  %130 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %131 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pwm_apply_args(i32 %132)
  br label %143

134:                                              ; preds = %49
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %138 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %9, align 4
  br label %227

143:                                              ; preds = %129, %92
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @regulator_get(%struct.TYPE_7__* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %148 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %150 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %143
  %155 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %156 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @PTR_ERR(i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i32, i32* %9, align 4
  %162 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %160, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  br label %216

163:                                              ; preds = %143
  %164 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %165 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %164, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %165, align 8
  %166 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %167 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %172 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %173, align 8
  %174 = load i32, i32* @max8997_haptic_close, align 4
  %175 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %178 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %179 = call i32 @input_set_drvdata(%struct.input_dev* %177, %struct.max8997_haptic* %178)
  %180 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %181 = load i32, i32* @EV_FF, align 4
  %182 = load i32, i32* @FF_RUMBLE, align 4
  %183 = call i32 @input_set_capability(%struct.input_dev* %180, i32 %181, i32 %182)
  %184 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %185 = load i32, i32* @max8997_haptic_play_effect, align 4
  %186 = call i32 @input_ff_create_memless(%struct.input_dev* %184, i32* null, i32 %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %163
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = load i32, i32* %9, align 4
  %193 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %191, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %192)
  br label %211

194:                                              ; preds = %163
  %195 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %196 = call i32 @input_register_device(%struct.input_dev* %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load i32, i32* %9, align 4
  %203 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %201, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %202)
  br label %208

204:                                              ; preds = %194
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %207 = call i32 @platform_set_drvdata(%struct.platform_device* %205, %struct.max8997_haptic* %206)
  store i32 0, i32* %2, align 4
  br label %233

208:                                              ; preds = %199
  %209 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %210 = call i32 @input_ff_destroy(%struct.input_dev* %209)
  br label %211

211:                                              ; preds = %208, %189
  %212 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %213 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @regulator_put(i32 %214)
  br label %216

216:                                              ; preds = %211, %154
  %217 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %218 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 129
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %223 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @pwm_free(i32 %224)
  br label %226

226:                                              ; preds = %221, %216
  br label %227

227:                                              ; preds = %226, %134, %120, %43
  %228 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %229 = call i32 @input_free_device(%struct.input_dev* %228)
  %230 = load %struct.max8997_haptic*, %struct.max8997_haptic** %7, align 8
  %231 = call i32 @kfree(%struct.max8997_haptic* %230)
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %227, %204, %28
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.max8997_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8997_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.max8997_haptic* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pwm_request(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pwm_apply_args(i32) #1

declare dso_local i32 @regulator_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.max8997_haptic*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.input_dev*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8997_haptic*) #1

declare dso_local i32 @input_ff_destroy(%struct.input_dev*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @pwm_free(i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.max8997_haptic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
