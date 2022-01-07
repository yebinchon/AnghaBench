; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_input_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_input_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i64, i64 }
%struct.hidpp_device = type { i32 }

@HIDPP_QUIRK_CLASS_G920 = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i64 0, align 8
@ABS_Z = common dso_local global i64 0, align 8
@ABS_RZ = common dso_local global i64 0, align 8
@HID_GD_MULTIAXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @hidpp_input_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_input_mapped(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.hidpp_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.hidpp_device* %16, %struct.hidpp_device** %14, align 8
  %17 = load %struct.hidpp_device*, %struct.hidpp_device** %14, align 8
  %18 = icmp ne %struct.hidpp_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %63

20:                                               ; preds = %6
  %21 = load %struct.hidpp_device*, %struct.hidpp_device** %14, align 8
  %22 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HIDPP_QUIRK_CLASS_G920, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %20
  %28 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %29 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EV_ABS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %35 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ABS_X, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %41 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ABS_Y, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ABS_Z, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %53 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ABS_RZ, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %45, %39, %33
  %58 = load i32, i32* @HID_GD_MULTIAXIS, align 4
  %59 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %60 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %51, %27
  br label %62

62:                                               ; preds = %61, %20
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %19
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
