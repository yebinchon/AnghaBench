; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_fw_xfer_ishtp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_fw_xfer_ishtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_data = type { i32 }
%struct.firmware = type { i64, i32* }
%struct.loader_xfer_ipc_fragment = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.loader_msg_hdr = type { i32 }

@LOADER_SHIM_IPC_BUF_SIZE = common dso_local global i64 0, align 8
@IPC_FRAGMENT_DATA_PREAMBLE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOADER_CMD_XFER_FRAGMENT = common dso_local global i32 0, align 4
@LOADER_XFER_MODE_ISHTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"xfer_mode=ipc offset=0x%08x size=0x%08x is_last=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_data*, %struct.firmware*)* @ish_fw_xfer_ishtp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ish_fw_xfer_ishtp(%struct.ishtp_cl_data* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ishtp_cl_data*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.loader_xfer_ipc_fragment*, align 8
  %11 = alloca %struct.loader_msg_hdr, align 4
  store %struct.ishtp_cl_data* %0, %struct.ishtp_cl_data** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %12 = load i64, i64* @LOADER_SHIM_IPC_BUF_SIZE, align 8
  %13 = load i64, i64* @IPC_FRAGMENT_DATA_PREAMBLE, align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @LOADER_SHIM_IPC_BUF_SIZE, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.loader_xfer_ipc_fragment* @kzalloc(i64 %15, i32 %16)
  store %struct.loader_xfer_ipc_fragment* %17, %struct.loader_xfer_ipc_fragment** %10, align 8
  %18 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %19 = icmp ne %struct.loader_xfer_ipc_fragment* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %4, align 8
  %22 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %121

25:                                               ; preds = %2
  %26 = load i32, i32* @LOADER_CMD_XFER_FRAGMENT, align 4
  %27 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %28 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @LOADER_XFER_MODE_ISHTP, align 4
  %32 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %33 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %110, %25
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %114

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.firmware*, %struct.firmware** %5, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %8, align 8
  %51 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %52 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %63

54:                                               ; preds = %41
  %55 = load %struct.firmware*, %struct.firmware** %5, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %8, align 8
  %60 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %61 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %49
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %66 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %70 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i64 %68, i64* %71, align 8
  %72 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %73 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.firmware*, %struct.firmware** %5, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @memcpy(i32 %74, i32* %79, i64 %80)
  %82 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %4, align 8
  %83 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %82)
  %84 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %85 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %89 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %93 = getelementptr inbounds %struct.loader_xfer_ipc_fragment, %struct.loader_xfer_ipc_fragment* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %91, i32 %95)
  %97 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %4, align 8
  %98 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %99 = bitcast %struct.loader_xfer_ipc_fragment* %98 to i32*
  %100 = load i64, i64* @IPC_FRAGMENT_DATA_PREAMBLE, align 8
  %101 = load i64, i64* %8, align 8
  %102 = add nsw i64 %100, %101
  %103 = bitcast %struct.loader_msg_hdr* %11 to i32*
  %104 = call i32 @loader_cl_send(%struct.ishtp_cl_data* %97, i32* %99, i64 %102, i32* %103, i32 4)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %63
  %108 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %4, align 8
  %109 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %117

110:                                              ; preds = %63
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %7, align 8
  br label %35

114:                                              ; preds = %35
  %115 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %116 = call i32 @kfree(%struct.loader_xfer_ipc_fragment* %115)
  store i32 0, i32* %3, align 4
  br label %121

117:                                              ; preds = %107
  %118 = load %struct.loader_xfer_ipc_fragment*, %struct.loader_xfer_ipc_fragment** %10, align 8
  %119 = call i32 @kfree(%struct.loader_xfer_ipc_fragment* %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %114, %20
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.loader_xfer_ipc_fragment* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local i32 @loader_cl_send(%struct.ishtp_cl_data*, i32*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.loader_xfer_ipc_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
