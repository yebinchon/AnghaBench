; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pm8058.c_pm8058_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pm8058.c_pm8058_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pm8058_led = type { i64, %struct.TYPE_8__, i32, %struct.regmap* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)*, i32, i32, i32, i32, i32 (%struct.TYPE_8__*, i32)*, i8* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Parent regmap unavailable.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"no register offset specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@PM8058_LED_TYPE_COMMON = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"default-state\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@PM8058_LED_TYPE_KEYPAD = common dso_local global i64 0, align 8
@PM8058_LED_TYPE_FLASH = common dso_local global i64 0, align 8
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"unable to register led \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8058_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8058_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm8058_led*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.pm8058_led* @devm_kzalloc(%struct.TYPE_9__* %15, i32 64, i32 %16)
  store %struct.pm8058_led* %17, %struct.pm8058_led** %4, align 8
  %18 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %19 = icmp ne %struct.pm8058_led* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %172

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i64 @of_device_get_match_data(%struct.TYPE_9__* %25)
  %27 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %28 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.regmap* @dev_get_regmap(i32 %32, i32* null)
  store %struct.regmap* %33, %struct.regmap** %7, align 8
  %34 = load %struct.regmap*, %struct.regmap** %7, align 8
  %35 = icmp ne %struct.regmap* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %23
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %172

42:                                               ; preds = %23
  %43 = load %struct.regmap*, %struct.regmap** %7, align 8
  %44 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %45 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %44, i32 0, i32 3
  store %struct.regmap* %43, %struct.regmap** %45, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %48 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %47, i32 0, i32 2
  %49 = call i32 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %172

58:                                               ; preds = %42
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = call i8* @of_get_property(%struct.device_node* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %69

63:                                               ; preds = %58
  %64 = load %struct.device_node*, %struct.device_node** %5, align 8
  %65 = getelementptr inbounds %struct.device_node, %struct.device_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  br label %69

69:                                               ; preds = %63, %62
  %70 = phi i8* [ %60, %62 ], [ %68, %63 ]
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %73 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 8
  %75 = load %struct.device_node*, %struct.device_node** %5, align 8
  %76 = call i8* @of_get_property(%struct.device_node* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %77 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %78 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  store i8* %76, i8** %79, align 8
  %80 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %81 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  store i32 (%struct.TYPE_8__*, i32)* @pm8058_led_set, i32 (%struct.TYPE_8__*, i32)** %82, align 8
  %83 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %84 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 (%struct.TYPE_8__*)* @pm8058_led_get, i32 (%struct.TYPE_8__*)** %85, align 8
  %86 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %87 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PM8058_LED_TYPE_COMMON, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %69
  store i32 31, i32* %9, align 4
  br label %93

92:                                               ; preds = %69
  store i32 15, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %96 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  %98 = load %struct.device_node*, %struct.device_node** %5, align 8
  %99 = call i8* @of_get_property(%struct.device_node* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %137

102:                                              ; preds = %93
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %108 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %107, i32 0, i32 1
  %109 = call i32 @pm8058_led_get(%struct.TYPE_8__* %108)
  %110 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %111 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 4
  br label %136

113:                                              ; preds = %102
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %120 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 4
  %122 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %123 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %122, i32 0, i32 1
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @pm8058_led_set(%struct.TYPE_8__* %123, i32 %124)
  br label %135

126:                                              ; preds = %113
  %127 = load i32, i32* @LED_OFF, align 4
  %128 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %129 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 4
  %131 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %132 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %131, i32 0, i32 1
  %133 = load i32, i32* @LED_OFF, align 4
  %134 = call i32 @pm8058_led_set(%struct.TYPE_8__* %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %117
  br label %136

136:                                              ; preds = %135, %106
  br label %137

137:                                              ; preds = %136, %93
  %138 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %139 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PM8058_LED_TYPE_KEYPAD, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %145 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PM8058_LED_TYPE_FLASH, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143, %137
  %150 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %151 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %152 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %143
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %158 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %157, i32 0, i32 1
  %159 = call i32 @devm_led_classdev_register(%struct.TYPE_9__* %156, %struct.TYPE_8__* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = load %struct.pm8058_led*, %struct.pm8058_led** %4, align 8
  %166 = getelementptr inbounds %struct.pm8058_led, %struct.pm8058_led* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %2, align 4
  br label %172

171:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %162, %52, %36, %20
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.pm8058_led* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_9__*) #1

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pm8058_led_set(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pm8058_led_get(%struct.TYPE_8__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
