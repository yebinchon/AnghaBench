; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ishtp_fw_client*, i32, %struct.TYPE_2__ }
%struct.ishtp_fw_client = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ishtp_bus_message = type { i32 }
%struct.hbm_host_version_response = type { %struct.TYPE_2__, i32 }
%struct.hbm_client_connect_response = type { i32 }
%struct.hbm_client_connect_request = type { i32 }
%struct.hbm_props_response = type { i32, i32, i32 }
%struct.hbm_host_enum_response = type { i32 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.dma_alloc_notify = type { i32, i32, i32 }
%struct.dma_xfer_hbm = type { i32 }

@ISHTP_HBM_STOPPED = common dso_local global i8* null, align 8
@HBM_MAJOR_VERSION = common dso_local global i32 0, align 4
@HBM_MINOR_VERSION = common dso_local global i32 0, align 4
@ISHTP_DEV_INIT_CLIENTS = common dso_local global i32 0, align 4
@ISHTP_HBM_START = common dso_local global i8* null, align 8
@ISHTP_HBM_STARTED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"reset: wrong host start response\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"reset: properties response hbm wrong status\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"reset: host properties response address mismatch [%02X %02X]\0A\00", align 1
@ISHTP_HBM_CLIENT_PROPERTIES = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"reset: unexpected properties response\0A\00", align 1
@ISHTP_DEV_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Requesting to use DMA\0A\00", align 1
@DMA_BUFFER_ALLOC_NOTIFY = common dso_local global i32 0, align 4
@ISHTP_HBM_ENUM_CLIENTS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"reset: unexpected enumeration response hbm\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"unexpected stop response\0A\00", align 1
@ISHTP_DEV_DISABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"reset: FW stop response\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"DMA XFER requested but DMA is not enabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"DMA XFER acked but DMA Tx is not enabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"unknown HBM: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_hbm_dispatch(%struct.ishtp_device* %0, %struct.ishtp_bus_message* %1) #0 {
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.ishtp_bus_message*, align 8
  %5 = alloca %struct.ishtp_bus_message*, align 8
  %6 = alloca %struct.ishtp_fw_client*, align 8
  %7 = alloca %struct.hbm_host_version_response*, align 8
  %8 = alloca %struct.hbm_client_connect_response*, align 8
  %9 = alloca %struct.hbm_client_connect_response*, align 8
  %10 = alloca %struct.hbm_client_connect_request*, align 8
  %11 = alloca %struct.hbm_props_response*, align 8
  %12 = alloca %struct.hbm_host_enum_response*, align 8
  %13 = alloca %struct.ishtp_msg_hdr, align 4
  %14 = alloca %struct.dma_alloc_notify, align 4
  %15 = alloca %struct.dma_xfer_hbm*, align 8
  %16 = alloca i64, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  store %struct.ishtp_bus_message* %1, %struct.ishtp_bus_message** %4, align 8
  %17 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %4, align 8
  store %struct.ishtp_bus_message* %17, %struct.ishtp_bus_message** %5, align 8
  %18 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %19 = getelementptr inbounds %struct.ishtp_bus_message, %struct.ishtp_bus_message* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %321 [
    i32 129, label %21
    i32 138, label %77
    i32 136, label %83
    i32 131, label %89
    i32 130, label %209
    i32 128, label %250
    i32 137, label %271
    i32 132, label %277
    i32 135, label %281
    i32 134, label %284
    i32 133, label %300
  ]

21:                                               ; preds = %2
  %22 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %23 = bitcast %struct.ishtp_bus_message* %22 to %struct.hbm_host_version_response*
  store %struct.hbm_host_version_response* %23, %struct.hbm_host_version_response** %7, align 8
  %24 = load %struct.hbm_host_version_response*, %struct.hbm_host_version_response** %7, align 8
  %25 = getelementptr inbounds %struct.hbm_host_version_response, %struct.hbm_host_version_response* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %30 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %29, i32 0, i32 13
  %31 = load %struct.hbm_host_version_response*, %struct.hbm_host_version_response** %7, align 8
  %32 = getelementptr inbounds %struct.hbm_host_version_response, %struct.hbm_host_version_response* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_2__* %30 to i8*
  %34 = bitcast %struct.TYPE_2__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  %35 = load i8*, i8** @ISHTP_HBM_STOPPED, align 8
  %36 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %37 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %39 = call i32 @ishtp_hbm_stop_req(%struct.ishtp_device* %38)
  br label %329

40:                                               ; preds = %21
  %41 = load i32, i32* @HBM_MAJOR_VERSION, align 4
  %42 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %43 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %42, i32 0, i32 13
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @HBM_MINOR_VERSION, align 4
  %46 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %47 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %50 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ISHTP_DEV_INIT_CLIENTS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %40
  %55 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %56 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** @ISHTP_HBM_START, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i8*, i8** @ISHTP_HBM_STARTED, align 8
  %62 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %63 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %65 = call i32 @ishtp_hbm_enum_clients_req(%struct.ishtp_device* %64)
  br label %73

66:                                               ; preds = %54, %40
  %67 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %68 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %72 = call i32 @ish_hw_reset(%struct.ishtp_device* %71)
  br label %329

73:                                               ; preds = %60
  %74 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %75 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %74, i32 0, i32 12
  %76 = call i32 @wake_up_interruptible(i32* %75)
  br label %329

77:                                               ; preds = %2
  %78 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %79 = bitcast %struct.ishtp_bus_message* %78 to %struct.hbm_client_connect_response*
  store %struct.hbm_client_connect_response* %79, %struct.hbm_client_connect_response** %8, align 8
  %80 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %81 = load %struct.hbm_client_connect_response*, %struct.hbm_client_connect_response** %8, align 8
  %82 = call i32 @ishtp_hbm_cl_connect_res(%struct.ishtp_device* %80, %struct.hbm_client_connect_response* %81)
  br label %329

83:                                               ; preds = %2
  %84 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %85 = bitcast %struct.ishtp_bus_message* %84 to %struct.hbm_client_connect_response*
  store %struct.hbm_client_connect_response* %85, %struct.hbm_client_connect_response** %9, align 8
  %86 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %87 = load %struct.hbm_client_connect_response*, %struct.hbm_client_connect_response** %9, align 8
  %88 = call i32 @ishtp_hbm_cl_disconnect_res(%struct.ishtp_device* %86, %struct.hbm_client_connect_response* %87)
  br label %329

89:                                               ; preds = %2
  %90 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %91 = bitcast %struct.ishtp_bus_message* %90 to %struct.hbm_props_response*
  store %struct.hbm_props_response* %91, %struct.hbm_props_response** %11, align 8
  %92 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %93 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %92, i32 0, i32 11
  %94 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %93, align 8
  %95 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %96 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.ishtp_fw_client, %struct.ishtp_fw_client* %94, i64 %97
  store %struct.ishtp_fw_client* %98, %struct.ishtp_fw_client** %6, align 8
  %99 = load %struct.hbm_props_response*, %struct.hbm_props_response** %11, align 8
  %100 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %89
  %104 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %105 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %104, i32 0, i32 11
  %106 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %105, align 8
  %107 = icmp ne %struct.ishtp_fw_client* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %103, %89
  %109 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %110 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %114 = call i32 @ish_hw_reset(%struct.ishtp_device* %113)
  br label %329

115:                                              ; preds = %103
  %116 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %6, align 8
  %117 = getelementptr inbounds %struct.ishtp_fw_client, %struct.ishtp_fw_client* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hbm_props_response*, %struct.hbm_props_response** %11, align 8
  %120 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %115
  %124 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %125 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %6, align 8
  %128 = getelementptr inbounds %struct.ishtp_fw_client, %struct.ishtp_fw_client* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hbm_props_response*, %struct.hbm_props_response** %11, align 8
  %131 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %132)
  %134 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %135 = call i32 @ish_hw_reset(%struct.ishtp_device* %134)
  br label %329

