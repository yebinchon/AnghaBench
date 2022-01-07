; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_kbd_register_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_kbd_register_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.asus_drvdata = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, %struct.hid_device*, i64 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@SUPPORT_KBD_BACKLIGHT = common dso_local global i8 0, align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"asus::kbd_backlight\00", align 1
@asus_kbd_backlight_set = common dso_local global i32 0, align 4
@asus_kbd_backlight_get = common dso_local global i32 0, align 4
@asus_kbd_backlight_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @asus_kbd_register_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_kbd_register_leds(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.asus_drvdata*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = call %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.asus_drvdata* %8, %struct.asus_drvdata** %4, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %10 = call i32 @asus_kbd_init(%struct.hid_device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %17 = call i32 @asus_kbd_get_functions(%struct.hid_device* %16, i8* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %15
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @SUPPORT_KBD_BACKLIGHT, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %106

32:                                               ; preds = %22
  %33 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %34 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.TYPE_5__* @devm_kzalloc(i32* %34, i32 4, i32 %35)
  %37 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %38 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %37, i32 0, i32 0
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %40 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %106

46:                                               ; preds = %32
  %47 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %48 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %52 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %56 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %57 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store %struct.hid_device* %55, %struct.hid_device** %59, align 8
  %60 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %61 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %66 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 3, i32* %69, align 8
  %70 = load i32, i32* @asus_kbd_backlight_set, align 4
  %71 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %72 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %70, i32* %75, align 8
  %76 = load i32, i32* @asus_kbd_backlight_get, align 4
  %77 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %78 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 %76, i32* %81, align 4
  %82 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %83 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* @asus_kbd_backlight_work, align 4
  %87 = call i32 @INIT_WORK(i32* %85, i32 %86)
  %88 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %89 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %88, i32 0, i32 0
  %90 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %91 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @devm_led_classdev_register(i32* %89, %struct.TYPE_4__* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %46
  %98 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %99 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %98, i32 0, i32 0
  %100 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %101 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = call i32 @devm_kfree(i32* %99, %struct.TYPE_5__* %102)
  br label %104

104:                                              ; preds = %97, %46
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %43, %29, %20, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.asus_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @asus_kbd_init(%struct.hid_device*) #1

declare dso_local i32 @asus_kbd_get_functions(%struct.hid_device*, i8*) #1

declare dso_local %struct.TYPE_5__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
