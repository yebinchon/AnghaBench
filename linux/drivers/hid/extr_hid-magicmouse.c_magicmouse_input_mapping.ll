; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.magicmouse_sc = type { %struct.TYPE_3__* }

@USB_DEVICE_ID_APPLE_MAGICTRACKPAD = common dso_local global i64 0, align 8
@USB_DEVICE_ID_APPLE_MAGICTRACKPAD2 = common dso_local global i64 0, align 8
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @magicmouse_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magicmouse_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.magicmouse_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call %struct.magicmouse_sc* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.magicmouse_sc* %16, %struct.magicmouse_sc** %14, align 8
  %17 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %14, align 8
  %18 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  %22 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %23 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.magicmouse_sc*, %struct.magicmouse_sc** %14, align 8
  %26 = getelementptr inbounds %struct.magicmouse_sc, %struct.magicmouse_sc* %25, i32 0, i32 0
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  br label %27

27:                                               ; preds = %21, %6
  %28 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %29 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %38 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36, %27
  %46 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %47 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 -1, i32* %7, align 4
  br label %54

53:                                               ; preds = %45, %36
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.magicmouse_sc* @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
