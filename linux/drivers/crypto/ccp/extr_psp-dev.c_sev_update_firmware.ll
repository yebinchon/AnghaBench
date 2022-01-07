; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_update_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_update_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sev_data_download_firmware = type { i32, i32 }
%struct.firmware = type { i32, i32 }
%struct.page = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No SEV firmware file present\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SEV_CMD_DOWNLOAD_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to update SEV firmware: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"SEV firmware update successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sev_update_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_update_firmware(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sev_data_download_firmware*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @sev_get_firmware(%struct.device* %11, %struct.firmware** %5)
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = call i32 @ALIGN(i32 8, i32 32)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @get_order(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.page* @alloc_pages(i32 %27, i32 %28)
  store %struct.page* %29, %struct.page** %9, align 8
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %77

33:                                               ; preds = %19
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = call %struct.sev_data_download_firmware* @page_address(%struct.page* %34)
  store %struct.sev_data_download_firmware* %35, %struct.sev_data_download_firmware** %4, align 8
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = call %struct.sev_data_download_firmware* @page_address(%struct.page* %36)
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sev_data_download_firmware, %struct.sev_data_download_firmware* %37, i64 %39
  %41 = load %struct.firmware*, %struct.firmware** %5, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.firmware*, %struct.firmware** %5, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(%struct.sev_data_download_firmware* %40, i32 %43, i32 %46)
  %48 = load %struct.page*, %struct.page** %9, align 8
  %49 = call %struct.sev_data_download_firmware* @page_address(%struct.page* %48)
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sev_data_download_firmware, %struct.sev_data_download_firmware* %49, i64 %51
  %53 = call i32 @__psp_pa(%struct.sev_data_download_firmware* %52)
  %54 = load %struct.sev_data_download_firmware*, %struct.sev_data_download_firmware** %4, align 8
  %55 = getelementptr inbounds %struct.sev_data_download_firmware, %struct.sev_data_download_firmware* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.firmware*, %struct.firmware** %5, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sev_data_download_firmware*, %struct.sev_data_download_firmware** %4, align 8
  %60 = getelementptr inbounds %struct.sev_data_download_firmware, %struct.sev_data_download_firmware* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SEV_CMD_DOWNLOAD_FIRMWARE, align 4
  %62 = load %struct.sev_data_download_firmware*, %struct.sev_data_download_firmware** %4, align 8
  %63 = call i32 @sev_do_cmd(i32 %61, %struct.sev_data_download_firmware* %62, i32* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %33
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %73

70:                                               ; preds = %33
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = call i32 @dev_info(%struct.device* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.page*, %struct.page** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @__free_pages(%struct.page* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %32
  %78 = load %struct.firmware*, %struct.firmware** %5, align 8
  %79 = call i32 @release_firmware(%struct.firmware* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %16
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @sev_get_firmware(%struct.device*, %struct.firmware**) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local %struct.sev_data_download_firmware* @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(%struct.sev_data_download_firmware*, i32, i32) #1

declare dso_local i32 @__psp_pa(%struct.sev_data_download_firmware*) #1

declare dso_local i32 @sev_do_cmd(i32, %struct.sev_data_download_firmware*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
