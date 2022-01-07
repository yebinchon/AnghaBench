; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-da9052.c_da9052_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-da9052.c_da9052_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.da9052_pdata = type { %struct.led_platform_data* }
%struct.led_platform_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.da9052 = type { i32 }
%struct.da9052_led = type { i32, %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"No platform data for LED\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9052_led_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@DA9052_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to register led %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to init led %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to configure GPIO LED%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9052_pdata*, align 8
  %5 = alloca %struct.da9052*, align 8
  %6 = alloca %struct.led_platform_data*, align 8
  %7 = alloca %struct.da9052_led*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.da9052_led* null, %struct.da9052_led** %7, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @dev_get_drvdata(i32 %15)
  %17 = bitcast i8* %16 to %struct.da9052*
  store %struct.da9052* %17, %struct.da9052** %5, align 8
  %18 = load %struct.da9052*, %struct.da9052** %5, align 8
  %19 = getelementptr inbounds %struct.da9052, %struct.da9052* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.da9052_pdata* @dev_get_platdata(i32 %20)
  store %struct.da9052_pdata* %21, %struct.da9052_pdata** %4, align 8
  %22 = load %struct.da9052_pdata*, %struct.da9052_pdata** %4, align 8
  %23 = icmp eq %struct.da9052_pdata* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %201

28:                                               ; preds = %1
  %29 = load %struct.da9052_pdata*, %struct.da9052_pdata** %4, align 8
  %30 = getelementptr inbounds %struct.da9052_pdata, %struct.da9052_pdata* %29, i32 0, i32 0
  %31 = load %struct.led_platform_data*, %struct.led_platform_data** %30, align 8
  store %struct.led_platform_data* %31, %struct.led_platform_data** %6, align 8
  %32 = load %struct.led_platform_data*, %struct.led_platform_data** %6, align 8
  %33 = icmp eq %struct.led_platform_data* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %201

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.led_platform_data*, %struct.led_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.led_platform_data, %struct.led_platform_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.da9052_led* @devm_kcalloc(%struct.TYPE_8__* %40, i32 %43, i32 32, i32 %44)
  store %struct.da9052_led* %45, %struct.da9052_led** %7, align 8
  %46 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %47 = icmp ne %struct.da9052_led* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %201

51:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %165, %51
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.led_platform_data*, %struct.led_platform_data** %6, align 8
  %55 = getelementptr inbounds %struct.led_platform_data, %struct.led_platform_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %168

58:                                               ; preds = %52
  %59 = load %struct.led_platform_data*, %struct.led_platform_data** %6, align 8
  %60 = getelementptr inbounds %struct.led_platform_data, %struct.led_platform_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %67, i64 %69
  %71 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i32 %66, i32* %72, align 4
  %73 = load i32, i32* @da9052_led_set, align 4
  %74 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %74, i64 %76
  %78 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32 %73, i32* %79, align 4
  %80 = load i32, i32* @LED_OFF, align 4
  %81 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %81, i64 %83
  %85 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* @DA9052_MAX_BRIGHTNESS, align 4
  %88 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %88, i64 %90
  %92 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %87, i32* %93, align 4
  %94 = load %struct.led_platform_data*, %struct.led_platform_data** %6, align 8
  %95 = getelementptr inbounds %struct.led_platform_data, %struct.led_platform_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %102, i64 %104
  %106 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @dev_get_drvdata(i32 %110)
  %112 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %112, i64 %114
  %116 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %115, i32 0, i32 2
  store i8* %111, i8** %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %121, i64 %123
  %125 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %124, i32 0, i32 1
  %126 = call i32 @led_classdev_register(i32 %120, %struct.TYPE_7__* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %58
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %132, i64 %134
  %136 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %184

139:                                              ; preds = %58
  %140 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %140, i64 %142
  %144 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %144, i64 %146
  %148 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @da9052_set_led_brightness(%struct.da9052_led* %143, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %139
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %157, i64 %159
  %161 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  br label %165

164:                                              ; preds = %139
  br label %165

165:                                              ; preds = %164, %154
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %52

168:                                              ; preds = %52
  %169 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %170 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @da9052_configure_leds(i8* %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load i32, i32* %8, align 4
  %179 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  br label %184

180:                                              ; preds = %168
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %183 = call i32 @platform_set_drvdata(%struct.platform_device* %181, %struct.da9052_led* %182)
  store i32 0, i32* %2, align 4
  br label %203

184:                                              ; preds = %175, %129
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %197, %184
  %188 = load i32, i32* %9, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load %struct.da9052_led*, %struct.da9052_led** %7, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %191, i64 %193
  %195 = getelementptr inbounds %struct.da9052_led, %struct.da9052_led* %194, i32 0, i32 1
  %196 = call i32 @led_classdev_unregister(%struct.TYPE_7__* %195)
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %9, align 4
  br label %187

200:                                              ; preds = %187
  br label %201

201:                                              ; preds = %200, %48, %34, %24
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %201, %180
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i8* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9052_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.da9052_led* @devm_kcalloc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @da9052_set_led_brightness(%struct.da9052_led*, i32) #1

declare dso_local i32 @da9052_configure_leds(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9052_led*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
