; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_set_operational_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_set_operational_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32 }

@SIXAXIS_REPORT_0xF2_SIZE = common dso_local global i32 0, align 4
@SIXAXIS_REPORT_0xF5_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can't set operational mode: step 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"can't set operational mode: step 2\0A\00", align 1
@SHANWAN_GAMEPAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"can't set operational mode: step 3, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @sixaxis_set_operational_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sixaxis_set_operational_usb(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.sony_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.sony_sc* %9, %struct.sony_sc** %4, align 8
  %10 = load i32, i32* @SIXAXIS_REPORT_0xF2_SIZE, align 4
  %11 = load i32, i32* @SIXAXIS_REPORT_0xF5_SIZE, align 4
  %12 = call i32 @max(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 %13, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @SIXAXIS_REPORT_0xF2_SIZE, align 4
  %25 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %26 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %27 = call i32 @hid_hw_raw_request(%struct.hid_device* %22, i32 242, i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %32 = call i32 @hid_err(%struct.hid_device* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %63

33:                                               ; preds = %21
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @SIXAXIS_REPORT_0xF5_SIZE, align 4
  %37 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %38 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %39 = call i32 @hid_hw_raw_request(%struct.hid_device* %34, i32 245, i32* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %44 = call i32 @hid_err(%struct.hid_device* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %63

45:                                               ; preds = %33
  %46 = load %struct.sony_sc*, %struct.sony_sc** %4, align 8
  %47 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SHANWAN_GAMEPAD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %63

53:                                               ; preds = %45
  %54 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @hid_hw_output_report(%struct.hid_device* %54, i32* %55, i32 1)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %61 = call i32 @hid_info(%struct.hid_device* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %52, %42, %30
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_output_report(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
