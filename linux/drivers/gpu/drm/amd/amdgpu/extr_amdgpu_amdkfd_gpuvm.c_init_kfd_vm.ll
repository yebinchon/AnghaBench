; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_init_kfd_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_init_kfd_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.amdgpu_vm = type { %struct.TYPE_19__*, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdkfd_process_info = type { i32, i32, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.dma_fence }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to create eviction fence\0A\00", align 1
@PIDTYPE_PID = common dso_local global i32 0, align 4
@amdgpu_amdkfd_restore_userptr_worker = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"validate_pt_pd_bos() failed\0A\00", align 1
@AMDGPU_FENCE_OWNER_KFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm*, i8**, %struct.dma_fence**)* @init_kfd_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_kfd_vm(%struct.amdgpu_vm* %0, i8** %1, %struct.dma_fence** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_vm*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.dma_fence**, align 8
  %8 = alloca %struct.amdkfd_process_info*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_vm* %0, %struct.amdgpu_vm** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.dma_fence** %2, %struct.dma_fence*** %7, align 8
  store %struct.amdkfd_process_info* null, %struct.amdkfd_process_info** %8, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %76, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.amdkfd_process_info* @kzalloc(i32 40, i32 %14)
  store %struct.amdkfd_process_info* %15, %struct.amdkfd_process_info** %8, align 8
  %16 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %17 = icmp ne %struct.amdkfd_process_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %202

21:                                               ; preds = %13
  %22 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %23 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %22, i32 0, i32 0
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %26 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %25, i32 0, i32 8
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %29 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %28, i32 0, i32 7
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %32 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %31, i32 0, i32 6
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %35 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %34, i32 0, i32 5
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = call i32 @dma_fence_context_alloc(i32 1)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_13__* @amdgpu_amdkfd_fence_create(i32 %37, i32 %40)
  %42 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %43 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %42, i32 0, i32 2
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %43, align 8
  %44 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %45 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %21
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %194

52:                                               ; preds = %21
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PIDTYPE_PID, align 4
  %57 = call i32 @get_task_pid(i32 %55, i32 %56)
  %58 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %59 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %61 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %60, i32 0, i32 4
  %62 = call i32 @atomic_set(i32* %61, i32 0)
  %63 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %64 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %63, i32 0, i32 3
  %65 = load i32, i32* @amdgpu_amdkfd_restore_userptr_worker, align 4
  %66 = call i32 @INIT_DELAYED_WORK(i32* %64, i32 %65)
  %67 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %68 = bitcast %struct.amdkfd_process_info* %67 to i8*
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  %70 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %71 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %73)
  %75 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  store %struct.dma_fence* %74, %struct.dma_fence** %75, align 8
  br label %76

76:                                               ; preds = %52, %3
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to %struct.TYPE_19__*
  %80 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %81 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %80, i32 0, i32 0
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %81, align 8
  %82 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %83 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = call i32 @amdgpu_bo_reserve(%struct.TYPE_21__* %86, i32 1)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %174

91:                                               ; preds = %76
  %92 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %93 = call i32 @vm_validate_pt_pd_bos(%struct.amdgpu_vm* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %167

98:                                               ; preds = %91
  %99 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %100 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = load i32, i32* @AMDGPU_FENCE_OWNER_KFD, align 4
  %105 = call i32 @amdgpu_bo_sync_wait(%struct.TYPE_21__* %103, i32 %104, i32 0)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %166

109:                                              ; preds = %98
  %110 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %111 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dma_resv_reserve_shared(i32 %118, i32 1)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %165

123:                                              ; preds = %109
  %124 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %125 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %130 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %129, i32 0, i32 0
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = call i32 @amdgpu_bo_fence(%struct.TYPE_21__* %128, i32* %134, i32 1)
  %136 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %137 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_21__* %140)
  %142 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %143 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %142, i32 0, i32 0
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = call i32 @mutex_lock(i32* %145)
  %147 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %148 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %147, i32 0, i32 2
  %149 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %150 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %149, i32 0, i32 0
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  %153 = call i32 @list_add_tail(i32* %148, i32* %152)
  %154 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %155 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %154, i32 0, i32 0
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %161 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %160, i32 0, i32 0
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  store i32 0, i32* %4, align 4
  br label %202

165:                                              ; preds = %122
  br label %166

166:                                              ; preds = %165, %108
  br label %167

167:                                              ; preds = %166, %96
  %168 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %169 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_21__* %172)
  br label %174

174:                                              ; preds = %167, %90
  %175 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %176 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %175, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %176, align 8
  %177 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %178 = icmp ne %struct.amdkfd_process_info* %177, null
  br i1 %178, label %179, label %200

179:                                              ; preds = %174
  %180 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %181 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %180, i32 0, i32 2
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = call i32 @dma_fence_put(%struct.dma_fence* %183)
  %185 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  %186 = load %struct.dma_fence*, %struct.dma_fence** %185, align 8
  %187 = call i32 @dma_fence_put(%struct.dma_fence* %186)
  %188 = load %struct.dma_fence**, %struct.dma_fence*** %7, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %188, align 8
  %189 = load i8**, i8*** %6, align 8
  store i8* null, i8** %189, align 8
  %190 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %191 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @put_pid(i32 %192)
  br label %194

194:                                              ; preds = %179, %48
  %195 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %196 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %195, i32 0, i32 0
  %197 = call i32 @mutex_destroy(i32* %196)
  %198 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %199 = call i32 @kfree(%struct.amdkfd_process_info* %198)
  br label %200

200:                                              ; preds = %194, %174
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %123, %18
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.amdkfd_process_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_13__* @amdgpu_amdkfd_fence_create(i32, i32) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @get_task_pid(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @vm_validate_pt_pd_bos(%struct.amdgpu_vm*) #1

declare dso_local i32 @amdgpu_bo_sync_wait(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @dma_resv_reserve_shared(i32, i32) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.TYPE_21__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.amdkfd_process_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
