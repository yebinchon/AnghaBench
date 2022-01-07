; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-tivo.c_tivo_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-tivo.c_tivo_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_MEDIA = common dso_local global i32 0, align 4
@KEY_TV = common dso_local global i32 0, align 4
@KEY_KPMINUS = common dso_local global i32 0, align 4
@KEY_KPPLUS = common dso_local global i32 0, align 4
@KEY_ENTER = common dso_local global i32 0, align 4
@KEY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @tivo_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tivo_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_USAGE_PAGE, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %53 [
    i32 128, label %19
    i32 129, label %39
  ]

19:                                               ; preds = %6
  %20 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %21 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HID_USAGE, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %37 [
    i32 61, label %25
    i32 62, label %28
    i32 65, label %31
    i32 66, label %34
  ]

25:                                               ; preds = %19
  %26 = load i32, i32* @KEY_MEDIA, align 4
  %27 = call i32 @tivo_map_key_clear(i32 %26)
  br label %38

28:                                               ; preds = %19
  %29 = load i32, i32* @KEY_TV, align 4
  %30 = call i32 @tivo_map_key_clear(i32 %29)
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* @KEY_KPMINUS, align 4
  %33 = call i32 @tivo_map_key_clear(i32 %32)
  br label %38

34:                                               ; preds = %19
  %35 = load i32, i32* @KEY_KPPLUS, align 4
  %36 = call i32 @tivo_map_key_clear(i32 %35)
  br label %38

37:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %55

38:                                               ; preds = %34, %31, %28, %25
  br label %54

39:                                               ; preds = %6
  %40 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %41 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HID_USAGE, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %51 [
    i32 131, label %45
    i32 521, label %48
  ]

45:                                               ; preds = %39
  %46 = load i32, i32* @KEY_ENTER, align 4
  %47 = call i32 @tivo_map_key_clear(i32 %46)
  br label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @KEY_INFO, align 4
  %50 = call i32 @tivo_map_key_clear(i32 %49)
  br label %52

51:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %55

52:                                               ; preds = %48, %45
  br label %54

53:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %55

54:                                               ; preds = %52, %38
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53, %51, %37
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @tivo_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
