; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_fw_xfer_direct_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-fw-loader.c_ish_fw_xfer_direct_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_data = type { i32, i32 }
%struct.firmware = type { i32, i32* }
%struct.shim_fw_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.loader_msg_hdr = type { i32 }
%struct.loader_xfer_dma_fragment = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }

@dma_buf_size_limit = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DMA map failed\0A\00", align 1
@LOADER_CMD_XFER_FRAGMENT = common dso_local global i32 0, align 4
@LOADER_XFER_MODE_DIRECT_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"xfer_mode=dma offset=0x%08x size=0x%x is_last=%d ddr_phys_addr=0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_data*, %struct.firmware*, i32)* @ish_fw_xfer_direct_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ish_fw_xfer_direct_dma(%struct.ishtp_cl_data* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shim_fw_info, align 4
  %6 = alloca %struct.ishtp_cl_data*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.loader_msg_hdr, align 4
  %15 = alloca %struct.loader_xfer_dma_fragment, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %2, i32* %19, align 4
  store %struct.ishtp_cl_data* %0, %struct.ishtp_cl_data** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  %20 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %21 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.device* @ishtp_get_pci_device(i32 %22)
  store %struct.device* %23, %struct.device** %16, align 8
  %24 = getelementptr inbounds %struct.shim_fw_info, %struct.shim_fw_info* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.firmware*, %struct.firmware** %7, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @dma_buf_size_limit, align 8
  %33 = call i32 @min3(i32 %29, i64 %31, i64 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @L1_CACHE_BYTES, align 4
  %35 = sub nsw i32 %34, 1
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* @GFP_DMA32, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @kmalloc(i32 %39, i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %3
  %47 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %48 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %174

51:                                               ; preds = %3
  %52 = load %struct.device*, %struct.device** %16, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  %56 = call i64 @dma_map_single(%struct.device* %52, i8* %53, i32 %54, i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = load %struct.device*, %struct.device** %16, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @dma_mapping_error(%struct.device* %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %63 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %62)
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %66 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %170

69:                                               ; preds = %51
  %70 = load i32, i32* @LOADER_CMD_XFER_FRAGMENT, align 4
  %71 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @LOADER_XFER_MODE_DIRECT_DMA, align 4
  %75 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %152, %69
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.firmware*, %struct.firmware** %7, align 8
  %82 = getelementptr inbounds %struct.firmware, %struct.firmware* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %156

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.firmware*, %struct.firmware** %7, align 8
  %90 = getelementptr inbounds %struct.firmware, %struct.firmware* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %12, align 4
  %95 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %105

97:                                               ; preds = %85
  %98 = load %struct.firmware*, %struct.firmware** %7, align 8
  %99 = getelementptr inbounds %struct.firmware, %struct.firmware* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %97, %93
  %106 = load i32, i32* %11, align 4
  %107 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.firmware*, %struct.firmware** %7, align 8
  %114 = getelementptr inbounds %struct.firmware, %struct.firmware* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @memcpy(i8* %112, i32* %118, i32 %119)
  %121 = load %struct.device*, %struct.device** %16, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @DMA_TO_DEVICE, align 4
  %125 = call i32 @dma_sync_single_for_device(%struct.device* %121, i64 %122, i32 %123, i32 %124)
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @clflush_cache_range(i8* %126, i32 %127)
  %129 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %130 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %129)
  %131 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.loader_xfer_dma_fragment, %struct.loader_xfer_dma_fragment* %15, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @dev_dbg(i32 %130, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %136, i32 %139, i64 %141)
  %143 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %144 = bitcast %struct.loader_xfer_dma_fragment* %15 to i32*
  %145 = bitcast %struct.loader_msg_hdr* %14 to i32*
  %146 = call i32 @loader_cl_send(%struct.ishtp_cl_data* %143, i32* %144, i32 32, i32* %145, i32 4)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %105
  %150 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %151 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  br label %164

152:                                              ; preds = %105
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %11, align 4
  br label %79

156:                                              ; preds = %79
  %157 = load %struct.device*, %struct.device** %16, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @DMA_TO_DEVICE, align 4
  %161 = call i32 @dma_unmap_single(%struct.device* %157, i64 %158, i32 %159, i32 %160)
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @kfree(i8* %162)
  store i32 0, i32* %4, align 4
  br label %174

164:                                              ; preds = %149
  %165 = load %struct.device*, %struct.device** %16, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @DMA_TO_DEVICE, align 4
  %169 = call i32 @dma_unmap_single(%struct.device* %165, i64 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %164, %61
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @kfree(i8* %171)
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %170, %156, %46
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.device* @ishtp_get_pci_device(i32) #1

declare dso_local i32 @min3(i32, i64, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @clflush_cache_range(i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @loader_cl_send(%struct.ishtp_cl_data*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
