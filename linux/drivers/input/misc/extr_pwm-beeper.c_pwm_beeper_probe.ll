; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-beeper.c_pwm_beeper_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-beeper.c_pwm_beeper_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pwm_beeper = type { i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.pwm_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to request PWM device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to apply initial PWM state: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"amp\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to get 'amp' regulator: %d\0A\00", align 1
@pwm_beeper_work = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"beeper-hz\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"failed to parse 'beeper-hz' property, using default: %uHz\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"pwm-beeper\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"pwm/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_SND = common dso_local global i32 0, align 4
@SND_TONE = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@pwm_beeper_event = common dso_local global i32 0, align 4
@pwm_beeper_close = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_beeper_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_beeper_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_beeper*, align 8
  %6 = alloca %struct.pwm_state, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pwm_beeper* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.pwm_beeper* %13, %struct.pwm_beeper** %5, align 8
  %14 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %15 = icmp ne %struct.pwm_beeper* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %188

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @devm_pwm_get(%struct.device* %20, i32* null)
  %22 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %23 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %25 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %19
  %30 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %31 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %188

44:                                               ; preds = %19
  %45 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %46 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pwm_init_state(i32 %47, %struct.pwm_state* %6)
  %49 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %51 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pwm_apply_state(i32 %52, %struct.pwm_state* %6)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %188

61:                                               ; preds = %44
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @devm_regulator_get(%struct.device* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %65 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %67 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %73 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %188

86:                                               ; preds = %61
  %87 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %88 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %87, i32 0, i32 2
  %89 = load i32, i32* @pwm_beeper_work, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @device_property_read_u32(%struct.device* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  store i32 1000, i32* %7, align 4
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %86
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %102 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call %struct.TYPE_7__* @devm_input_allocate_device(%struct.device* %103)
  %105 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %106 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %105, i32 0, i32 1
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %106, align 8
  %107 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %108 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = icmp ne %struct.TYPE_7__* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %99
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %188

116:                                              ; preds = %99
  %117 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %118 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %120, align 8
  %121 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %122 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %124, align 8
  %125 = load i32, i32* @BUS_HOST, align 4
  %126 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %127 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i32 %125, i32* %130, align 4
  %131 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %132 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 31, i32* %135, align 8
  %136 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %137 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %136, i32 0, i32 1
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  %141 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %142 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i32 256, i32* %145, align 8
  %146 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %147 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i32, i32* @EV_SND, align 4
  %150 = load i32, i32* @SND_TONE, align 4
  %151 = call i32 @input_set_capability(%struct.TYPE_7__* %148, i32 %149, i32 %150)
  %152 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %153 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %152, i32 0, i32 1
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* @EV_SND, align 4
  %156 = load i32, i32* @SND_BELL, align 4
  %157 = call i32 @input_set_capability(%struct.TYPE_7__* %154, i32 %155, i32 %156)
  %158 = load i32, i32* @pwm_beeper_event, align 4
  %159 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %160 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* @pwm_beeper_close, align 4
  %164 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %165 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %164, i32 0, i32 1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  store i32 %163, i32* %167, align 8
  %168 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %169 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %172 = call i32 @input_set_drvdata(%struct.TYPE_7__* %170, %struct.pwm_beeper* %171)
  %173 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %174 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = call i32 @input_register_device(%struct.TYPE_7__* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %116
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %2, align 4
  br label %188

184:                                              ; preds = %116
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = load %struct.pwm_beeper*, %struct.pwm_beeper** %5, align 8
  %187 = call i32 @platform_set_drvdata(%struct.platform_device* %185, %struct.pwm_beeper* %186)
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %184, %179, %111, %84, %56, %42, %16
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.pwm_beeper* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_pwm_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pwm_init_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @pwm_apply_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_7__*, %struct.pwm_beeper*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_beeper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
