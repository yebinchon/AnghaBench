; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_process_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { %struct.TYPE_18__, %struct.pci_dev* }
%struct.TYPE_18__ = type { i32, %struct.pending_queue* }
%struct.pending_queue = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.cpt_request_info = type { i32, i32, i32, i32 }
%struct.cpt_info_buffer = type { i64, %struct.cpt_request_info*, i32, %struct.pending_entry*, i8*, i32, i32, i32, %struct.cpt_vf* }
%struct.pending_entry = type { i32, i32, i32, i8*, i8* }
%struct.cptvf_request = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%union.ctrl_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%union.cpt_res_s = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.cpt_vq_command = type { %struct.TYPE_17__, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8* }
%union.cpt_inst_s = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i64, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate memory for info_buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Setting up SG list failed\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for completion_addr\0A\00", align 1
@COMPLETION_CODE_INIT = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"mapping compptr Failed %lu\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PENDING_THOLD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"pending threshold reached\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Get free entry failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"queue: %d, rear: %d, front: %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Send command failed for AE\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to submit CPT command\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_request(%struct.cpt_vf* %0, %struct.cpt_request_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpt_vf*, align 8
  %5 = alloca %struct.cpt_request_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpt_info_buffer*, align 8
  %10 = alloca %struct.cptvf_request*, align 8
  %11 = alloca %union.ctrl_info*, align 8
  %12 = alloca %union.cpt_res_s*, align 8
  %13 = alloca %struct.pending_entry*, align 8
  %14 = alloca %struct.pending_queue*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cpt_vq_command, align 8
  %18 = alloca %union.cpt_inst_s, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %4, align 8
  store %struct.cpt_request_info* %1, %struct.cpt_request_info** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.cpt_info_buffer* null, %struct.cpt_info_buffer** %9, align 8
  store %struct.cptvf_request* null, %struct.cptvf_request** %10, align 8
  store %union.ctrl_info* null, %union.ctrl_info** %11, align 8
  store %union.cpt_res_s* null, %union.cpt_res_s** %12, align 8
  store %struct.pending_entry* null, %struct.pending_entry** %13, align 8
  store %struct.pending_queue* null, %struct.pending_queue** %14, align 8
  %19 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %20 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %19, i32 0, i32 1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 64, i32 %22)
  %24 = bitcast i8* %23 to %struct.cpt_info_buffer*
  store %struct.cpt_info_buffer* %24, %struct.cpt_info_buffer** %9, align 8
  %25 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %26 = icmp ne %struct.cpt_info_buffer* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %326

