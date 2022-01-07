; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c___err_print_to_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c___err_print_to_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.intel_csr }
%struct.intel_csr = type { i32, i32* }
%struct.i915_gpu_state = type { i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i64, i64, %struct.drm_i915_error_engine*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64* }
%struct.TYPE_14__ = type { i32 }
%struct.drm_i915_error_engine = type { i32, i32, %struct.drm_i915_error_object*, %struct.TYPE_11__*, %struct.drm_i915_error_object*, %struct.drm_i915_error_object*, %struct.drm_i915_error_object*, %struct.drm_i915_error_object*, %struct.drm_i915_error_object*, i32*, %struct.drm_i915_error_object**, %struct.TYPE_10__, %struct.drm_i915_error_object*, %struct.drm_i915_error_engine* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.drm_i915_error_object = type { i32 }
%struct.timespec64 = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Kernel: %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Driver: %s\0A\00", align 1
@DRIVER_DATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Time: %lld s %ld us\0A\00", align 1
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Boottime: %lld s %ld us\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Uptime: %lld s %ld us\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Epoch: %lu jiffies (%u HZ)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"Capture: %lu jiffies; %d ms ago, %d ms after epoch\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Active process (on ring %s): %s [%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Reset count: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Suspend count: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Platform: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Subplatform: 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"IOMMU enabled?: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"DMC loaded: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"DMC fw version: %d.%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GT awake: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"RPM wakelock: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"PM suspended: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"EIR: 0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"IER: 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"GTIER[%d]: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"PGTBL_ER: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"FORCEWAKE: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"DERRMR: 0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"CCID: 0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"  fence[%d] = %08llx\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"ERROR: 0x%08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"DONE_REG: 0x%08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"FAULT_TLB_DATA: 0x%08x 0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"ERR_INT: 0x%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c" (submitted by %s [%d])\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c" --- gtt_offset = 0x%08x %08x\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"%s --- %d requests\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"ringbuffer\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"HW Status\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"HW context\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"WA context\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"WA batchbuffer\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"NULL context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, %struct.i915_gpu_state*)* @__err_print_to_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__err_print_to_sgl(%struct.drm_i915_error_state_buf* %0, %struct.i915_gpu_state* %1) #0 {
  %3 = alloca %struct.drm_i915_error_state_buf*, align 8
  %4 = alloca %struct.i915_gpu_state*, align 8
  %5 = alloca %struct.drm_i915_error_engine*, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timespec64, align 8
  %11 = alloca %struct.timespec64, align 8
  %12 = alloca %struct.intel_csr*, align 8
  %13 = alloca %struct.drm_i915_error_object*, align 8
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %3, align 8
  store %struct.i915_gpu_state* %1, %struct.i915_gpu_state** %4, align 8
  %14 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %15 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %14, i32 0, i32 34
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %21 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %22 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %21, i32 0, i32 34
  %23 = load i64*, i64** %22, align 8
  %24 = ptrtoint i64* %23 to i32
  %25 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %28 = call %struct.TYPE_12__* (...) @init_utsname()
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_12__* (...) @init_utsname()
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %36 = load i32, i32* @DRIVER_DATE, align 4
  %37 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %39 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %38, i32 0, i32 33
  %40 = load i32, i32* %39, align 8
  %41 = call { i32, i64 } @ktime_to_timespec64(i32 %40)
  %42 = bitcast %struct.timespec64* %9 to { i32, i64 }*
  %43 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 0
  %44 = extractvalue { i32, i64 } %41, 0
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 1
  %46 = extractvalue { i32, i64 } %41, 1
  store i64 %46, i64* %45, align 8
  %47 = bitcast %struct.timespec64* %6 to i8*
  %48 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %50 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NSEC_PER_USEC, align 4
  %56 = sdiv i32 %54, %55
  %57 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %59 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %58, i32 0, i32 32
  %60 = load i32, i32* %59, align 4
  %61 = call { i32, i64 } @ktime_to_timespec64(i32 %60)
  %62 = bitcast %struct.timespec64* %10 to { i32, i64 }*
  %63 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %62, i32 0, i32 0
  %64 = extractvalue { i32, i64 } %61, 0
  store i32 %64, i32* %63, align 8
  %65 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %62, i32 0, i32 1
  %66 = extractvalue { i32, i64 } %61, 1
  store i64 %66, i64* %65, align 8
  %67 = bitcast %struct.timespec64* %6 to i8*
  %68 = bitcast %struct.timespec64* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %70 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NSEC_PER_USEC, align 4
  %76 = sdiv i32 %74, %75
  %77 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %76)
  %78 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %79 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %78, i32 0, i32 31
  %80 = load i32, i32* %79, align 8
  %81 = call { i32, i64 } @ktime_to_timespec64(i32 %80)
  %82 = bitcast %struct.timespec64* %11 to { i32, i64 }*
  %83 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %82, i32 0, i32 0
  %84 = extractvalue { i32, i64 } %81, 0
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %82, i32 0, i32 1
  %86 = extractvalue { i32, i64 } %81, 1
  store i64 %86, i64* %85, align 8
  %87 = bitcast %struct.timespec64* %6 to i8*
  %88 = bitcast %struct.timespec64* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  %89 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %90 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NSEC_PER_USEC, align 4
  %96 = sdiv i32 %94, %95
  %97 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %96)
  %98 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %99 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %100 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @HZ, align 4
  %103 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %105 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %106 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %105, i32 0, i32 30
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @jiffies, align 4
  %109 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %110 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %109, i32 0, i32 30
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = call i32 @jiffies_to_msecs(i32 %112)
  %114 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %115 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %114, i32 0, i32 30
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %118 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  %121 = call i32 @jiffies_to_msecs(i32 %120)
  %122 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32 %113, i32 %121)
  %123 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %124 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %123, i32 0, i32 14
  %125 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %124, align 8
  store %struct.drm_i915_error_engine* %125, %struct.drm_i915_error_engine** %5, align 8
  br label %126

