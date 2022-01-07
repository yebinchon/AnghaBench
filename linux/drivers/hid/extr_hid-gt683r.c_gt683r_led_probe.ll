; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.gt683r_led = type { %struct.TYPE_3__*, %struct.hid_device*, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gt683r_led_work = common dso_local global i32 0, align 4
@GT683R_LED_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hid parsing failed\0A\00", align 1
@HID_CONNECT_HIDRAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@GT683R_LED_COUNT = common dso_local global i32 0, align 4
@gt683r_panel_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@gt683r_brightness_set = common dso_local global i32 0, align 4
@gt683r_led_groups = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"could not register led device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @gt683r_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt683r_led_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gt683r_led*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(i32* %12, i32 32, i32 %13)
  %15 = bitcast i8* %14 to %struct.gt683r_led*
  store %struct.gt683r_led* %15, %struct.gt683r_led** %10, align 8
  %16 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %17 = icmp ne %struct.gt683r_led* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %167

21:                                               ; preds = %2
  %22 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %23 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %22, i32 0, i32 4
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %26 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %25, i32 0, i32 3
  %27 = load i32, i32* @gt683r_led_work, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load i32, i32* @GT683R_LED_NORMAL, align 4
  %30 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %31 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %34 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %33, i32 0, i32 1
  store %struct.hid_device* %32, %struct.hid_device** %34, align 8
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %37 = call i32 @hid_set_drvdata(%struct.hid_device* %35, %struct.gt683r_led* %36)
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = call i32 @hid_parse(%struct.hid_device* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %21
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = call i32 @hid_err(%struct.hid_device* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %167

46:                                               ; preds = %21
  %47 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %48 = load i32, i32* @HID_CONNECT_HIDRAW, align 4
  %49 = call i32 @hid_hw_start(%struct.hid_device* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %54 = call i32 @hid_err(%struct.hid_device* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %167

56:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %142, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @GT683R_LED_COUNT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %145

61:                                               ; preds = %57
  %62 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %63 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %62, i32 0, i32 0
  %64 = call i8* @dev_name(i32* %63)
  %65 = call i32 @strlen(i8* %64)
  %66 = load i8**, i8*** @gt683r_panel_names, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %65, %71
  %73 = add nsw i32 %72, 3
  store i32 %73, i32* %8, align 4
  %74 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %75 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @devm_kzalloc(i32* %75, i32 %76, i32 %77)
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %61
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %146

84:                                               ; preds = %61
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %88 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %87, i32 0, i32 0
  %89 = call i8* @dev_name(i32* %88)
  %90 = load i8**, i8*** @gt683r_panel_names, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @snprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %89, i8* %94)
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %98 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %96, i8** %103, align 8
  %104 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %105 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 8
  %111 = load i32, i32* @gt683r_brightness_set, align 4
  %112 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %113 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  store i32 %111, i32* %118, align 8
  %119 = load i32, i32* @gt683r_led_groups, align 4
  %120 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %121 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32 %119, i32* %126, align 4
  %127 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %128 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %127, i32 0, i32 0
  %129 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %130 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = call i32 @led_classdev_register(i32* %128, %struct.TYPE_3__* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %84
  %139 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %140 = call i32 @hid_err(%struct.hid_device* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %146

141:                                              ; preds = %84
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %57

145:                                              ; preds = %57
  store i32 0, i32* %3, align 4
  br label %167

146:                                              ; preds = %138, %81
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %160, %146
  %150 = load i32, i32* %6, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load %struct.gt683r_led*, %struct.gt683r_led** %10, align 8
  %154 = getelementptr inbounds %struct.gt683r_led, %struct.gt683r_led* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %158)
  br label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %6, align 4
  br label %149

163:                                              ; preds = %149
  %164 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %165 = call i32 @hid_hw_stop(%struct.hid_device* %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %163, %145, %52, %42, %18
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.gt683r_led*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
