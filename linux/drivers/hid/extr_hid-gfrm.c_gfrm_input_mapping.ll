; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gfrm.c_gfrm_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gfrm.c_gfrm_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@GFRM100 = common dso_local global i64 0, align 8
@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_INFO = common dso_local global i32 0, align 4
@KEY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @gfrm_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfrm_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
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
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* @GFRM100, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %6
  %21 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %22 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HID_UP_CONSUMER, align 4
  %25 = or i32 %24, 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %29 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %30 = load i64**, i64*** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* @EV_KEY, align 4
  %33 = load i32, i32* @KEY_INFO, align 4
  %34 = call i32 @hid_map_usage_clear(%struct.hid_input* %28, %struct.hid_usage* %29, i64** %30, i32* %31, i32 %32, i32 %33)
  store i32 1, i32* %7, align 4
  br label %52

35:                                               ; preds = %20
  %36 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %37 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HID_UP_CONSUMER, align 4
  %40 = or i32 %39, 65
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %44 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %45 = load i64**, i64*** %12, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* @EV_KEY, align 4
  %48 = load i32, i32* @KEY_OK, align 4
  %49 = call i32 @hid_map_usage_clear(%struct.hid_input* %43, %struct.hid_usage* %44, i64** %45, i32* %46, i32 %47, i32 %48)
  store i32 1, i32* %7, align 4
  br label %52

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %6
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %42, %27
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