126:                                              ; preds = %145, %26
  %127 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %128 = icmp ne %struct.drm_i915_error_engine* %127, null
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %131 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %132 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %131, i32 0, i32 3
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %137 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %141 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %140, i32 0, i32 11
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %135, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %129
  %146 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %147 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %146, i32 0, i32 13
  %148 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %147, align 8
  store %struct.drm_i915_error_engine* %148, %struct.drm_i915_error_engine** %5, align 8
  br label %126

149:                                              ; preds = %126
  %150 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %151 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %152 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %151, i32 0, i32 29
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %153)
  %155 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %156 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %157 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %156, i32 0, i32 28
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %158)
  %160 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %161 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %162 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @intel_platform_name(i32 %164)
  %166 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %165)
  %167 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %168 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %169 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %168, i32 0, i32 10
  %170 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %171 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %170, i32 0, i32 11
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @intel_subplatform(i32* %169, i32 %173)
  %175 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %174)
  %176 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %177 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %178 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %177, i32 0, i32 0
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = call i32 @err_print_pciid(%struct.drm_i915_error_state_buf* %176, %struct.TYPE_13__* %179)
  %181 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %182 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %183 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %182, i32 0, i32 27
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %181, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %184)
  %186 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %187 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %186, i32 0, i32 0
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = call i64 @HAS_CSR(%struct.TYPE_13__* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %214

191:                                              ; preds = %149
  %192 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %193 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  store %struct.intel_csr* %195, %struct.intel_csr** %12, align 8
  %196 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %197 = load %struct.intel_csr*, %struct.intel_csr** %12, align 8
  %198 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  %201 = zext i1 %200 to i32
  %202 = call i32 @yesno(i32 %201)
  %203 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %202)
  %204 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %205 = load %struct.intel_csr*, %struct.intel_csr** %12, align 8
  %206 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @CSR_VERSION_MAJOR(i32 %207)
  %209 = load %struct.intel_csr*, %struct.intel_csr** %12, align 8
  %210 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @CSR_VERSION_MINOR(i32 %211)
  %213 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %208, i32 %212)
  br label %214

