; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-monterey.c_mr_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-monterey.c_mr_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_WORDPROCESSOR = common dso_local global i32 0, align 4
@KEY_SPREADSHEET = common dso_local global i32 0, align 4
@KEY_PRESENTATION = common dso_local global i32 0, align 4
@KEY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @mr_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mr_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
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
  %19 = load i32, i32* @HID_UP_CONSUMER, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %42

22:                                               ; preds = %6
  %23 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HID_USAGE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %40 [
    i32 342, label %28
    i32 343, label %31
    i32 344, label %34
    i32 348, label %37
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @KEY_WORDPROCESSOR, align 4
  %30 = call i32 @mr_map_key_clear(i32 %29)
  br label %41

31:                                               ; preds = %22
  %32 = load i32, i32* @KEY_SPREADSHEET, align 4
  %33 = call i32 @mr_map_key_clear(i32 %32)
  br label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @KEY_PRESENTATION, align 4
  %36 = call i32 @mr_map_key_clear(i32 %35)
  br label %41

37:                                               ; preds = %22
  %38 = load i32, i32* @KEY_STOP, align 4
  %39 = call i32 @mr_map_key_clear(i32 %38)
  br label %41

40:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %42

41:                                               ; preds = %37, %34, %31, %28
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %40, %21
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @mr_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