136:                                              ; preds = %115
  %137 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %138 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ISHTP_DEV_INIT_CLIENTS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %144 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @ISHTP_HBM_CLIENT_PROPERTIES, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142, %136
  %149 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %150 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %153 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %154 = call i32 @ish_hw_reset(%struct.ishtp_device* %153)
  br label %329

155:                                              ; preds = %142
  %156 = load %struct.hbm_props_response*, %struct.hbm_props_response** %11, align 8
  %157 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %6, align 8
  %160 = getelementptr inbounds %struct.ishtp_fw_client, %struct.ishtp_fw_client* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %162 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %166 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %166, align 8
  %169 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %170 = call i32 @ishtp_hbm_prop_req(%struct.ishtp_device* %169)
  %171 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %172 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ISHTP_DEV_ENABLED, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %155
  br label %329

177:                                              ; preds = %155
  %178 = call i32 (...) @ishtp_use_dma_transfer()
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  br label %329

181:                                              ; preds = %177
  %182 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %183 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @dev_dbg(i32 %184, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %186 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %187 = call i32 @ishtp_cl_alloc_dma_buf(%struct.ishtp_device* %186)
  %188 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %189 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %181
  store i64 12, i64* %16, align 8
  %193 = call i32 @memset(%struct.dma_alloc_notify* %14, i32 0, i32 12)
  %194 = load i32, i32* @DMA_BUFFER_ALLOC_NOTIFY, align 4
  %195 = getelementptr inbounds %struct.dma_alloc_notify, %struct.dma_alloc_notify* %14, i32 0, i32 2
  store i32 %194, i32* %195, align 4
  %196 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %197 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.dma_alloc_notify, %struct.dma_alloc_notify* %14, i32 0, i32 1
  store i32 %198, i32* %199, align 4
  %200 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %201 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.dma_alloc_notify, %struct.dma_alloc_notify* %14, i32 0, i32 0
  store i32 %202, i32* %203, align 4
  %204 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %13, i64 12)
  %205 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %206 = bitcast %struct.dma_alloc_notify* %14 to i8*
  %207 = call i32 @ishtp_write_message(%struct.ishtp_device* %205, %struct.ishtp_msg_hdr* %13, i8* %206)
  br label %208

