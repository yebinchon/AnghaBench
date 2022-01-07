; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_led_brightness_set_tpkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_led_brightness_set_tpkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.hid_report** }
%struct.hid_report = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32* }
%struct.lenovo_drvdata_tpkbd = type { i32, %struct.led_classdev }

@LED_OFF = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @lenovo_led_brightness_set_tpkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lenovo_led_brightness_set_tpkbd(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.lenovo_drvdata_tpkbd*, align 8
  %8 = alloca %struct.hid_report*, align 8
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.hid_device* @to_hid_device(%struct.device* %15)
  store %struct.hid_device* %16, %struct.hid_device** %6, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = call %struct.lenovo_drvdata_tpkbd* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.lenovo_drvdata_tpkbd* %18, %struct.lenovo_drvdata_tpkbd** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %20 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %7, align 8
  %21 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %20, i32 0, i32 1
  %22 = icmp eq %struct.led_classdev* %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @LED_OFF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %7, align 8
  %33 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %43

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %7, align 8
  %40 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %28
  %44 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i64, i64* @HID_OUTPUT_REPORT, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.hid_report**, %struct.hid_report*** %49, align 8
  %51 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %50, i64 3
  %52 = load %struct.hid_report*, %struct.hid_report** %51, align 8
  store %struct.hid_report* %52, %struct.hid_report** %8, align 8
  %53 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %7, align 8
  %54 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 0
  %57 = and i32 %56, 1
  %58 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %59 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %57, i32* %65, align 4
  %66 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %7, align 8
  %67 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 1
  %70 = and i32 %69, 1
  %71 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %72 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %70, i32* %78, align 4
  %79 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %80 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %81 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %82 = call i32 @hid_hw_request(%struct.hid_device* %79, %struct.hid_report* %80, i32 %81)
  ret void
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.lenovo_drvdata_tpkbd* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.hid_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