214:                                              ; preds = %191, %149
  %215 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %216 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %217 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %216, i32 0, i32 26
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @yesno(i32 %218)
  %220 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %219)
  %221 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %222 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %223 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %222, i32 0, i32 25
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @yesno(i32 %224)
  %226 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %225)
  %227 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %228 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %229 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %228, i32 0, i32 24
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @yesno(i32 %230)
  %232 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %231)
  %233 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %234 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %235 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %234, i32 0, i32 23
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %233, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %236)
  %238 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %239 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %240 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %239, i32 0, i32 22
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %238, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %241)
  store i32 0, i32* %7, align 4
  br label %243

243:                                              ; preds = %260, %214
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %246 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %243
  %250 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %253 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %251, i32 %258)
  br label %260

260:                                              ; preds = %249
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  br label %243

263:                                              ; preds = %243
  %264 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %265 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %266 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %265, i32 0, i32 21
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %264, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %267)
  %269 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %270 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %271 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %270, i32 0, i32 20
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %269, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %272)
  %274 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %275 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %276 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %275, i32 0, i32 19
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %274, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 %277)
  %279 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %280 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %281 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %280, i32 0, i32 18
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %282)
  store i32 0, i32* %7, align 4
  br label %284

284:                                              ; preds = %301, %263
  %285 = load i32, i32* %7, align 4
  %286 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %287 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %284
  %291 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %292 = load i32, i32* %7, align 4
  %293 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %294 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %293, i32 0, i32 4
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %291, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i32 %292, i32 %299)
  br label %301

301:                                              ; preds = %290
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %7, align 4
  br label %284

304:                                              ; preds = %284
  %305 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %306 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %305, i32 0, i32 0
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = call i64 @IS_GEN_RANGE(%struct.TYPE_13__* %307, i32 6, i32 11)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %304
  %311 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %312 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %313 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %312, i32 0, i32 17
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %311, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 %314)
  %316 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %317 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %318 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %317, i32 0, i32 16
  %319 = load i32, i32* %318, align 4
  %320 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %316, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 %319)
  br label %321

321:                                              ; preds = %310, %304
  %322 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %323 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %322, i32 0, i32 0
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %323, align 8
  %325 = call i32 @INTEL_GEN(%struct.TYPE_13__* %324)
  %326 = icmp sge i32 %325, 8
  br i1 %326, label %327, label %336

327:                                              ; preds = %321
  %328 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %329 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %330 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %333 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 4
  %335 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %328, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 %331, i32 %334)
  br label %336

336:                                              ; preds = %327, %321
  %337 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %338 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %337, i32 0, i32 0
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %338, align 8
  %340 = call i64 @IS_GEN(%struct.TYPE_13__* %339, i32 7)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %336
  %343 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %344 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %345 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %344, i32 0, i32 15
  %346 = load i32, i32* %345, align 8
  %347 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %343, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %342, %336
  %349 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %350 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %349, i32 0, i32 14
  %351 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %350, align 8
  store %struct.drm_i915_error_engine* %351, %struct.drm_i915_error_engine** %5, align 8
  br label %352

352:                                              ; preds = %362, %348
  %353 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %354 = icmp ne %struct.drm_i915_error_engine* %353, null
  br i1 %354, label %355, label %366

355:                                              ; preds = %352
  %356 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %357 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %358 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %359 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @error_print_engine(%struct.drm_i915_error_state_buf* %356, %struct.drm_i915_error_engine* %357, i32 %360)
  br label %362

362:                                              ; preds = %355
  %363 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %364 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %363, i32 0, i32 13
  %365 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %364, align 8
  store %struct.drm_i915_error_engine* %365, %struct.drm_i915_error_engine** %5, align 8
  br label %352

366:                                              ; preds = %352
  %367 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %368 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %367, i32 0, i32 14
  %369 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %368, align 8
  store %struct.drm_i915_error_engine* %369, %struct.drm_i915_error_engine** %5, align 8
  br label %370

370:                                              ; preds = %530, %366
  %371 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %372 = icmp ne %struct.drm_i915_error_engine* %371, null
  br i1 %372, label %373, label %534

