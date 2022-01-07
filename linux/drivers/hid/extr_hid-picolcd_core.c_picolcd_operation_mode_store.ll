; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_operation_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_operation_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.picolcd_data = type { i32, i32, i32, i32 }
%struct.hid_report = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@PICOLCD_BOOTLOADER = common dso_local global i32 0, align 4
@REPORT_EXIT_FLASHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bootloader\00", align 1
@REPORT_EXIT_KEYBOARD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @picolcd_operation_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @picolcd_operation_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.picolcd_data*, align 8
  %11 = alloca %struct.hid_report*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.picolcd_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.picolcd_data* %15, %struct.picolcd_data** %10, align 8
  store %struct.hid_report* null, %struct.hid_report** %11, align 8
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %17 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @sysfs_streq(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %24 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PICOLCD_BOOTLOADER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @REPORT_EXIT_FLASHER, align 4
  %31 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %32 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.hid_report* @picolcd_out_report(i32 %30, i32 %33)
  store %struct.hid_report* %34, %struct.hid_report** %11, align 8
  br label %35

35:                                               ; preds = %29, %22
  br label %58

36:                                               ; preds = %4
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @sysfs_streq(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %42 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PICOLCD_BOOTLOADER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @REPORT_EXIT_KEYBOARD, align 4
  %49 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %50 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.hid_report* @picolcd_out_report(i32 %48, i32 %51)
  store %struct.hid_report* %52, %struct.hid_report** %11, align 8
  br label %53

53:                                               ; preds = %47, %40
  br label %57

54:                                               ; preds = %36
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %102

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %60 = icmp ne %struct.hid_report* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %63 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %58
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %5, align 8
  br label %102

69:                                               ; preds = %61
  %70 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %71 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %70, i32 0, i32 2
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %75 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 255
  %81 = call i32 @hid_set_field(i32 %78, i32 0, i32 %80)
  %82 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %83 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 255
  %90 = call i32 @hid_set_field(i32 %86, i32 1, i32 %89)
  %91 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %92 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %95 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %96 = call i32 @hid_hw_request(i32 %93, %struct.hid_report* %94, i32 %95)
  %97 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %98 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %97, i32 0, i32 2
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load i64, i64* %9, align 8
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %69, %66, %54
  %103 = load i64, i64* %5, align 8
  ret i64 %103
}

declare dso_local %struct.picolcd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local %struct.hid_report* @picolcd_out_report(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_set_field(i32, i32, i32) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
