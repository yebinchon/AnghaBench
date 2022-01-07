; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_resistive-adc-touch.c_grts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_resistive-adc-touch.c_grts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.grts_state = type { i32, %struct.iio_channel*, %struct.input_dev*, i32, i32, %struct.iio_channel* }
%struct.input_dev = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iio_channel = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"can't get iio channels.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"touchscreen-min-pressure\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"can't get touchscreen-min-pressure property.\0A\00", align 1
@GRTS_DEFAULT_PRESSURE_MIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to allocate input device.\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@grts_open = common dso_local global i32 0, align 4
@grts_close = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@GRTS_MAX_POS_MASK = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to register input device.\00", align 1
@grts_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to allocate callback buffer.\0A\00", align 1
@grts_disable = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to add disable action.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @grts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.grts_state*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iio_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.grts_state* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.grts_state* %13, %struct.grts_state** %4, align 8
  %14 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %15 = icmp ne %struct.grts_state* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %194

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.iio_channel* @devm_iio_channel_get_all(%struct.device* %20)
  %22 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %23 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %22, i32 0, i32 5
  store %struct.iio_channel* %21, %struct.iio_channel** %23, align 8
  %24 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %25 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %24, i32 0, i32 5
  %26 = load %struct.iio_channel*, %struct.iio_channel** %25, align 8
  %27 = call i64 @IS_ERR(%struct.iio_channel* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %19
  %30 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %31 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %30, i32 0, i32 5
  %32 = load %struct.iio_channel*, %struct.iio_channel** %31, align 8
  %33 = call i32 @PTR_ERR(%struct.iio_channel* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %194

43:                                               ; preds = %19
  %44 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %45 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %44, i32 0, i32 5
  %46 = load %struct.iio_channel*, %struct.iio_channel** %45, align 8
  %47 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %46, i64 0
  store %struct.iio_channel* %47, %struct.iio_channel** %7, align 8
  %48 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %49 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %71, %43
  %51 = load %struct.iio_channel*, %struct.iio_channel** %7, align 8
  %52 = icmp ne %struct.iio_channel* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.iio_channel*, %struct.iio_channel** %7, align 8
  %55 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %60, label %74

60:                                               ; preds = %58
  %61 = load %struct.iio_channel*, %struct.iio_channel** %7, align 8
  %62 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcmp(i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %70 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %60
  %72 = load %struct.iio_channel*, %struct.iio_channel** %7, align 8
  %73 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %72, i32 1
  store %struct.iio_channel* %73, %struct.iio_channel** %7, align 8
  br label %50

74:                                               ; preds = %58
  %75 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %76 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %82 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %81, i32 0, i32 4
  %83 = call i32 @device_property_read_u32(%struct.device* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @GRTS_DEFAULT_PRESSURE_MIN, align 4
  %90 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %91 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %79
  br label %93

93:                                               ; preds = %92, %74
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %94)
  store %struct.input_dev* %95, %struct.input_dev** %5, align 8
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = icmp ne %struct.input_dev* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %194

103:                                              ; preds = %93
  %104 = load i32, i32* @DRIVER_NAME, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @BUS_HOST, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @grts_open, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @grts_close, align 4
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = load i32, i32* @ABS_X, align 4
  %119 = load i32, i32* @GRTS_MAX_POS_MASK, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @input_set_abs_params(%struct.input_dev* %117, i32 %118, i32 0, i32 %120, i32 0, i32 0)
  %122 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %123 = load i32, i32* @ABS_Y, align 4
  %124 = load i32, i32* @GRTS_MAX_POS_MASK, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call i32 @input_set_abs_params(%struct.input_dev* %122, i32 %123, i32 0, i32 %125, i32 0, i32 0)
  %127 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %128 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %103
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = load i32, i32* @ABS_PRESSURE, align 4
  %134 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %135 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @input_set_abs_params(%struct.input_dev* %132, i32 %133, i32 %136, i32 65535, i32 0, i32 0)
  br label %138

138:                                              ; preds = %131, %103
  %139 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %140 = load i32, i32* @EV_KEY, align 4
  %141 = load i32, i32* @BTN_TOUCH, align 4
  %142 = call i32 @input_set_capability(%struct.input_dev* %139, i32 %140, i32 %141)
  %143 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %144 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %145 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %144, i32 0, i32 3
  %146 = call i32 @touchscreen_parse_properties(%struct.input_dev* %143, i32 0, i32* %145)
  %147 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %148 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %149 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %148, i32 0, i32 2
  store %struct.input_dev* %147, %struct.input_dev** %149, align 8
  %150 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %151 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %152 = call i32 @input_set_drvdata(%struct.input_dev* %150, %struct.grts_state* %151)
  %153 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %154 = call i32 @input_register_device(%struct.input_dev* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %138
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %194

161:                                              ; preds = %138
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = load i32, i32* @grts_cb, align 4
  %164 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %165 = call %struct.iio_channel* @iio_channel_get_all_cb(%struct.device* %162, i32 %163, %struct.grts_state* %164)
  %166 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %167 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %166, i32 0, i32 1
  store %struct.iio_channel* %165, %struct.iio_channel** %167, align 8
  %168 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %169 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %168, i32 0, i32 1
  %170 = load %struct.iio_channel*, %struct.iio_channel** %169, align 8
  %171 = call i64 @IS_ERR(%struct.iio_channel* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %161
  %174 = load %struct.device*, %struct.device** %6, align 8
  %175 = call i32 @dev_err(%struct.device* %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %176 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %177 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %176, i32 0, i32 1
  %178 = load %struct.iio_channel*, %struct.iio_channel** %177, align 8
  %179 = call i32 @PTR_ERR(%struct.iio_channel* %178)
  store i32 %179, i32* %2, align 4
  br label %194

180:                                              ; preds = %161
  %181 = load %struct.device*, %struct.device** %6, align 8
  %182 = load i32, i32* @grts_disable, align 4
  %183 = load %struct.grts_state*, %struct.grts_state** %4, align 8
  %184 = getelementptr inbounds %struct.grts_state, %struct.grts_state* %183, i32 0, i32 1
  %185 = load %struct.iio_channel*, %struct.iio_channel** %184, align 8
  %186 = call i32 @devm_add_action_or_reset(%struct.device* %181, i32 %182, %struct.iio_channel* %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %180
  %190 = load %struct.device*, %struct.device** %6, align 8
  %191 = call i32 @dev_err(%struct.device* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %2, align 4
  br label %194

193:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %189, %173, %157, %98, %41, %16
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.grts_state* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.iio_channel* @devm_iio_channel_get_all(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iio_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.iio_channel*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.grts_state*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local %struct.iio_channel* @iio_channel_get_all_cb(%struct.device*, i32, %struct.grts_state*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.iio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