373:                                              ; preds = %370
  %374 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %375 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %374, i32 0, i32 12
  %376 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %375, align 8
  store %struct.drm_i915_error_object* %376, %struct.drm_i915_error_object** %13, align 8
  %377 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %13, align 8
  %378 = icmp ne %struct.drm_i915_error_object* %377, null
  br i1 %378, label %379, label %420

379:                                              ; preds = %373
  %380 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %381 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %382 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %381, i32 0, i32 3
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @err_puts(%struct.drm_i915_error_state_buf* %380, i32 %385)
  %387 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %388 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %387, i32 0, i32 11
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %403

392:                                              ; preds = %379
  %393 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %394 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %395 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %394, i32 0, i32 11
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %399 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %398, i32 0, i32 11
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %393, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 %397, i32 %401)
  br label %403

403:                                              ; preds = %392, %379
  %404 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %405 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %13, align 8
  %406 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @upper_32_bits(i32 %407)
  %409 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %13, align 8
  %410 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @lower_32_bits(i32 %411)
  %413 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %404, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 %408, i32 %412)
  %414 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %415 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %416 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %415, i32 0, i32 3
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %416, align 8
  %418 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %13, align 8
  %419 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %414, %struct.TYPE_11__* %417, i8* null, %struct.drm_i915_error_object* %418)
  br label %420

420:                                              ; preds = %403, %373
  store i32 0, i32* %8, align 4
  br label %421

421:                                              ; preds = %440, %420
  %422 = load i32, i32* %8, align 4
  %423 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %424 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp slt i32 %422, %425
  br i1 %426, label %427, label %443

427:                                              ; preds = %421
  %428 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %429 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %430 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %429, i32 0, i32 3
  %431 = load %struct.TYPE_11__*, %struct.TYPE_11__** %430, align 8
  %432 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %433 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %432, i32 0, i32 10
  %434 = load %struct.drm_i915_error_object**, %struct.drm_i915_error_object*** %433, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %434, i64 %436
  %438 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %437, align 8
  %439 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %428, %struct.TYPE_11__* %431, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct.drm_i915_error_object* %438)
  br label %440

440:                                              ; preds = %427
  %441 = load i32, i32* %8, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %8, align 4
  br label %421

443:                                              ; preds = %421
  %444 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %445 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %481

448:                                              ; preds = %443
  %449 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %450 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %451 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %450, i32 0, i32 3
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %456 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %449, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i32 %454, i32 %457)
  store i32 0, i32* %8, align 4
  br label %459

459:                                              ; preds = %477, %448
  %460 = load i32, i32* %8, align 4
  %461 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %462 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = icmp slt i32 %460, %463
  br i1 %464, label %465, label %480

465:                                              ; preds = %459
  %466 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %467 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %468 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %467, i32 0, i32 9
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %474 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @error_print_request(%struct.drm_i915_error_state_buf* %466, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32* %472, i32 %475)
  br label %477

477:                                              ; preds = %465
  %478 = load i32, i32* %8, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %8, align 4
  br label %459

480:                                              ; preds = %459
  br label %481

481:                                              ; preds = %480, %443
  %482 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %483 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %484 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %483, i32 0, i32 3
  %485 = load %struct.TYPE_11__*, %struct.TYPE_11__** %484, align 8
  %486 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %487 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %486, i32 0, i32 8
  %488 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %487, align 8
  %489 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %482, %struct.TYPE_11__* %485, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), %struct.drm_i915_error_object* %488)
  %490 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %491 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %492 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %491, i32 0, i32 3
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %492, align 8
  %494 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %495 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %494, i32 0, i32 7
  %496 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %495, align 8
  %497 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %490, %struct.TYPE_11__* %493, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), %struct.drm_i915_error_object* %496)
  %498 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %499 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %500 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %499, i32 0, i32 3
  %501 = load %struct.TYPE_11__*, %struct.TYPE_11__** %500, align 8
  %502 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %503 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %502, i32 0, i32 6
  %504 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %503, align 8
  %505 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %498, %struct.TYPE_11__* %501, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), %struct.drm_i915_error_object* %504)
  %506 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %507 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %508 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %507, i32 0, i32 3
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** %508, align 8
  %510 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %511 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %510, i32 0, i32 5
  %512 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %511, align 8
  %513 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %506, %struct.TYPE_11__* %509, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), %struct.drm_i915_error_object* %512)
  %514 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %515 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %516 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %515, i32 0, i32 3
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %516, align 8
  %518 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %519 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %518, i32 0, i32 4
  %520 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %519, align 8
  %521 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %514, %struct.TYPE_11__* %517, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), %struct.drm_i915_error_object* %520)
  %522 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %523 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %524 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %523, i32 0, i32 3
  %525 = load %struct.TYPE_11__*, %struct.TYPE_11__** %524, align 8
  %526 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %527 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %526, i32 0, i32 2
  %528 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %527, align 8
  %529 = call i32 @print_error_obj(%struct.drm_i915_error_state_buf* %522, %struct.TYPE_11__* %525, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), %struct.drm_i915_error_object* %528)
  br label %530

