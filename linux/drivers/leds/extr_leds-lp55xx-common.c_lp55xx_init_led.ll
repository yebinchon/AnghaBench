; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_init_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_init_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_led = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.lp55xx_chip = type { %struct.TYPE_5__*, %struct.lp55xx_device_config*, %struct.lp55xx_platform_data* }
%struct.TYPE_5__ = type { i8*, %struct.device }
%struct.device = type { i32 }
%struct.lp55xx_device_config = type { i32 }
%struct.lp55xx_platform_data = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid channel: %d / %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Use channel numbers between 0 and %d\0A\00", align 1
@lp55xx_set_brightness = common dso_local global i32 0, align 4
@lp55xx_led_groups = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s:channel%d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"led register err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_led*, %struct.lp55xx_chip*, i32)* @lp55xx_init_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp55xx_init_led(%struct.lp55xx_led* %0, %struct.lp55xx_chip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lp55xx_led*, align 8
  %6 = alloca %struct.lp55xx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lp55xx_platform_data*, align 8
  %9 = alloca %struct.lp55xx_device_config*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lp55xx_led* %0, %struct.lp55xx_led** %5, align 8
  store %struct.lp55xx_chip* %1, %struct.lp55xx_chip** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %6, align 8
  %15 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %14, i32 0, i32 2
  %16 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %15, align 8
  store %struct.lp55xx_platform_data* %16, %struct.lp55xx_platform_data** %8, align 8
  %17 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %6, align 8
  %18 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %17, i32 0, i32 1
  %19 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %18, align 8
  store %struct.lp55xx_device_config* %19, %struct.lp55xx_device_config** %9, align 8
  %20 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %6, align 8
  %21 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store %struct.device* %23, %struct.device** %10, align 8
  %24 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %9, align 8
  %25 = getelementptr inbounds %struct.lp55xx_device_config, %struct.lp55xx_device_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %167

37:                                               ; preds = %3
  %38 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %39 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %167

48:                                               ; preds = %37
  %49 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %50 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %58 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %60 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %68 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %70 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %78 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %80 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %88 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %91 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %48
  %96 = load %struct.device*, %struct.device** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %167

102:                                              ; preds = %48
  %103 = load i32, i32* @lp55xx_set_brightness, align 4
  %104 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %105 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @lp55xx_led_groups, align 4
  %108 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %109 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  %111 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %112 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %102
  %121 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %122 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %130 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  br label %154

132:                                              ; preds = %102
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %134 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %8, align 8
  %135 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = inttoptr i64 %136 to i8*
  br label %146

140:                                              ; preds = %132
  %141 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %6, align 8
  %142 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  br label %146

146:                                              ; preds = %140, %138
  %147 = phi i8* [ %139, %138 ], [ %145, %140 ]
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @snprintf(i8* %133, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %147, i32 %148)
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %151 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %152 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i8* %150, i8** %153, align 8
  br label %154

154:                                              ; preds = %146, %120
  %155 = load %struct.device*, %struct.device** %10, align 8
  %156 = load %struct.lp55xx_led*, %struct.lp55xx_led** %5, align 8
  %157 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %156, i32 0, i32 2
  %158 = call i32 @led_classdev_register(%struct.device* %155, %struct.TYPE_6__* %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.device*, %struct.device** %10, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %167

166:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %161, %95, %47, %30
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
