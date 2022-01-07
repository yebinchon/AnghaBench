; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adc-keys.c_adc_keys_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adc-keys.c_adc_keys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.adc_keys_state = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.input_polled_dev = type { i32, %struct.input_dev*, %struct.adc_keys_state*, i32 }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"buttons\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Incompatible channel type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"keyup-threshold-microvolt\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid or missing keyup voltage\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"poll-interval\00", align 1
@adc_keys_poll = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"adc-keys/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Unable to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adc_keys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_keys_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.adc_keys_state*, align 8
  %6 = alloca %struct.input_polled_dev*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.adc_keys_state* @devm_kzalloc(%struct.device* %14, i32 24, i32 %15)
  store %struct.adc_keys_state* %16, %struct.adc_keys_state** %5, align 8
  %17 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %18 = icmp ne %struct.adc_keys_state* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %185

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.TYPE_9__* @devm_iio_channel_get(%struct.device* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %26 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %25, i32 0, i32 3
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %28 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i64 @IS_ERR(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %34 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %33, i32 0, i32 3
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.TYPE_9__* %35)
  store i32 %36, i32* %2, align 4
  br label %185

37:                                               ; preds = %22
  %38 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %39 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %185

47:                                               ; preds = %37
  %48 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %49 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i32 @iio_get_channel_type(%struct.TYPE_9__* %50, i32* %8)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %2, align 4
  br label %185

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IIO_VOLTAGE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %185

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %69 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %68, i32 0, i32 0
  %70 = call i64 @device_property_read_u32(%struct.device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %185

77:                                               ; preds = %66
  %78 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %79 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 1000
  store i32 %81, i32* %79, align 8
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %84 = call i32 @adc_keys_load_keymap(%struct.device* %82, %struct.adc_keys_state* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %185

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device* %90)
  store %struct.input_polled_dev* %91, %struct.input_polled_dev** %6, align 8
  %92 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %93 = icmp ne %struct.input_polled_dev* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %185

99:                                               ; preds = %89
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i64 @device_property_read_u32(%struct.device* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %10)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %106 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* @adc_keys_poll, align 4
  %109 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %110 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %112 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %113 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %112, i32 0, i32 2
  store %struct.adc_keys_state* %111, %struct.adc_keys_state** %113, align 8
  %114 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %115 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %114, i32 0, i32 1
  %116 = load %struct.input_dev*, %struct.input_dev** %115, align 8
  store %struct.input_dev* %116, %struct.input_dev** %7, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %123 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %123, align 8
  %124 = load i32, i32* @BUS_HOST, align 4
  %125 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 4
  %128 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %132 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  %134 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i32 256, i32* %136, align 8
  %137 = load i32, i32* @EV_KEY, align 4
  %138 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @__set_bit(i32 %137, i32 %140)
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %161, %107
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %145 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %142
  %149 = load %struct.adc_keys_state*, %struct.adc_keys_state** %5, align 8
  %150 = getelementptr inbounds %struct.adc_keys_state, %struct.adc_keys_state* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %158 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @__set_bit(i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %142

164:                                              ; preds = %142
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i64 @device_property_read_bool(%struct.device* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i32, i32* @EV_REP, align 4
  %170 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %171 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @__set_bit(i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %164
  %175 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %176 = call i32 @input_register_polled_device(%struct.input_polled_dev* %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %2, align 4
  br label %185

184:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %179, %94, %87, %72, %60, %54, %44, %32, %19
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.adc_keys_state* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @devm_iio_channel_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_get_channel_type(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @adc_keys_load_keymap(%struct.device*, %struct.adc_keys_state*) #1

declare dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
