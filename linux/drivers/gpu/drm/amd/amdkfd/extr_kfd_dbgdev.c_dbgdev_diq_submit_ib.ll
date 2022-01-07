; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_diq_submit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_diq_submit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgdev = type { i32, %struct.kernel_queue* }
%struct.kernel_queue = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.kernel_queue*, i64, i32**)*, i32 (%struct.kernel_queue*)*, i32 (%struct.kernel_queue*)* }
%struct.pm4__release_mem = type { i32, %struct.TYPE_20__, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i8*, i32 }
%struct.pm4__indirect_buffer_pasid = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i32 }
%struct.kfd_mem_obj = type { i32, i64 }
%union.ULARGE_INTEGER = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"acquire_packet_buffer failed\0A\00", align 1
@IT_INDIRECT_BUFFER_PASID = common dso_local global i32 0, align 4
@PM4_TYPE_3 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate GART memory\0A\00", align 1
@QUEUESTATE__ACTIVE_COMPLETION_PENDING = common dso_local global i32 0, align 4
@IT_RELEASE_MEM = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4
@event_index___release_mem__end_of_pipe = common dso_local global i32 0, align 4
@cache_policy___release_mem__lru = common dso_local global i32 0, align 4
@data_sel___release_mem__send_64_bit_data = common dso_local global i32 0, align 4
@int_sel___release_mem__send_data_after_write_confirm = common dso_local global i32 0, align 4
@dst_sel___release_mem__memory_controller = common dso_local global i32 0, align 4
@QUEUESTATE__ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dbgdev*, i32, i32, i32*, i64)* @dbgdev_diq_submit_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgdev_diq_submit_ib(%struct.kfd_dbgdev* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kfd_dbgdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pm4__release_mem*, align 8
  %13 = alloca %struct.pm4__indirect_buffer_pasid*, align 8
  %14 = alloca %struct.kfd_mem_obj*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %union.ULARGE_INTEGER*, align 8
  %17 = alloca %union.ULARGE_INTEGER, align 4
  %18 = alloca %struct.kernel_queue*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.kfd_dbgdev* %0, %struct.kfd_dbgdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %192

31:                                               ; preds = %5
  %32 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %7, align 8
  %33 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %32, i32 0, i32 1
  %34 = load %struct.kernel_queue*, %struct.kernel_queue** %33, align 8
  store %struct.kernel_queue* %34, %struct.kernel_queue** %18, align 8
  store i64 120, i64* %15, align 8
  %35 = load %struct.kernel_queue*, %struct.kernel_queue** %18, align 8
  %36 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32 (%struct.kernel_queue*, i64, i32**)*, i32 (%struct.kernel_queue*, i64, i32**)** %37, align 8
  %39 = load %struct.kernel_queue*, %struct.kernel_queue** %18, align 8
  %40 = load i64, i64* %15, align 8
  %41 = udiv i64 %40, 4
  %42 = call i32 %38(%struct.kernel_queue* %39, i64 %41, i32** %20)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %21, align 4
  store i32 %47, i32* %6, align 4
  br label %192

48:                                               ; preds = %31
  %49 = load i32*, i32** %20, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @memset(i32* %49, i32 0, i64 %50)
  %52 = load i32*, i32** %20, align 8
  %53 = bitcast i32* %52 to %struct.pm4__indirect_buffer_pasid*
  store %struct.pm4__indirect_buffer_pasid* %53, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %54 = load %struct.pm4__indirect_buffer_pasid*, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %55 = getelementptr inbounds %struct.pm4__indirect_buffer_pasid, %struct.pm4__indirect_buffer_pasid* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i32 3, i32* %56, align 8
  %57 = load i32, i32* @IT_INDIRECT_BUFFER_PASID, align 4
  %58 = load %struct.pm4__indirect_buffer_pasid*, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %59 = getelementptr inbounds %struct.pm4__indirect_buffer_pasid, %struct.pm4__indirect_buffer_pasid* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load i8*, i8** @PM4_TYPE_3, align 8
  %62 = load %struct.pm4__indirect_buffer_pasid*, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %63 = getelementptr inbounds %struct.pm4__indirect_buffer_pasid, %struct.pm4__indirect_buffer_pasid* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = bitcast i32* %9 to %union.ULARGE_INTEGER*
  store %union.ULARGE_INTEGER* %65, %union.ULARGE_INTEGER** %16, align 8
  %66 = load %union.ULARGE_INTEGER*, %union.ULARGE_INTEGER** %16, align 8
  %67 = bitcast %union.ULARGE_INTEGER* %66 to %struct.TYPE_19__*
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 2
  %71 = load %struct.pm4__indirect_buffer_pasid*, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %72 = getelementptr inbounds %struct.pm4__indirect_buffer_pasid, %struct.pm4__indirect_buffer_pasid* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %union.ULARGE_INTEGER*, %union.ULARGE_INTEGER** %16, align 8
  %75 = bitcast %union.ULARGE_INTEGER* %74 to %struct.TYPE_19__*
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pm4__indirect_buffer_pasid*, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %79 = getelementptr inbounds %struct.pm4__indirect_buffer_pasid, %struct.pm4__indirect_buffer_pasid* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = udiv i64 %81, 4
  %83 = and i64 %82, 1048575
  %84 = or i64 -2139095040, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.pm4__indirect_buffer_pasid*, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %87 = getelementptr inbounds %struct.pm4__indirect_buffer_pasid, %struct.pm4__indirect_buffer_pasid* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.pm4__indirect_buffer_pasid*, %struct.pm4__indirect_buffer_pasid** %13, align 8
  %90 = getelementptr inbounds %struct.pm4__indirect_buffer_pasid, %struct.pm4__indirect_buffer_pasid* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load i32*, i32** %20, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 10
  %94 = bitcast i32* %93 to %struct.pm4__release_mem*
  store %struct.pm4__release_mem* %94, %struct.pm4__release_mem** %12, align 8
  %95 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %7, align 8
  %96 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @kfd_gtt_sa_allocate(i32 %97, i32 4, %struct.kfd_mem_obj** %14)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %48
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.kernel_queue*, %struct.kernel_queue** %18, align 8
  %104 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32 (%struct.kernel_queue*)*, i32 (%struct.kernel_queue*)** %105, align 8
  %107 = load %struct.kernel_queue*, %struct.kernel_queue** %18, align 8
  %108 = call i32 %106(%struct.kernel_queue* %107)
  %109 = load i32, i32* %21, align 4
  store i32 %109, i32* %6, align 4
  br label %192

110:                                              ; preds = %48
  %111 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %14, align 8
  %112 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %19, align 8
  %115 = load i32, i32* @QUEUESTATE__ACTIVE_COMPLETION_PENDING, align 4
  %116 = load i32*, i32** %19, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @IT_RELEASE_MEM, align 4
  %118 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %119 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  %121 = load i8*, i8** @PM4_TYPE_3, align 8
  %122 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %123 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %126 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  store i32 18, i32* %127, align 8
  %128 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %129 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %130 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 4
  store i32 %128, i32* %131, align 8
  %132 = load i32, i32* @event_index___release_mem__end_of_pipe, align 4
  %133 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %134 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* @cache_policy___release_mem__lru, align 4
  %137 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %138 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %141 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %144 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %14, align 8
  %147 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = bitcast %union.ULARGE_INTEGER* %17 to i32*
  store i32 %148, i32* %149, align 4
  %150 = bitcast %union.ULARGE_INTEGER* %17 to %struct.TYPE_19__*
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 2
  %154 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %155 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = bitcast %union.ULARGE_INTEGER* %17 to %struct.TYPE_19__*
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %161 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @data_sel___release_mem__send_64_bit_data, align 4
  %163 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %164 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @int_sel___release_mem__send_data_after_write_confirm, align 4
  %167 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %168 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* @dst_sel___release_mem__memory_controller, align 4
  %171 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %172 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* @QUEUESTATE__ACTIVE, align 4
  %175 = load %struct.pm4__release_mem*, %struct.pm4__release_mem** %12, align 8
  %176 = getelementptr inbounds %struct.pm4__release_mem, %struct.pm4__release_mem* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.kernel_queue*, %struct.kernel_queue** %18, align 8
  %178 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i32 (%struct.kernel_queue*)*, i32 (%struct.kernel_queue*)** %179, align 8
  %181 = load %struct.kernel_queue*, %struct.kernel_queue** %18, align 8
  %182 = call i32 %180(%struct.kernel_queue* %181)
  %183 = load i32*, i32** %19, align 8
  %184 = load i32, i32* @QUEUESTATE__ACTIVE, align 4
  %185 = call i32 @amdkfd_fence_wait_timeout(i32* %183, i32 %184, i32 1500)
  store i32 %185, i32* %21, align 4
  %186 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %7, align 8
  %187 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %14, align 8
  %190 = call i32 @kfd_gtt_sa_free(i32 %188, %struct.kfd_mem_obj* %189)
  %191 = load i32, i32* %21, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %110, %101, %45, %28
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @kfd_gtt_sa_allocate(i32, i32, %struct.kfd_mem_obj**) #1

declare dso_local i32 @amdkfd_fence_wait_timeout(i32*, i32, i32) #1

declare dso_local i32 @kfd_gtt_sa_free(i32, %struct.kfd_mem_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
