; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-belkin.c_belkin_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-belkin.c_belkin_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@BELKIN_WKBD = common dso_local global i64 0, align 8
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_SOUND = common dso_local global i32 0, align 4
@KEY_CAMERA = common dso_local global i32 0, align 4
@KEY_DOCUMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @belkin_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @belkin_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call i64 @hid_get_drvdata(%struct.hid_device* %15)
  store i64 %16, i64* %14, align 8
  %17 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HID_USAGE_PAGE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @HID_UP_CONSUMER, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %6
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @BELKIN_WKBD, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %6
  store i32 0, i32* %7, align 4
  br label %47

30:                                               ; preds = %24
  %31 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %32 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HID_USAGE, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %45 [
    i32 58, label %36
    i32 59, label %39
    i32 60, label %42
  ]

36:                                               ; preds = %30
  %37 = load i32, i32* @KEY_SOUND, align 4
  %38 = call i32 @belkin_map_key_clear(i32 %37)
  br label %46

39:                                               ; preds = %30
  %40 = load i32, i32* @KEY_CAMERA, align 4
  %41 = call i32 @belkin_map_key_clear(i32 %40)
  br label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @KEY_DOCUMENTS, align 4
  %44 = call i32 @belkin_map_key_clear(i32 %43)
  br label %46

45:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %47

46:                                               ; preds = %42, %39, %36
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %45, %29
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @belkin_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