37:                                               ; preds = %2
  %38 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %39 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %38, i32 0, i32 3
  %40 = bitcast i32* %39 to %struct.cptvf_request*
  store %struct.cptvf_request* %40, %struct.cptvf_request** %10, align 8
  %41 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %42 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %41, i32 0, i32 2
  %43 = bitcast i32* %42 to %union.ctrl_info*
  store %union.ctrl_info* %43, %union.ctrl_info** %11, align 8
  %44 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %45 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %46 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %45, i32 0, i32 8
  store %struct.cpt_vf* %44, %struct.cpt_vf** %46, align 8
  %47 = load %union.ctrl_info*, %union.ctrl_info** %11, align 8
  %48 = bitcast %union.ctrl_info* %47 to %struct.TYPE_11__*
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %52 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %53 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %54 = call i32 @setup_sgio_list(%struct.cpt_vf* %51, %struct.cpt_info_buffer* %52, %struct.cpt_request_info* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %318

61:                                               ; preds = %37
  %62 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %63 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cptvf_request*, %struct.cptvf_request** %10, align 8
  %66 = getelementptr inbounds %struct.cptvf_request, %struct.cptvf_request* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kzalloc(i32 4, i32 %67)
  %69 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %72 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %61
  %80 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %318

85:                                               ; preds = %61
  %86 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %87 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = bitcast i8* %88 to %union.cpt_res_s*
  store %union.cpt_res_s* %89, %union.cpt_res_s** %12, align 8
  %90 = load i32, i32* @COMPLETION_CODE_INIT, align 4
  %91 = load %union.cpt_res_s*, %union.cpt_res_s** %12, align 8
  %92 = bitcast %union.cpt_res_s* %91 to %struct.TYPE_12__*
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %97 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %100 = call i64 @dma_map_single(i32* %95, i8* %98, i32 4, i32 %99)
  %101 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %102 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %106 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @dma_mapping_error(i32* %104, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %85
  %111 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 4)
  %114 = load i32, i32* @EFAULT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %318

116:                                              ; preds = %85
  %117 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.cptvf_request*, %struct.cptvf_request** %10, align 8
  %120 = getelementptr inbounds %struct.cptvf_request, %struct.cptvf_request* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @cpu_to_be16(i32 %122)
  %124 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  store i8* %123, i8** %126, align 8
  %127 = load %struct.cptvf_request*, %struct.cptvf_request** %10, align 8
  %128 = getelementptr inbounds %struct.cptvf_request, %struct.cptvf_request* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @cpu_to_be16(i32 %129)
  %131 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  store i8* %130, i8** %133, align 8
  %134 = load %struct.cptvf_request*, %struct.cptvf_request** %10, align 8
  %135 = getelementptr inbounds %struct.cptvf_request, %struct.cptvf_request* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @cpu_to_be16(i32 %136)
  %138 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i8* %137, i8** %140, align 8
  %141 = load %struct.cptvf_request*, %struct.cptvf_request** %10, align 8
  %142 = getelementptr inbounds %struct.cptvf_request, %struct.cptvf_request* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @cpu_to_be16(i32 %143)
  %145 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  %148 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @cpu_to_be64(i64 %150)
  %152 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %155 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %159 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 1
  store i32 %160, i32* %161, align 8
  %162 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* %16, align 4
  %165 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  store i32 0, i32* %8, align 4
  %168 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %169 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load %struct.pending_queue*, %struct.pending_queue** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %171, i64 %173
  store %struct.pending_queue* %174, %struct.pending_queue** %14, align 8
  %175 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %176 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %175, i32 0, i32 1
  %177 = call i64 @atomic64_read(i32* %176)
  %178 = load i64, i64* @PENDING_THOLD, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %116
  %181 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 0
  %183 = call i32 (i32*, i8*, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %184 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %185 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %186 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %185, i32 0, i32 0
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @process_pending_queue(%struct.cpt_vf* %184, %struct.TYPE_18__* %186, i32 %187)
  br label %189

189:                                              ; preds = %180, %116
  br label %190

190:                                              ; preds = %212, %189
  %191 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %192 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %191, i32 0, i32 0
  %193 = call i32 @spin_lock_bh(i32* %192)
  %194 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %195 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %196 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call %struct.pending_entry* @get_free_pending_entry(%struct.pending_queue* %194, i32 %198)
  store %struct.pending_entry* %199, %struct.pending_entry** %13, align 8
  %200 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %201 = icmp ne %struct.pending_entry* %200, null
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %234

206:                                              ; preds = %190
  %207 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %208 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %207, i32 0, i32 0
  %209 = call i32 @spin_unlock_bh(i32* %208)
  %210 = load i32, i32* %7, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %214 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %215 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %214, i32 0, i32 0
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @process_pending_queue(%struct.cpt_vf* %213, %struct.TYPE_18__* %215, i32 %216)
  store i32 1, i32* %7, align 4
  br label %190

218:                                              ; preds = %206
  %219 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %220 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %219, i32 0, i32 0
  %221 = call i32 (i32*, i8*, ...) @dev_err(i32* %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %222 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %223 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %222, i32 0, i32 0
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %226 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %229 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32*, i8*, ...) @dev_err(i32* %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %224, i32 %227, i32 %230)
  %232 = load i32, i32* @EFAULT, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %6, align 4
  br label %318

234:                                              ; preds = %190
  %235 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %236 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %235, i32 0, i32 4
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %239 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %238, i32 0, i32 4
  store i8* %237, i8** %239, align 8
  %240 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %241 = bitcast %struct.cpt_info_buffer* %240 to i8*
  %242 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %243 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  %244 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %245 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %248 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  %249 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %250 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %253 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %255 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %256 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %255, i32 0, i32 3
  store %struct.pending_entry* %254, %struct.pending_entry** %256, align 8
  %257 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %258 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  %259 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %260 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %259, i32 0, i32 1
  %261 = call i32 @atomic64_inc(i32* %260)
  %262 = load %struct.pending_entry*, %struct.pending_entry** %13, align 8
  %263 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %264 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %263, i32 0, i32 3
  store %struct.pending_entry* %262, %struct.pending_entry** %264, align 8
  %265 = load i32, i32* @jiffies, align 4
  %266 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %267 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 8
  %268 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %269 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %270 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %269, i32 0, i32 1
  store %struct.cpt_request_info* %268, %struct.cpt_request_info** %270, align 8
  %271 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  store i32 1, i32* %272, align 8
  %273 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %274 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 8
  store i64 %275, i64* %277, align 8
  %278 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 7
  store i64 0, i64* %279, align 8
  %280 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 6
  store i64 0, i64* %281, align 8
  %282 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 5
  store i64 0, i64* %283, align 8
  %284 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 4
  store i64 %286, i64* %288, align 8
  %289 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 3
  store i32 %290, i32* %292, align 4
  %293 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  %297 = getelementptr inbounds %struct.cpt_vq_command, %struct.cpt_vq_command* %17, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = bitcast %union.cpt_inst_s* %18 to %struct.TYPE_10__*
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  store i64 %299, i64* %301, align 8
  %302 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %303 = load i32, i32* %8, align 4
  %304 = call i32 @send_cpt_command(%struct.cpt_vf* %302, %union.cpt_inst_s* %18, i32 %303)
  store i32 %304, i32* %6, align 4
  %305 = load %struct.pending_queue*, %struct.pending_queue** %14, align 8
  %306 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %305, i32 0, i32 0
  %307 = call i32 @spin_unlock_bh(i32* %306)
  %308 = load i32, i32* %6, align 4
  %309 = call i64 @unlikely(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %234
  %312 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %313 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %312, i32 0, i32 0
  %314 = call i32 (i32*, i8*, ...) @dev_err(i32* %313, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %315 = load i32, i32* @EFAULT, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %6, align 4
  br label %318

317:                                              ; preds = %234
  store i32 0, i32* %3, align 4
  br label %326

318:                                              ; preds = %311, %218, %110, %79, %57
  %319 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %320 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %319, i32 0, i32 0
  %321 = call i32 @dev_dbg(i32* %320, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %322 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %323 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %9, align 8
  %324 = call i32 @do_request_cleanup(%struct.cpt_vf* %322, %struct.cpt_info_buffer* %323)
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* %3, align 4
  br label %326

326:                                              ; preds = %318, %317, %31
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @setup_sgio_list(%struct.cpt_vf*, %struct.cpt_info_buffer*, %struct.cpt_request_info*) #1

declare dso_local i64 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @cpu_to_be64(i64) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @process_pending_queue(%struct.cpt_vf*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.pending_entry* @get_free_pending_entry(%struct.pending_queue*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @send_cpt_command(%struct.cpt_vf*, %union.cpt_inst_s*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @do_request_cleanup(%struct.cpt_vf*, %struct.cpt_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
