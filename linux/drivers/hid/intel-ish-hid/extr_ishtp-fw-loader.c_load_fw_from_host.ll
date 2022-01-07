; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_load_fw_from_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_load_fw_from_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_data = type { i32, i32, %struct.ishtp_cl* }
%struct.ishtp_cl = type { i32 }
%struct.firmware = type { i32 }
%struct.shim_fw_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FILENAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOADER_XFER_MODE_DIRECT_DMA = common dso_local global i32 0, align 4
@LOADER_XFER_MODE_ISHTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No transfer mode selected in firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ISH firmware %s loaded\0A\00", align 1
@MAX_LOAD_ATTEMPTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"ISH host firmware load failed %d. Resetting ISH, and trying again..\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ISH host firmware load failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_data*)* @load_fw_from_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_fw_from_host(%struct.ishtp_cl_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.shim_fw_info, align 4
  %9 = alloca %struct.ishtp_cl*, align 8
  store %struct.ishtp_cl_data* %0, %struct.ishtp_cl_data** %3, align 8
  %10 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %11 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %10, i32 0, i32 2
  %12 = load %struct.ishtp_cl*, %struct.ishtp_cl** %11, align 8
  store %struct.ishtp_cl* %12, %struct.ishtp_cl** %9, align 8
  %13 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %14 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* @FILENAME_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %22 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %103

25:                                               ; preds = %1
  %26 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @get_firmware_variant(%struct.ishtp_cl_data* %26, i8* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %100

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %35 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %34)
  %36 = call i32 @request_firmware(%struct.firmware** %7, i8* %33, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %100

40:                                               ; preds = %32
  %41 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %42 = load %struct.firmware*, %struct.firmware** %7, align 8
  %43 = call i32 @ish_query_loader_prop(%struct.ishtp_cl_data* %41, %struct.firmware* %42, %struct.shim_fw_info* %8)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %97

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %8, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @LOADER_XFER_MODE_DIRECT_DMA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %57 = load %struct.firmware*, %struct.firmware** %7, align 8
  %58 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ish_fw_xfer_direct_dma(%struct.ishtp_cl_data* %56, %struct.firmware* %57, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %78

62:                                               ; preds = %47
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @LOADER_XFER_MODE_ISHTP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %69 = load %struct.firmware*, %struct.firmware** %7, align 8
  %70 = call i32 @ish_fw_xfer_ishtp(%struct.ishtp_cl_data* %68, %struct.firmware* %69)
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %62
  %72 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %73 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %72)
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %97

82:                                               ; preds = %78
  %83 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %84 = call i32 @ish_fw_start(%struct.ishtp_cl_data* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %97

88:                                               ; preds = %82
  %89 = load %struct.firmware*, %struct.firmware** %7, align 8
  %90 = call i32 @release_firmware(%struct.firmware* %89)
  %91 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %92 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %91)
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @dev_info(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @kfree(i8* %95)
  store i32 0, i32* %2, align 4
  br label %131

97:                                               ; preds = %87, %81, %46
  %98 = load %struct.firmware*, %struct.firmware** %7, align 8
  %99 = call i32 @release_firmware(%struct.firmware* %98)
  br label %100

100:                                              ; preds = %97, %39, %31
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @kfree(i8* %101)
  br label %103

103:                                              ; preds = %100, %20
  %104 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %105 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %110 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = sext i32 %111 to i64
  %114 = load i64, i64* @MAX_LOAD_ATTEMPTS, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %118 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %117)
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @dev_warn(i32 %118, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load %struct.ishtp_cl*, %struct.ishtp_cl** %9, align 8
  %122 = call i32 @ishtp_get_ishtp_device(%struct.ishtp_cl* %121)
  %123 = call i32 @ish_hw_reset(i32 %122)
  br label %129

124:                                              ; preds = %108, %103
  %125 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %126 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %125)
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %116
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %88
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @get_firmware_variant(%struct.ishtp_cl_data*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local i32 @ish_query_loader_prop(%struct.ishtp_cl_data*, %struct.firmware*, %struct.shim_fw_info*) #1

declare dso_local i32 @ish_fw_xfer_direct_dma(%struct.ishtp_cl_data*, %struct.firmware*, i32) #1

declare dso_local i32 @ish_fw_xfer_ishtp(%struct.ishtp_cl_data*, %struct.firmware*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ish_fw_start(%struct.ishtp_cl_data*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @ish_hw_reset(i32) #1

declare dso_local i32 @ishtp_get_ishtp_device(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
