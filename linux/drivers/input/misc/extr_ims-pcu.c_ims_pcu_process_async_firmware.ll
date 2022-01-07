; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_process_async_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_process_async_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.ims_pcu = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to get firmware %s\0A\00", align 1
@IMS_PCU_FIRMWARE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Firmware %s is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @ims_pcu_process_async_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_process_async_firmware(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ims_pcu*, align 8
  %6 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ims_pcu*
  store %struct.ims_pcu* %8, %struct.ims_pcu** %5, align 8
  %9 = load %struct.firmware*, %struct.firmware** %3, align 8
  %10 = icmp ne %struct.firmware* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %13 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IMS_PCU_FIRMWARE_NAME, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.firmware*, %struct.firmware** %3, align 8
  %19 = call i32 @ihex_validate_fw(%struct.firmware* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %24 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IMS_PCU_FIRMWARE_NAME, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %40

28:                                               ; preds = %17
  %29 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %30 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %33 = load %struct.firmware*, %struct.firmware** %3, align 8
  %34 = call i32 @ims_pcu_handle_firmware_update(%struct.ims_pcu* %32, %struct.firmware* %33)
  %35 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %36 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.firmware*, %struct.firmware** %3, align 8
  %39 = call i32 @release_firmware(%struct.firmware* %38)
  br label %40

40:                                               ; preds = %28, %22, %11
  %41 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %42 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %41, i32 0, i32 0
  %43 = call i32 @complete(i32* %42)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ihex_validate_fw(%struct.firmware*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ims_pcu_handle_firmware_update(%struct.ims_pcu*, %struct.firmware*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
