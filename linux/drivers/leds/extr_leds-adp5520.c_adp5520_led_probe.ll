; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-adp5520.c_adp5520_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.adp5520_leds_platform_data = type { i32, %struct.led_info* }
%struct.led_info = type { i32, i32, i32 }
%struct.adp5520_led = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ADP5520_01_MAXLEDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't handle more than %d LEDS\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"failed to write\0A\00", align 1
@adp5520_led_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@ADP5520_FLAG_LED_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to register LED %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adp5520_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adp5520_leds_platform_data*, align 8
  %5 = alloca %struct.adp5520_led*, align 8
  %6 = alloca %struct.adp5520_led*, align 8
  %7 = alloca %struct.led_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.adp5520_leds_platform_data* @dev_get_platdata(%struct.TYPE_7__* %11)
  store %struct.adp5520_leds_platform_data* %12, %struct.adp5520_leds_platform_data** %4, align 8
  %13 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %4, align 8
  %14 = icmp eq %struct.adp5520_leds_platform_data* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %182

21:                                               ; preds = %1
  %22 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ADP5520_01_MAXLEDS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @ADP5520_01_MAXLEDS, align 4
  %31 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %182

34:                                               ; preds = %21
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.adp5520_led* @devm_kcalloc(%struct.TYPE_7__* %36, i32 %39, i32 28, i32 %40)
  store %struct.adp5520_led* %41, %struct.adp5520_led** %5, align 8
  %42 = load %struct.adp5520_led*, %struct.adp5520_led** %5, align 8
  %43 = icmp ne %struct.adp5520_led* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %182

47:                                               ; preds = %34
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i32 @adp5520_led_prepare(%struct.platform_device* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %182

57:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %153, %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %4, align 8
  %61 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %58
  %65 = load %struct.adp5520_leds_platform_data*, %struct.adp5520_leds_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.adp5520_leds_platform_data, %struct.adp5520_leds_platform_data* %65, i32 0, i32 1
  %67 = load %struct.led_info*, %struct.led_info** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.led_info, %struct.led_info* %67, i64 %69
  store %struct.led_info* %70, %struct.led_info** %7, align 8
  %71 = load %struct.adp5520_led*, %struct.adp5520_led** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %71, i64 %73
  store %struct.adp5520_led* %74, %struct.adp5520_led** %6, align 8
  %75 = load %struct.led_info*, %struct.led_info** %7, align 8
  %76 = getelementptr inbounds %struct.led_info, %struct.led_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %79 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.led_info*, %struct.led_info** %7, align 8
  %82 = getelementptr inbounds %struct.led_info, %struct.led_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %85 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @adp5520_led_set, align 4
  %88 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %89 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @LED_OFF, align 4
  %92 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %93 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.led_info*, %struct.led_info** %7, align 8
  %96 = getelementptr inbounds %struct.led_info, %struct.led_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ADP5520_FLAG_LED_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %64
  %102 = load %struct.led_info*, %struct.led_info** %7, align 8
  %103 = getelementptr inbounds %struct.led_info, %struct.led_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %106 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %112

107:                                              ; preds = %64
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %111 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %101
  %113 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %114 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ADP5520_FLAG_LED_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %119 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %125 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %127 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %130 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %129, i32 0, i32 2
  %131 = call i32 @led_classdev_register(i32 %128, %struct.TYPE_6__* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %112
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %138 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  br label %160

141:                                              ; preds = %112
  %142 = load %struct.adp5520_led*, %struct.adp5520_led** %6, align 8
  %143 = call i32 @adp5520_led_setup(%struct.adp5520_led* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %160

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %58

156:                                              ; preds = %58
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load %struct.adp5520_led*, %struct.adp5520_led** %5, align 8
  %159 = call i32 @platform_set_drvdata(%struct.platform_device* %157, %struct.adp5520_led* %158)
  store i32 0, i32* %2, align 4
  br label %182

160:                                              ; preds = %146, %134
  %161 = load i32, i32* %9, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %160
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %176, %163
  %167 = load i32, i32* %9, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load %struct.adp5520_led*, %struct.adp5520_led** %5, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %170, i64 %172
  %174 = getelementptr inbounds %struct.adp5520_led, %struct.adp5520_led* %173, i32 0, i32 2
  %175 = call i32 @led_classdev_unregister(%struct.TYPE_6__* %174)
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %9, align 4
  br label %166

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %160
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %180, %156, %52, %44, %27, %15
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.adp5520_leds_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.adp5520_led* @devm_kcalloc(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @adp5520_led_prepare(%struct.platform_device*) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @adp5520_led_setup(%struct.adp5520_led*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adp5520_led*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
