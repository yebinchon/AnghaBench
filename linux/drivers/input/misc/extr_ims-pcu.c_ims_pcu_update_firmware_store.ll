; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_update_firmware_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_update_firmware_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.ims_pcu = type { i32, i64, i32 }
%struct.firmware = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IMS_PCU_FIRMWARE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to request firmware %s, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ims_pcu_update_firmware_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_update_firmware_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.ims_pcu*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.usb_interface* @to_usb_interface(%struct.device* %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %10, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %18 = call %struct.ims_pcu* @usb_get_intfdata(%struct.usb_interface* %17)
  store %struct.ims_pcu* %18, %struct.ims_pcu** %11, align 8
  store %struct.firmware* null, %struct.firmware** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoint(i8* %19, i32 0, i32* %13)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %82

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %82

31:                                               ; preds = %25
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %33 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock_interruptible(i32* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %5, align 4
  br label %82

39:                                               ; preds = %31
  %40 = load i32, i32* @IMS_PCU_FIRMWARE_NAME, align 4
  %41 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %42 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @request_ihex_firmware(%struct.firmware** %12, i32 %40, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %49 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IMS_PCU_FIRMWARE_NAME, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %69

54:                                               ; preds = %39
  %55 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %56 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %61 = load %struct.firmware*, %struct.firmware** %12, align 8
  %62 = call i32 @ims_pcu_handle_firmware_update(%struct.ims_pcu* %60, %struct.firmware* %61)
  store i32 %62, i32* %14, align 4
  br label %66

63:                                               ; preds = %54
  %64 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %65 = call i32 @ims_pcu_switch_to_bootloader(%struct.ims_pcu* %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.firmware*, %struct.firmware** %12, align 8
  %68 = call i32 @release_firmware(%struct.firmware* %67)
  br label %69

69:                                               ; preds = %66, %47
  %70 = load %struct.ims_pcu*, %struct.ims_pcu** %11, align 8
  %71 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = sext i32 %73 to i64
  br label %79

77:                                               ; preds = %69
  %78 = load i64, i64* %9, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %37, %28, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.ims_pcu* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @request_ihex_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ims_pcu_handle_firmware_update(%struct.ims_pcu*, %struct.firmware*) #1

declare dso_local i32 @ims_pcu_switch_to_bootloader(%struct.ims_pcu*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