208:                                              ; preds = %192, %181
  br label %329

209:                                              ; preds = %2
  %210 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %211 = bitcast %struct.ishtp_bus_message* %210 to %struct.hbm_host_enum_response*
  store %struct.hbm_host_enum_response* %211, %struct.hbm_host_enum_response** %12, align 8
  %212 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %213 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.hbm_host_enum_response*, %struct.hbm_host_enum_response** %12, align 8
  %216 = getelementptr inbounds %struct.hbm_host_enum_response, %struct.hbm_host_enum_response* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @memcpy(i32 %214, i32 %217, i32 32)
  %219 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %220 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ISHTP_DEV_INIT_CLIENTS, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %242

224:                                              ; preds = %209
  %225 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %226 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load i8*, i8** @ISHTP_HBM_ENUM_CLIENTS, align 8
  %229 = icmp eq i8* %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %224
  %231 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %232 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %231, i32 0, i32 1
  store i64 0, i64* %232, align 8
  %233 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %234 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %233, i32 0, i32 6
  store i32 0, i32* %234, align 8
  %235 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %236 = call i32 @ishtp_hbm_fw_cl_allocate(%struct.ishtp_device* %235)
  %237 = load i8*, i8** @ISHTP_HBM_CLIENT_PROPERTIES, align 8
  %238 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %239 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %241 = call i32 @ishtp_hbm_prop_req(%struct.ishtp_device* %240)
  br label %249

