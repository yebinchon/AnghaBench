; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cpcap.c_cpcap_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cpcap.c_cpcap_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.cpcap_led = type { %struct.TYPE_10__*, %struct.TYPE_11__, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@cpcap_led_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Unsupported LED\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't get regulator: %d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Couldn't read LED label: %d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"regmap failed: %d\00", align 1
@cpcap_led_set = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Couldn't register LED: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.cpcap_led*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @cpcap_led_of_match, align 4
  %8 = call i32 @of_match_ptr(i32 %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.of_device_id* @of_match_device(i32 %8, %struct.TYPE_10__* %10)
  store %struct.of_device_id* %11, %struct.of_device_id** %4, align 8
  %12 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %13 = icmp ne %struct.of_device_id* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %179

22:                                               ; preds = %14
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.cpcap_led* @devm_kzalloc(%struct.TYPE_10__* %24, i32 48, i32 %25)
  store %struct.cpcap_led* %26, %struct.cpcap_led** %5, align 8
  %27 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %28 = icmp ne %struct.cpcap_led* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %179

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.cpcap_led* %34)
  %36 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %37 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %40 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %39, i32 0, i32 2
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %44 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %43, i32 0, i32 0
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %44, align 8
  %45 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %46 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %32
  %52 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %53 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %179

58:                                               ; preds = %32
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_get_regmap(i32 %62, i32* null)
  %64 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %65 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %67 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %179

73:                                               ; preds = %58
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @devm_regulator_get(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %78 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %80 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %86 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %90 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %179

95:                                               ; preds = %73
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %99 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = call i32 @device_property_read_string(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %106 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %179

111:                                              ; preds = %95
  %112 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %113 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %148

118:                                              ; preds = %111
  %119 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %120 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %123 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %128 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %127, i32 0, i32 2
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %133 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %132, i32 0, i32 2
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @regmap_update_bits(i32 %121, i32 %126, i64 %131, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %118
  %141 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %142 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %179

147:                                              ; preds = %118
  br label %148

148:                                              ; preds = %147, %111
  %149 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %150 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %149, i32 0, i32 3
  %151 = call i32 @mutex_init(i32* %150)
  %152 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %153 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %152, i32 0, i32 2
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %158 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* @cpcap_led_set, align 4
  %161 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %162 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %167 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %166, i32 0, i32 1
  %168 = call i32 @devm_led_classdev_register(%struct.TYPE_10__* %165, %struct.TYPE_11__* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %148
  %172 = load %struct.cpcap_led*, %struct.cpcap_led** %5, align 8
  %173 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %179

178:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %171, %140, %104, %84, %70, %51, %29, %19
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.cpcap_led* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cpcap_led*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_property_read_string(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
