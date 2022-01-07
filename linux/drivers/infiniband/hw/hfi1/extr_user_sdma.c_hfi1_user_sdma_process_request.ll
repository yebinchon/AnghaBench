; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_hfi1_user_sdma_process_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_hfi1_user_sdma_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i64, %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_ctxtdata* }
%struct.hfi1_user_sdma_comp_q = type { i32 }
%struct.hfi1_user_sdma_pkt_q = type { i64, %struct.TYPE_7__, i32, %struct.user_sdma_request*, i32, %struct.hfi1_devdata* }
%struct.TYPE_7__ = type { i32 }
%struct.user_sdma_request = type { i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_9__, i32, %struct.sdma_req_info, i64, i64, %struct.TYPE_8__*, i32, i32, i64, i64, i64, i64, %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_pkt_q* }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.sdma_req_info = type { i32, i32, i32*, i64, %struct.TYPE_6__, i32*, i64*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, i64 }
%struct.hfi1_devdata = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hfi1_ctxtdata = type { i64 }
%struct.iovec = type { i32, i32, i32*, i64, %struct.TYPE_6__, i32*, i64*, i32, i32, i32 }

@initial_pkt_count = common dso_local global i32 0, align 4
@SDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"[%u:%u:%u] First vector not big enough for header %lu/%lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"[%u:%u:%u] Failed to copy info QW (%d)\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@hfi1_sdma_comp_ring_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"[%u:%u:%u:%u] Invalid comp index\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[%u:%u:%u:%u] Invalid iov count %d, dim %ld\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"[%u:%u:%u:%u] Request does not specify fragsize\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"[%u:%u:%u] Entry %u is in use\00", align 1
@EBADSLT = common dso_local global i32 0, align 4
@EXPECTED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"Not enough vectors for expected request\00", align 1
@MAX_VECTORS_PER_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Too many vectors (%u/%u)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to copy header template (%d)\00", align 1
@STATIC_RATE_CTRL = common dso_local global i32 0, align 4
@USER_OPCODE_CHECK_MASK = common dso_local global i32 0, align 4
@USER_OPCODE_CHECK_VAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Invalid opcode (%d)\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Invalid SC(%u)/VL(%u)\00", align 1
@PKEY_CHECK_INVALID = common dso_local global i32 0, align 4
@HFI1_LRH_GRH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"User tried to pass in a GRH\00", align 1
@OFFSET = common dso_local global i32 0, align 4
@OM = common dso_local global i32 0, align 4
@KDETH_OM_LARGE = common dso_local global i32 0, align 4
@KDETH_OM_SMALL = common dso_local global i32 0, align 4
@MAX_TID_PAIR_ENTRIES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to copy %d TIDs (%d)\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@SDMA_AHG = common dso_local global i32 0, align 4
@QUEUED = common dso_local global i32 0, align 4
@SDMA_PKT_Q_ACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@SDMA_IOWAIT_TIMEOUT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_user_sdma_process_request(%struct.hfi1_filedata* %0, %struct.iovec* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_filedata*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfi1_ctxtdata*, align 8
  %13 = alloca %struct.hfi1_user_sdma_pkt_q*, align 8
  %14 = alloca %struct.hfi1_user_sdma_comp_q*, align 8
  %15 = alloca %struct.hfi1_devdata*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sdma_req_info, align 8
  %19 = alloca %struct.user_sdma_request*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %30 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %29, i32 0, i32 3
  %31 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %30, align 8
  store %struct.hfi1_ctxtdata* %31, %struct.hfi1_ctxtdata** %12, align 8
  %32 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %33 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %32, i32 0, i32 2
  %34 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %33, align 8
  store %struct.hfi1_user_sdma_pkt_q* %34, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %35 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %36 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %35, i32 0, i32 1
  %37 = load %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_comp_q** %36, align 8
  store %struct.hfi1_user_sdma_comp_q* %37, %struct.hfi1_user_sdma_comp_q** %14, align 8
  %38 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %39 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %38, i32 0, i32 5
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %39, align 8
  store %struct.hfi1_devdata* %40, %struct.hfi1_devdata** %15, align 8
  store i64 0, i64* %16, align 8
  %41 = load i32, i32* @initial_pkt_count, align 4
  store i32 %41, i32* %17, align 4
  %42 = load %struct.iovec*, %struct.iovec** %7, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %43
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 144
  br i1 %48, label %49, label %68

49:                                               ; preds = %4
  %50 = load i32, i32* @SDMA, align 4
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %52 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %55 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %58 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.iovec*, %struct.iovec** %7, align 8
  %61 = load i64, i64* %16, align 8
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %60, i64 %61
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @hfi1_cdbg(i32 %50, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %56, i64 %59, i32 %64, i64 144)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %803

68:                                               ; preds = %4
  %69 = load %struct.iovec*, %struct.iovec** %7, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i64 %70
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @copy_from_user(%struct.sdma_req_info* %18, i64 %73, i32 72)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %68
  %78 = load i32, i32* @SDMA, align 4
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %80 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %83 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %86 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @hfi1_cdbg(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %81, i64 %84, i64 %87, i32 %88)
  %90 = load i32, i32* @EFAULT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %803

92:                                               ; preds = %68
  %93 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %94 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %95 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %98 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = bitcast %struct.sdma_req_info* %18 to i32*
  %101 = call i32 @trace_hfi1_sdma_user_reqinfo(%struct.hfi1_devdata* %93, i64 %96, i64 %99, i32* %100)
  %102 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @hfi1_sdma_comp_ring_size, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %92
  %107 = load i32, i32* @SDMA, align 4
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %109 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %112 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %115 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @hfi1_cdbg(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %110, i64 %113, i64 %116, i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %803

122:                                              ; preds = %92
  %123 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @req_iovcnt(i32 %124)
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %134, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @req_iovcnt(i32 %129)
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %8, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %127, %122
  %135 = load i32, i32* @SDMA, align 4
  %136 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %137 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %140 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %143 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @req_iovcnt(i32 %148)
  %150 = load i64, i64* %8, align 8
  %151 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @hfi1_cdbg(i32 %135, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %138, i64 %141, i64 %144, i32 %146, i32 %149, i64 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %803

154:                                              ; preds = %127
  %155 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 9
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* @SDMA, align 4
  %160 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %161 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %164 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %167 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @hfi1_cdbg(i32 %159, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %162, i64 %165, i64 %168, i32 %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %803

174:                                              ; preds = %154
  %175 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %178 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @test_and_set_bit(i32 %176, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %174
  %183 = load i32, i32* @SDMA, align 4
  %184 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %185 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %188 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %191 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, i32, i64, i64, i32, ...) @hfi1_cdbg(i32 %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %186, i64 %189, i64 %192, i32 %194)
  %196 = load i32, i32* @EBADSLT, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %803

198:                                              ; preds = %174
  %199 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %200 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %201 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %204 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @trace_hfi1_sdma_user_process_request(%struct.hfi1_devdata* %199, i64 %202, i64 %205, i32 %207)
  %209 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %210 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %209, i32 0, i32 3
  %211 = load %struct.user_sdma_request*, %struct.user_sdma_request** %210, align 8
  %212 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %211, i64 %214
  store %struct.user_sdma_request* %215, %struct.user_sdma_request** %19, align 8
  %216 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @req_iovcnt(i32 %217)
  %219 = sub nsw i32 %218, 1
  %220 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %221 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %223 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %222, i32 0, i32 11
  store i64 0, i64* %223, align 8
  %224 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %225 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %226 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %225, i32 0, i32 20
  store %struct.hfi1_user_sdma_pkt_q* %224, %struct.hfi1_user_sdma_pkt_q** %226, align 8
  %227 = load %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_comp_q** %14, align 8
  %228 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %229 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %228, i32 0, i32 19
  store %struct.hfi1_user_sdma_comp_q* %227, %struct.hfi1_user_sdma_comp_q** %229, align 8
  %230 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %231 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %230, i32 0, i32 1
  store i32 -1, i32* %231, align 4
  %232 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %233 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %232, i32 0, i32 18
  store i64 0, i64* %233, align 8
  %234 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %235 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %234, i32 0, i32 17
  store i64 0, i64* %235, align 8
  %236 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %237 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %236, i32 0, i32 16
  store i64 0, i64* %237, align 8
  %238 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %239 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %238, i32 0, i32 2
  store i32 0, i32* %239, align 8
  %240 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %241 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %240, i32 0, i32 3
  store i32 0, i32* %241, align 4
  %242 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %243 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %242, i32 0, i32 4
  store i32* null, i32** %243, align 8
  %244 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %245 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %244, i32 0, i32 15
  store i64 0, i64* %245, align 8
  %246 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %247 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %246, i32 0, i32 14
  %248 = call i32 @INIT_LIST_HEAD(i32* %247)
  %249 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %250 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %249, i32 0, i32 7
  %251 = call i32 @memcpy(%struct.TYPE_9__* %250, %struct.sdma_req_info* %18, i32 72)
  %252 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %253 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %252, i32 0, i32 2
  %254 = call i32 @atomic_inc(i32* %253)
  %255 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @req_opcode(i32 %256)
  %258 = load i64, i64* @EXPECTED, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %275

260:                                              ; preds = %198
  %261 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %262 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %267 = call i32 (%struct.user_sdma_request*, i8*, ...) @SDMA_DBG(%struct.user_sdma_request* %266, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %10, align 4
  br label %760

270:                                              ; preds = %260
  %271 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %272 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %270, %198
  %276 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 7
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %281 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @MAX_VECTORS_PER_REQ, align 4
  %284 = icmp sgt i32 %282, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %279, %275
  %286 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %287 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %288 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @MAX_VECTORS_PER_REQ, align 4
  %291 = call i32 (%struct.user_sdma_request*, i8*, ...) @SDMA_DBG(%struct.user_sdma_request* %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %289, i32 %290)
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %10, align 4
  br label %760

294:                                              ; preds = %279
  %295 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %296 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %295, i32 0, i32 9
  %297 = load %struct.iovec*, %struct.iovec** %7, align 8
  %298 = load i64, i64* %16, align 8
  %299 = getelementptr inbounds %struct.iovec, %struct.iovec* %297, i64 %298
  %300 = getelementptr inbounds %struct.iovec, %struct.iovec* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = add i64 %301, 72
  %303 = call i32 @copy_from_user(%struct.sdma_req_info* %296, i64 %302, i32 72)
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %294
  %307 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %308 = load i32, i32* %10, align 4
  %309 = call i32 (%struct.user_sdma_request*, i8*, ...) @SDMA_DBG(%struct.user_sdma_request* %307, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %308)
  %310 = load i32, i32* @EFAULT, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %10, align 4
  br label %760

312:                                              ; preds = %294
  %313 = load i32, i32* @STATIC_RATE_CTRL, align 4
  %314 = call i64 @HFI1_CAP_IS_USET(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %312
  %317 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %318 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %317, i32 0, i32 9
  %319 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %318, i32 0, i32 6
  %320 = load i64*, i64** %319, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 2
  store i64 0, i64* %321, align 8
  br label %322

322:                                              ; preds = %316, %312
  %323 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %324 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %323, i32 0, i32 9
  %325 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %324, i32 0, i32 5
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @be32_to_cpu(i32 %328)
  %330 = ashr i32 %329, 24
  %331 = and i32 %330, 255
  store i32 %331, i32* %20, align 4
  %332 = load i32, i32* %20, align 4
  %333 = load i32, i32* @USER_OPCODE_CHECK_MASK, align 4
  %334 = and i32 %332, %333
  %335 = load i32, i32* @USER_OPCODE_CHECK_VAL, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %343

337:                                              ; preds = %322
  %338 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %339 = load i32, i32* %20, align 4
  %340 = call i32 (%struct.user_sdma_request*, i8*, ...) @SDMA_DBG(%struct.user_sdma_request* %338, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %339)
  %341 = load i32, i32* @EINVAL, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %10, align 4
  br label %760

343:                                              ; preds = %322
  %344 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %345 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %344, i32 0, i32 9
  %346 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %345, i32 0, i32 6
  %347 = load i64*, i64** %346, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 0
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @le16_to_cpu(i64 %349)
  %351 = ashr i32 %350, 12
  %352 = and i32 %351, 15
  store i32 %352, i32* %22, align 4
  %353 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %354 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %353, i32 0, i32 9
  %355 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @be16_to_cpu(i32 %358)
  %360 = ashr i32 %359, 12
  %361 = and i32 %360, 15
  %362 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %363 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %362, i32 0, i32 9
  %364 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %363, i32 0, i32 6
  %365 = load i64*, i64** %364, align 8
  %366 = getelementptr inbounds i64, i64* %365, i64 1
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @le16_to_cpu(i64 %367)
  %369 = ashr i32 %368, 14
  %370 = and i32 %369, 1
  %371 = shl i32 %370, 4
  %372 = or i32 %361, %371
  store i32 %372, i32* %21, align 4
  %373 = load i32, i32* %22, align 4
  %374 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %375 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %374, i32 0, i32 0
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp sge i32 %373, %378
  br i1 %379, label %386, label %380

380:                                              ; preds = %343
  %381 = load i32, i32* %22, align 4
  %382 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %383 = load i32, i32* %21, align 4
  %384 = call i32 @sc_to_vlt(%struct.hfi1_devdata* %382, i32 %383)
  %385 = icmp ne i32 %381, %384
  br i1 %385, label %386, label %393

386:                                              ; preds = %380, %343
  %387 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %388 = load i32, i32* %21, align 4
  %389 = load i32, i32* %22, align 4
  %390 = call i32 (%struct.user_sdma_request*, i8*, ...) @SDMA_DBG(%struct.user_sdma_request* %387, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %388, i32 %389)
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %10, align 4
  br label %760

393:                                              ; preds = %380
  %394 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %395 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %394, i32 0, i32 9
  %396 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %395, i32 0, i32 5
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @be32_to_cpu(i32 %399)
  store i32 %400, i32* %23, align 4
  %401 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %402 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %401, i32 0, i32 9
  %403 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 3
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @be16_to_cpu(i32 %406)
  store i32 %407, i32* %24, align 4
  %408 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %409 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %408, i32 0, i32 0
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %409, align 8
  %411 = load i32, i32* %24, align 4
  %412 = load i32, i32* %23, align 4
  %413 = load i32, i32* %21, align 4
  %414 = load i32, i32* @PKEY_CHECK_INVALID, align 4
  %415 = call i64 @egress_pkey_check(%struct.TYPE_10__* %410, i32 %411, i32 %412, i32 %413, i32 %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %393
  %418 = load i32, i32* @EINVAL, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %10, align 4
  br label %760

420:                                              ; preds = %393
  %421 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %422 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %421, i32 0, i32 9
  %423 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %422, i32 0, i32 2
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @be16_to_cpu(i32 %426)
  %428 = and i32 %427, 3
  %429 = load i32, i32* @HFI1_LRH_GRH, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %420
  %432 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %433 = call i32 (%struct.user_sdma_request*, i8*, ...) @SDMA_DBG(%struct.user_sdma_request* %432, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %434 = load i32, i32* @EINVAL, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %10, align 4
  br label %760

436:                                              ; preds = %420
  %437 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %438 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %437, i32 0, i32 9
  %439 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %438, i32 0, i32 4
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 6
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @le32_to_cpu(i32 %443)
  %445 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %446 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %445, i32 0, i32 13
  store i32 %444, i32* %446, align 8
  %447 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %448 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %447, i32 0, i32 9
  %449 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %448, i32 0, i32 4
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @OFFSET, align 4
  %453 = call i32 @KDETH_GET(i32 %451, i32 %452)
  %454 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %455 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %454, i32 0, i32 9
  %456 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %455, i32 0, i32 4
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @OM, align 4
  %460 = call i32 @KDETH_GET(i32 %458, i32 %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %436
  %463 = load i32, i32* @KDETH_OM_LARGE, align 4
  br label %466

464:                                              ; preds = %436
  %465 = load i32, i32* @KDETH_OM_SMALL, align 4
  br label %466

466:                                              ; preds = %464, %462
  %467 = phi i32 [ %463, %462 ], [ %465, %464 ]
  %468 = mul nsw i32 %453, %467
  %469 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %470 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %469, i32 0, i32 5
  store i32 %468, i32* %470, align 8
  %471 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %472 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %473 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %476 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %481 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %480, i32 0, i32 5
  %482 = load i32, i32* %481, align 8
  %483 = call i32 @trace_hfi1_sdma_user_initial_tidoffset(%struct.hfi1_devdata* %471, i64 %474, i64 %477, i32 %479, i32 %482)
  %484 = load i64, i64* %16, align 8
  %485 = add i64 %484, 1
  store i64 %485, i64* %16, align 8
  store i32 0, i32* %11, align 4
  br label %486

486:                                              ; preds = %549, %466
  %487 = load i32, i32* %11, align 4
  %488 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %489 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = icmp slt i32 %487, %490
  br i1 %491, label %492, label %552

492:                                              ; preds = %486
  %493 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %494 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %493, i32 0, i32 12
  %495 = load %struct.TYPE_8__*, %struct.TYPE_8__** %494, align 8
  %496 = load i32, i32* %11, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i32 0, i32 2
  store i64 0, i64* %499, align 8
  %500 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %501 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %500, i32 0, i32 12
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %501, align 8
  %503 = load i32, i32* %11, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 1
  %507 = call i32 @INIT_LIST_HEAD(i32* %506)
  %508 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %509 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %508, i32 0, i32 12
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %509, align 8
  %511 = load i32, i32* %11, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 0
  %515 = load %struct.iovec*, %struct.iovec** %7, align 8
  %516 = load i64, i64* %16, align 8
  %517 = add i64 %516, 1
  store i64 %517, i64* %16, align 8
  %518 = getelementptr inbounds %struct.iovec, %struct.iovec* %515, i64 %516
  %519 = bitcast %struct.iovec* %518 to %struct.sdma_req_info*
  %520 = call i32 @memcpy(%struct.TYPE_9__* %514, %struct.sdma_req_info* %519, i32 16)
  %521 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %522 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %523 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %522, i32 0, i32 12
  %524 = load %struct.TYPE_8__*, %struct.TYPE_8__** %523, align 8
  %525 = load i32, i32* %11, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i64 %526
  %528 = call i32 @pin_vector_pages(%struct.user_sdma_request* %521, %struct.TYPE_8__* %527)
  store i32 %528, i32* %10, align 4
  %529 = load i32, i32* %10, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %535

531:                                              ; preds = %492
  %532 = load i32, i32* %11, align 4
  %533 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %534 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %533, i32 0, i32 0
  store i32 %532, i32* %534, align 8
  br label %760

535:                                              ; preds = %492
  %536 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %537 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %536, i32 0, i32 12
  %538 = load %struct.TYPE_8__*, %struct.TYPE_8__** %537, align 8
  %539 = load i32, i32* %11, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %542, i32 0, i32 2
  %544 = load i64, i64* %543, align 8
  %545 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %546 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %545, i32 0, i32 11
  %547 = load i64, i64* %546, align 8
  %548 = add nsw i64 %547, %544
  store i64 %548, i64* %546, align 8
  br label %549

549:                                              ; preds = %535
  %550 = load i32, i32* %11, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %11, align 4
  br label %486

552:                                              ; preds = %486
  %553 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %554 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %555 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %558 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %563 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %562, i32 0, i32 11
  %564 = load i64, i64* %563, align 8
  %565 = call i32 @trace_hfi1_sdma_user_data_length(%struct.hfi1_devdata* %553, i64 %556, i64 %559, i32 %561, i64 %564)
  %566 = load i32, i32* %17, align 4
  %567 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %568 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %567, i32 0, i32 7
  %569 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = icmp sgt i32 %566, %570
  br i1 %571, label %572, label %577

572:                                              ; preds = %552
  %573 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %574 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %573, i32 0, i32 7
  %575 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  store i32 %576, i32* %17, align 4
  br label %577

577:                                              ; preds = %572, %552
  %578 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %579 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %578, i32 0, i32 7
  %580 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = call i64 @req_opcode(i32 %581)
  %583 = load i64, i64* @EXPECTED, align 8
  %584 = icmp eq i64 %582, %583
  br i1 %584, label %585, label %635

585:                                              ; preds = %577
  %586 = load %struct.iovec*, %struct.iovec** %7, align 8
  %587 = load i64, i64* %16, align 8
  %588 = getelementptr inbounds %struct.iovec, %struct.iovec* %586, i64 %587
  %589 = getelementptr inbounds %struct.iovec, %struct.iovec* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = sext i32 %590 to i64
  %592 = udiv i64 %591, 4
  %593 = trunc i64 %592 to i32
  store i32 %593, i32* %27, align 4
  %594 = load i32, i32* %27, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %600

596:                                              ; preds = %585
  %597 = load i32, i32* %27, align 4
  %598 = load i32, i32* @MAX_TID_PAIR_ENTRIES, align 4
  %599 = icmp sgt i32 %597, %598
  br i1 %599, label %600, label %603

600:                                              ; preds = %596, %585
  %601 = load i32, i32* @EINVAL, align 4
  %602 = sub nsw i32 0, %601
  store i32 %602, i32* %10, align 4
  br label %760

603:                                              ; preds = %596
  %604 = load %struct.iovec*, %struct.iovec** %7, align 8
  %605 = load i64, i64* %16, align 8
  %606 = getelementptr inbounds %struct.iovec, %struct.iovec* %604, i64 %605
  %607 = getelementptr inbounds %struct.iovec, %struct.iovec* %606, i32 0, i32 3
  %608 = load i64, i64* %607, align 8
  %609 = load i32, i32* %27, align 4
  %610 = sext i32 %609 to i64
  %611 = mul i64 %610, 4
  %612 = trunc i64 %611 to i32
  %613 = call i32* @memdup_user(i64 %608, i32 %612)
  store i32* %613, i32** %28, align 8
  %614 = load i32*, i32** %28, align 8
  %615 = call i64 @IS_ERR(i32* %614)
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %624

617:                                              ; preds = %603
  %618 = load i32*, i32** %28, align 8
  %619 = call i32 @PTR_ERR(i32* %618)
  store i32 %619, i32* %10, align 4
  %620 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %621 = load i32, i32* %27, align 4
  %622 = load i32, i32* %10, align 4
  %623 = call i32 (%struct.user_sdma_request*, i8*, ...) @SDMA_DBG(%struct.user_sdma_request* %620, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %621, i32 %622)
  br label %760

624:                                              ; preds = %603
  %625 = load i32*, i32** %28, align 8
  %626 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %627 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %626, i32 0, i32 4
  store i32* %625, i32** %627, align 8
  %628 = load i32, i32* %27, align 4
  %629 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %630 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %629, i32 0, i32 6
  store i32 %628, i32* %630, align 4
  %631 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %632 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %631, i32 0, i32 10
  store i64 0, i64* %632, align 8
  %633 = load i64, i64* %16, align 8
  %634 = add i64 %633, 1
  store i64 %634, i64* %16, align 8
  br label %635

635:                                              ; preds = %624, %577
  %636 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %637 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %636, i32 0, i32 9
  %638 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %637, i32 0, i32 2
  %639 = load i32*, i32** %638, align 8
  %640 = getelementptr inbounds i32, i32* %639, i64 1
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @be16_to_cpu(i32 %641)
  store i32 %642, i32* %25, align 4
  %643 = load i32, i32* %25, align 4
  %644 = call i32 @dlid_to_selector(i32 %643)
  store i32 %644, i32* %26, align 4
  %645 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %646 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %645, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %6, align 8
  %649 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %648, i32 0, i32 0
  %650 = load i64, i64* %649, align 8
  %651 = add nsw i64 %647, %650
  %652 = load i32, i32* %26, align 4
  %653 = sext i32 %652 to i64
  %654 = add nsw i64 %653, %651
  %655 = trunc i64 %654 to i32
  store i32 %655, i32* %26, align 4
  %656 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %15, align 8
  %657 = load i32, i32* %26, align 4
  %658 = load i32, i32* %22, align 4
  %659 = call i32 @sdma_select_user_engine(%struct.hfi1_devdata* %656, i32 %657, i32 %658)
  %660 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %661 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %660, i32 0, i32 8
  store i32 %659, i32* %661, align 8
  %662 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %663 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %662, i32 0, i32 8
  %664 = load i32, i32* %663, align 8
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %672

666:                                              ; preds = %635
  %667 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %668 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %667, i32 0, i32 8
  %669 = load i32, i32* %668, align 8
  %670 = call i32 @sdma_running(i32 %669)
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %675, label %672

672:                                              ; preds = %666, %635
  %673 = load i32, i32* @ECOMM, align 4
  %674 = sub nsw i32 0, %673
  store i32 %674, i32* %10, align 4
  br label %760

675:                                              ; preds = %666
  %676 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %677 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %676, i32 0, i32 7
  %678 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 8
  %680 = icmp sgt i32 %679, 1
  br i1 %680, label %681, label %692

681:                                              ; preds = %675
  %682 = load i32, i32* @SDMA_AHG, align 4
  %683 = call i64 @HFI1_CAP_IS_USET(i32 %682)
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %692

685:                                              ; preds = %681
  %686 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %687 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %686, i32 0, i32 8
  %688 = load i32, i32* %687, align 8
  %689 = call i32 @sdma_ahg_alloc(i32 %688)
  %690 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %691 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %690, i32 0, i32 1
  store i32 %689, i32* %691, align 4
  br label %692

692:                                              ; preds = %685, %681, %675
  %693 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %694 = load %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_comp_q** %14, align 8
  %695 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* @QUEUED, align 4
  %698 = call i32 @set_comp_state(%struct.hfi1_user_sdma_pkt_q* %693, %struct.hfi1_user_sdma_comp_q* %694, i32 %696, i32 %697, i32 0)
  %699 = load i64, i64* @SDMA_PKT_Q_ACTIVE, align 8
  %700 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %701 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %700, i32 0, i32 0
  store i64 %699, i64* %701, align 8
  %702 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %703 = load i32, i32* %17, align 4
  %704 = call i32 @user_sdma_send_pkts(%struct.user_sdma_request* %702, i32 %703)
  store i32 %704, i32* %10, align 4
  %705 = load i32, i32* %10, align 4
  %706 = icmp slt i32 %705, 0
  br i1 %706, label %707, label %712

707:                                              ; preds = %692
  %708 = load i32, i32* %10, align 4
  %709 = load i32, i32* @EBUSY, align 4
  %710 = sub nsw i32 0, %709
  %711 = icmp ne i32 %708, %710
  br label %712

712:                                              ; preds = %707, %692
  %713 = phi i1 [ false, %692 ], [ %711, %707 ]
  %714 = zext i1 %713 to i32
  %715 = call i64 @unlikely(i32 %714)
  %716 = icmp ne i64 %715, 0
  br i1 %716, label %717, label %718

717:                                              ; preds = %712
  br label %760

718:                                              ; preds = %712
  br label %719

719:                                              ; preds = %754, %718
  %720 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %721 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %720, i32 0, i32 3
  %722 = load i32, i32* %721, align 4
  %723 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %724 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %723, i32 0, i32 7
  %725 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = icmp ne i32 %722, %726
  br i1 %727, label %728, label %755

728:                                              ; preds = %719
  %729 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %730 = load i32, i32* %17, align 4
  %731 = call i32 @user_sdma_send_pkts(%struct.user_sdma_request* %729, i32 %730)
  store i32 %731, i32* %10, align 4
  %732 = load i32, i32* %10, align 4
  %733 = icmp slt i32 %732, 0
  br i1 %733, label %734, label %754

734:                                              ; preds = %728
  %735 = load i32, i32* %10, align 4
  %736 = load i32, i32* @EBUSY, align 4
  %737 = sub nsw i32 0, %736
  %738 = icmp ne i32 %735, %737
  br i1 %738, label %739, label %740

739:                                              ; preds = %734
  br label %760

740:                                              ; preds = %734
  %741 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %742 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 8
  %745 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %746 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %745, i32 0, i32 0
  %747 = load i64, i64* %746, align 8
  %748 = load i64, i64* @SDMA_PKT_Q_ACTIVE, align 8
  %749 = icmp eq i64 %747, %748
  %750 = zext i1 %749 to i32
  %751 = load i32, i32* @SDMA_IOWAIT_TIMEOUT, align 4
  %752 = call i32 @msecs_to_jiffies(i32 %751)
  %753 = call i32 @wait_event_interruptible_timeout(i32 %744, i32 %750, i32 %752)
  br label %754

754:                                              ; preds = %740, %728
  br label %719

755:                                              ; preds = %719
  %756 = load i64, i64* %16, align 8
  %757 = load i64*, i64** %9, align 8
  %758 = load i64, i64* %757, align 8
  %759 = add i64 %758, %756
  store i64 %759, i64* %757, align 8
  store i32 0, i32* %5, align 4
  br label %803

760:                                              ; preds = %739, %717, %672, %617, %600, %531, %431, %417, %386, %337, %306, %285, %265
  %761 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %762 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %761, i32 0, i32 3
  %763 = load i32, i32* %762, align 4
  %764 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %765 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %764, i32 0, i32 7
  %766 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %765, i32 0, i32 0
  %767 = load i32, i32* %766, align 8
  %768 = icmp slt i32 %763, %767
  br i1 %768, label %769, label %801

769:                                              ; preds = %760
  %770 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %771 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %770, i32 0, i32 3
  %772 = load i32, i32* %771, align 4
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %774, label %789

774:                                              ; preds = %769
  %775 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %776 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %775, i32 0, i32 1
  %777 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %776, i32 0, i32 0
  %778 = load i32, i32* %777, align 8
  %779 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %780 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %779, i32 0, i32 2
  %781 = load i32, i32* %780, align 8
  %782 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %783 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %782, i32 0, i32 3
  %784 = load i32, i32* %783, align 4
  %785 = sub nsw i32 %784, 1
  %786 = icmp eq i32 %781, %785
  %787 = zext i1 %786 to i32
  %788 = call i32 @wait_event(i32 %778, i32 %787)
  br label %789

789:                                              ; preds = %774, %769
  %790 = load %struct.user_sdma_request*, %struct.user_sdma_request** %19, align 8
  %791 = call i32 @user_sdma_free_request(%struct.user_sdma_request* %790, i32 1)
  %792 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %793 = call i32 @pq_update(%struct.hfi1_user_sdma_pkt_q* %792)
  %794 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %13, align 8
  %795 = load %struct.hfi1_user_sdma_comp_q*, %struct.hfi1_user_sdma_comp_q** %14, align 8
  %796 = getelementptr inbounds %struct.sdma_req_info, %struct.sdma_req_info* %18, i32 0, i32 1
  %797 = load i32, i32* %796, align 4
  %798 = load i32, i32* @ERROR, align 4
  %799 = load i32, i32* %10, align 4
  %800 = call i32 @set_comp_state(%struct.hfi1_user_sdma_pkt_q* %794, %struct.hfi1_user_sdma_comp_q* %795, i32 %797, i32 %798, i32 %799)
  br label %801

801:                                              ; preds = %789, %760
  %802 = load i32, i32* %10, align 4
  store i32 %802, i32* %5, align 4
  br label %803

803:                                              ; preds = %801, %755, %182, %158, %134, %106, %77, %49
  %804 = load i32, i32* %5, align 4
  ret i32 %804
}

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, i64, i64, i32, ...) #1

declare dso_local i32 @copy_from_user(%struct.sdma_req_info*, i64, i32) #1

declare dso_local i32 @trace_hfi1_sdma_user_reqinfo(%struct.hfi1_devdata*, i64, i64, i32*) #1

declare dso_local i32 @req_iovcnt(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @trace_hfi1_sdma_user_process_request(%struct.hfi1_devdata*, i64, i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.sdma_req_info*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @req_opcode(i32) #1

declare dso_local i32 @SDMA_DBG(%struct.user_sdma_request*, i8*, ...) #1

declare dso_local i64 @HFI1_CAP_IS_USET(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @sc_to_vlt(%struct.hfi1_devdata*, i32) #1

declare dso_local i64 @egress_pkey_check(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @KDETH_GET(i32, i32) #1

declare dso_local i32 @trace_hfi1_sdma_user_initial_tidoffset(%struct.hfi1_devdata*, i64, i64, i32, i32) #1

declare dso_local i32 @pin_vector_pages(%struct.user_sdma_request*, %struct.TYPE_8__*) #1

declare dso_local i32 @trace_hfi1_sdma_user_data_length(%struct.hfi1_devdata*, i64, i64, i32, i64) #1

declare dso_local i32* @memdup_user(i64, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dlid_to_selector(i32) #1

declare dso_local i32 @sdma_select_user_engine(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @sdma_running(i32) #1

declare dso_local i32 @sdma_ahg_alloc(i32) #1

declare dso_local i32 @set_comp_state(%struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_comp_q*, i32, i32, i32) #1

declare dso_local i32 @user_sdma_send_pkts(%struct.user_sdma_request*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @user_sdma_free_request(%struct.user_sdma_request*, i32) #1

declare dso_local i32 @pq_update(%struct.hfi1_user_sdma_pkt_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