530:                                              ; preds = %481
  %531 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %532 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %531, i32 0, i32 13
  %533 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %532, align 8
  store %struct.drm_i915_error_engine* %533, %struct.drm_i915_error_engine** %5, align 8
  br label %370

534:                                              ; preds = %370
  %535 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %536 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %535, i32 0, i32 13
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %534
  %540 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %541 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %542 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %541, i32 0, i32 13
  %543 = load i64, i64* %542, align 8
  %544 = call i32 @intel_overlay_print_error_state(%struct.drm_i915_error_state_buf* %540, i64 %543)
  br label %545

545:                                              ; preds = %539, %534
  %546 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %547 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %546, i32 0, i32 12
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %545
  %551 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %552 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %553 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %552, i32 0, i32 12
  %554 = load i64, i64* %553, align 8
  %555 = call i32 @intel_display_print_error_state(%struct.drm_i915_error_state_buf* %551, i64 %554)
  br label %556

556:                                              ; preds = %550, %545
  %557 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %558 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %559 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %558, i32 0, i32 11
  %560 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %561 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %560, i32 0, i32 10
  %562 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %563 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %562, i32 0, i32 9
  %564 = call i32 @err_print_capabilities(%struct.drm_i915_error_state_buf* %557, %struct.TYPE_14__* %559, i32* %561, i32* %563)
  %565 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %566 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %567 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %566, i32 0, i32 8
  %568 = call i32 @err_print_params(%struct.drm_i915_error_state_buf* %565, i32* %567)
  %569 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %570 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %571 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %570, i32 0, i32 7
  %572 = call i32 @err_print_uc(%struct.drm_i915_error_state_buf* %569, i32* %571)
  ret void
}

declare dso_local i32 @err_printf(%struct.drm_i915_error_state_buf*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_12__* @init_utsname(...) #1

declare dso_local { i32, i64 } @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @intel_platform_name(i32) #1

declare dso_local i32 @intel_subplatform(i32*, i32) #1

declare dso_local i32 @err_print_pciid(%struct.drm_i915_error_state_buf*, %struct.TYPE_13__*) #1

declare dso_local i64 @HAS_CSR(%struct.TYPE_13__*) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @CSR_VERSION_MAJOR(i32) #1

declare dso_local i32 @CSR_VERSION_MINOR(i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_GEN(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @error_print_engine(%struct.drm_i915_error_state_buf*, %struct.drm_i915_error_engine*, i32) #1

declare dso_local i32 @err_puts(%struct.drm_i915_error_state_buf*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @print_error_obj(%struct.drm_i915_error_state_buf*, %struct.TYPE_11__*, i8*, %struct.drm_i915_error_object*) #1

declare dso_local i32 @error_print_request(%struct.drm_i915_error_state_buf*, i8*, i32*, i32) #1

declare dso_local i32 @intel_overlay_print_error_state(%struct.drm_i915_error_state_buf*, i64) #1

declare dso_local i32 @intel_display_print_error_state(%struct.drm_i915_error_state_buf*, i64) #1

declare dso_local i32 @err_print_capabilities(%struct.drm_i915_error_state_buf*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @err_print_params(%struct.drm_i915_error_state_buf*, i32*) #1

declare dso_local i32 @err_print_uc(%struct.drm_i915_error_state_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
