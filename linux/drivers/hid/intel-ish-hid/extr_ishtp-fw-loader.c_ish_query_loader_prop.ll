; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_query_loader_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_query_loader_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_data = type { i32 }
%struct.firmware = type { i32 }
%struct.shim_fw_info = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.loader_xfer_query = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.loader_xfer_query_response = type { %struct.shim_fw_info }

@LOADER_CMD_XFER_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"data size %d is not equal to size of loader_xfer_query_response %zu\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"ish_fw_version: major=%d minor=%d hotfix=%d build=%d protocol_version=0x%x loader_version=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"loader_capability: max_fw_image_size=0x%x xfer_mode=%d max_dma_buf_size=0x%x dma_buf_size_limit=0x%x\0A\00", align 1
@dma_buf_size_limit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"ISH firmware size %zu is greater than Shim firmware loader max supported %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@LOADER_XFER_MODE_DIRECT_DMA = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"Shim firmware loader buffer size %d should be multiple of cacheline\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_data*, %struct.firmware*, %struct.shim_fw_info*)* @ish_query_loader_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ish_query_loader_prop(%struct.ishtp_cl_data* %0, %struct.firmware* %1, %struct.shim_fw_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ishtp_cl_data*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.shim_fw_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.loader_xfer_query, align 4
  %10 = alloca %struct.loader_xfer_query_response, align 4
  store %struct.ishtp_cl_data* %0, %struct.ishtp_cl_data** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store %struct.shim_fw_info* %2, %struct.shim_fw_info** %7, align 8
  %11 = call i32 @memset(%struct.loader_xfer_query* %9, i32 0, i32 8)
  %12 = load i32, i32* @LOADER_CMD_XFER_QUERY, align 4
  %13 = getelementptr inbounds %struct.loader_xfer_query, %struct.loader_xfer_query* %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.firmware*, %struct.firmware** %6, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.loader_xfer_query, %struct.loader_xfer_query* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %20 = bitcast %struct.loader_xfer_query* %9 to i32*
  %21 = bitcast %struct.loader_xfer_query_response* %10 to i32*
  %22 = call i32 @loader_cl_send(%struct.ishtp_cl_data* %19, i32* %20, i32 8, i32* %21, i32 36)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %27 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %137

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 36
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %35 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %36, i64 36)
  %38 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %39 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %137

42:                                               ; preds = %29
  %43 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %44 = getelementptr inbounds %struct.loader_xfer_query_response, %struct.loader_xfer_query_response* %10, i32 0, i32 0
  %45 = bitcast %struct.shim_fw_info* %43 to i8*
  %46 = bitcast %struct.shim_fw_info* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 36, i1 false)
  %47 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %48 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %47)
  %49 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %50 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %54 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %58 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %62 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %66 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %69 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56, i32 %60, i32 %64, i32 %67, i32 %71)
  %73 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %74 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %73)
  %75 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %76 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %80 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %84 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @dma_buf_size_limit, align 4
  %88 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %82, i32 %86, i32 %87)
  %89 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %90 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.firmware*, %struct.firmware** %6, align 8
  %94 = getelementptr inbounds %struct.firmware, %struct.firmware* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %42
  %98 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %99 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %98)
  %100 = load %struct.firmware*, %struct.firmware** %6, align 8
  %101 = getelementptr inbounds %struct.firmware, %struct.firmware* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %104 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %106)
  %108 = load i32, i32* @ENOSPC, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %137

110:                                              ; preds = %42
  %111 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %112 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @LOADER_XFER_MODE_DIRECT_DMA, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %110
  %119 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %120 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @L1_CACHE_BYTES, align 4
  %124 = srem i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %5, align 8
  %128 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %127)
  %129 = load %struct.shim_fw_info*, %struct.shim_fw_info** %7, align 8
  %130 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %137

136:                                              ; preds = %118, %110
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %126, %97, %33, %25
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @memset(%struct.loader_xfer_query*, i32, i32) #1

declare dso_local i32 @loader_cl_send(%struct.ishtp_cl_data*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
