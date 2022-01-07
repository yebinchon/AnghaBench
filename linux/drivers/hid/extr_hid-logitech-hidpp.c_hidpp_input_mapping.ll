; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i64 }
%struct.hid_usage = type { i32 }
%struct.hidpp_device = type { i32 }

@HIDPP_QUIRK_CLASS_WTP = common dso_local global i32 0, align 4
@HIDPP_QUIRK_CLASS_M560 = common dso_local global i32 0, align 4
@HID_GD_MOUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @hidpp_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
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
  br label %58

20:                                               ; preds = %6
  %21 = load %struct.hidpp_device*, %struct.hidpp_device** %14, align 8
  %22 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HIDPP_QUIRK_CLASS_WTP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %29 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %30 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %31 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %32 = load i64**, i64*** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @wtp_input_mapping(%struct.hid_device* %28, %struct.hid_input* %29, %struct.hid_field* %30, %struct.hid_usage* %31, i64** %32, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %58

35:                                               ; preds = %20
  %36 = load %struct.hidpp_device*, %struct.hidpp_device** %14, align 8
  %37 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HIDPP_QUIRK_CLASS_M560, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %44 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HID_GD_MOUSE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %50 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %51 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %52 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %53 = load i64**, i64*** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @m560_input_mapping(%struct.hid_device* %49, %struct.hid_input* %50, %struct.hid_field* %51, %struct.hid_usage* %52, i64** %53, i32* %54)
  store i32 %55, i32* %7, align 4
  br label %58

56:                                               ; preds = %42, %35
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %48, %27, %19
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wtp_input_mapping(%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i32 @m560_input_mapping(%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
