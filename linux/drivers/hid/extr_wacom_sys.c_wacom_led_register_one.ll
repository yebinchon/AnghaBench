; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_register_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_register_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wacom = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wacom_led = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.wacom*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s::wacom-%d.%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to register LED trigger %s: %d\0A\00", align 1
@LED_FULL = common dso_local global i32 0, align 4
@LED_HW_PLUGGABLE = common dso_local global i32 0, align 4
@__wacom_led_brightness_get = common dso_local global i32 0, align 4
@wacom_led_brightness_set = common dso_local global i32 0, align 4
@wacom_led_readonly_brightness_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register LED %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.wacom*, %struct.wacom_led*, i32, i32, i32)* @wacom_led_register_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_led_register_one(%struct.device* %0, %struct.wacom* %1, %struct.wacom_led* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.wacom*, align 8
  %10 = alloca %struct.wacom_led*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.wacom* %1, %struct.wacom** %9, align 8
  store %struct.wacom_led* %2, %struct.wacom_led** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = call i32 @dev_name(%struct.device* %18)
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i8* @devm_kasprintf(%struct.device* %16, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  store i8* %22, i8** %15, align 8
  %23 = load i8*, i8** %15, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %133

28:                                               ; preds = %6
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %15, align 8
  %33 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %34 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %38 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %37, i32 0, i32 6
  %39 = call i32 @devm_led_trigger_register(%struct.device* %36, %struct.TYPE_5__* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.wacom*, %struct.wacom** %9, align 8
  %44 = getelementptr inbounds %struct.wacom, %struct.wacom* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %47 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @hid_err(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %7, align 4
  br label %133

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %57 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %60 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.wacom*, %struct.wacom** %9, align 8
  %62 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %63 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %62, i32 0, i32 5
  store %struct.wacom* %61, %struct.wacom** %63, align 8
  %64 = load %struct.wacom*, %struct.wacom** %9, align 8
  %65 = getelementptr inbounds %struct.wacom, %struct.wacom* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %69 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.wacom*, %struct.wacom** %9, align 8
  %71 = getelementptr inbounds %struct.wacom, %struct.wacom* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %75 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %78 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* @LED_FULL, align 4
  %81 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %82 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @LED_HW_PLUGGABLE, align 4
  %85 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %86 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @__wacom_led_brightness_get, align 4
  %89 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %90 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %54
  %95 = load i32, i32* @wacom_led_brightness_set, align 4
  %96 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %97 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %100 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %104 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  br label %111

106:                                              ; preds = %54
  %107 = load i32, i32* @wacom_led_readonly_brightness_set, align 4
  %108 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %109 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %94
  %112 = load %struct.device*, %struct.device** %8, align 8
  %113 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %114 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %113, i32 0, i32 2
  %115 = call i32 @devm_led_classdev_register(%struct.device* %112, %struct.TYPE_6__* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %111
  %119 = load %struct.wacom*, %struct.wacom** %9, align 8
  %120 = getelementptr inbounds %struct.wacom, %struct.wacom* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %123 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @hid_err(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %125, i32 %126)
  %128 = load %struct.wacom_led*, %struct.wacom_led** %10, align 8
  %129 = getelementptr inbounds %struct.wacom_led, %struct.wacom_led* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i8* null, i8** %130, align 8
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %7, align 4
  br label %133

132:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %118, %42, %25
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_led_trigger_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @hid_err(i32, i8*, i8*, i32) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