242:                                              ; preds = %224, %209
  %243 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %244 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i32, i8*, ...) @dev_err(i32 %245, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %247 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %248 = call i32 @ish_hw_reset(%struct.ishtp_device* %247)
  br label %329

249:                                              ; preds = %230
  br label %329

250:                                              ; preds = %2
  %251 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %252 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i8*, i8** @ISHTP_HBM_STOPPED, align 8
  %255 = icmp ne i8* %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %250
  %257 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %258 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (i32, i8*, ...) @dev_err(i32 %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %261

261:                                              ; preds = %256, %250
  %262 = load i32, i32* @ISHTP_DEV_DISABLED, align 4
  %263 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %264 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %263, i32 0, i32 5
  store i32 %262, i32* %264, align 4
  %265 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %266 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @dev_info(i32 %267, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %269 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %270 = call i32 @ish_hw_reset(%struct.ishtp_device* %269)
  br label %329

271:                                              ; preds = %2
  %272 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %273 = bitcast %struct.ishtp_bus_message* %272 to %struct.hbm_client_connect_request*
  store %struct.hbm_client_connect_request* %273, %struct.hbm_client_connect_request** %10, align 8
  %274 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %275 = load %struct.hbm_client_connect_request*, %struct.hbm_client_connect_request** %10, align 8
  %276 = call i32 @ishtp_hbm_fw_disconnect_req(%struct.ishtp_device* %274, %struct.hbm_client_connect_request* %275)
  br label %329

277:                                              ; preds = %2
  %278 = load i8*, i8** @ISHTP_HBM_STOPPED, align 8
  %279 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %280 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  br label %329

281:                                              ; preds = %2
  %282 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %283 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %282, i32 0, i32 2
  store i32 1, i32* %283, align 8
  br label %329

284:                                              ; preds = %2
  %285 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %286 = bitcast %struct.ishtp_bus_message* %285 to %struct.dma_xfer_hbm*
  store %struct.dma_xfer_hbm* %286, %struct.dma_xfer_hbm** %15, align 8
  %287 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %288 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %284
  %292 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %293 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32, i8*, ...) @dev_err(i32 %294, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %329

296:                                              ; preds = %284
  %297 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %298 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %15, align 8
  %299 = call i32 @ishtp_hbm_dma_xfer(%struct.ishtp_device* %297, %struct.dma_xfer_hbm* %298)
  br label %329

300:                                              ; preds = %2
  %301 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %302 = bitcast %struct.ishtp_bus_message* %301 to %struct.dma_xfer_hbm*
  store %struct.dma_xfer_hbm* %302, %struct.dma_xfer_hbm** %15, align 8
  %303 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %304 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %300
  %308 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %309 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %307, %300
  %313 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %314 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (i32, i8*, ...) @dev_err(i32 %315, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %329

317:                                              ; preds = %307
  %318 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %319 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %15, align 8
  %320 = call i32 @ishtp_hbm_dma_xfer_ack(%struct.ishtp_device* %318, %struct.dma_xfer_hbm* %319)
  br label %329

321:                                              ; preds = %2
  %322 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %323 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.ishtp_bus_message*, %struct.ishtp_bus_message** %5, align 8
  %326 = getelementptr inbounds %struct.ishtp_bus_message, %struct.ishtp_bus_message* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i32, i8*, ...) @dev_err(i32 %324, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %28, %66, %108, %123, %148, %242, %321, %317, %312, %296, %291, %281, %277, %271, %261, %249, %208, %180, %176, %83, %77, %73
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ishtp_hbm_stop_req(%struct.ishtp_device*) #2

declare dso_local i32 @ishtp_hbm_enum_clients_req(%struct.ishtp_device*) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @ish_hw_reset(%struct.ishtp_device*) #2

declare dso_local i32 @wake_up_interruptible(i32*) #2

declare dso_local i32 @ishtp_hbm_cl_connect_res(%struct.ishtp_device*, %struct.hbm_client_connect_response*) #2

declare dso_local i32 @ishtp_hbm_cl_disconnect_res(%struct.ishtp_device*, %struct.hbm_client_connect_response*) #2

declare dso_local i32 @ishtp_hbm_prop_req(%struct.ishtp_device*) #2

declare dso_local i32 @ishtp_use_dma_transfer(...) #2

declare dso_local i32 @dev_dbg(i32, i8*) #2

declare dso_local i32 @ishtp_cl_alloc_dma_buf(%struct.ishtp_device*) #2

declare dso_local i32 @memset(%struct.dma_alloc_notify*, i32, i32) #2

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i64) #2

declare dso_local i32 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, i8*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @ishtp_hbm_fw_cl_allocate(%struct.ishtp_device*) #2

declare dso_local i32 @dev_info(i32, i8*) #2

declare dso_local i32 @ishtp_hbm_fw_disconnect_req(%struct.ishtp_device*, %struct.hbm_client_connect_request*) #2

declare dso_local i32 @ishtp_hbm_dma_xfer(%struct.ishtp_device*, %struct.dma_xfer_hbm*) #2

declare dso_local i32 @ishtp_hbm_dma_xfer_ack(%struct.ishtp_device*, %struct.dma_xfer_hbm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
