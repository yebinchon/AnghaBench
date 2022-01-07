; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i64 }
%struct.wiimote_data = type { %struct.led_classdev**, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.led_classdev = type { i8*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s:blue:p%lu\00", align 1
@wiimod_led_get = common dso_local global i32 0, align 4
@wiimod_led_set = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_LED1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* @wiimod_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_led_probe(%struct.wiimod_ops* %0, %struct.wiimote_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiimod_ops*, align 8
  %5 = alloca %struct.wiimote_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.wiimod_ops* %0, %struct.wiimod_ops** %4, align 8
  store %struct.wiimote_data* %1, %struct.wiimote_data** %5, align 8
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i8* @dev_name(%struct.device* %16)
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 9
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 32, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.led_classdev* @kzalloc(i32 %23, i32 %24)
  store %struct.led_classdev* %25, %struct.led_classdev** %8, align 8
  %26 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %27 = icmp ne %struct.led_classdev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %101

31:                                               ; preds = %2
  %32 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %33 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %32, i64 1
  %34 = bitcast %struct.led_classdev* %33 to i8*
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i8* @dev_name(%struct.device* %37)
  %39 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %40 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %38, i64 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %45 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %47 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %49 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @wiimod_led_get, align 4
  %51 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %52 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @wiimod_led_set, align 4
  %54 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %55 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %57 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %58 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %57, i32 0, i32 0
  %59 = load %struct.led_classdev**, %struct.led_classdev*** %58, align 8
  %60 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %61 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %59, i64 %62
  store %struct.led_classdev* %56, %struct.led_classdev** %63, align 8
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %66 = call i32 @led_classdev_register(%struct.device* %64, %struct.led_classdev* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %31
  br label %90

70:                                               ; preds = %31
  %71 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %72 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %77 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %82 = load i32, i32* @WIIPROTO_FLAG_LED1, align 4
  %83 = call i32 @wiiproto_req_leds(%struct.wiimote_data* %81, i32 %82)
  %84 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %85 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %75, %70
  store i32 0, i32* %3, align 4
  br label %101

90:                                               ; preds = %69
  %91 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %92 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %91, i32 0, i32 0
  %93 = load %struct.led_classdev**, %struct.led_classdev*** %92, align 8
  %94 = load %struct.wiimod_ops*, %struct.wiimod_ops** %4, align 8
  %95 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %93, i64 %96
  store %struct.led_classdev* null, %struct.led_classdev** %97, align 8
  %98 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %99 = call i32 @kfree(%struct.led_classdev* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %90, %89, %28
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.led_classdev* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i64) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.led_classdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wiiproto_req_leds(%struct.wiimote_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
