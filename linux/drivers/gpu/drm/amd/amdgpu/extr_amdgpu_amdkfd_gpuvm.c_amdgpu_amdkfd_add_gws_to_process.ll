; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_add_gws_to_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_add_gws_to_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_mem = type { i32, i32, %struct.amdkfd_process_info*, i32, i32 }
%struct.amdkfd_process_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Reserve gws bo failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GWS BO validate failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_add_gws_to_process(i8* %0, i8* %1, %struct.kgd_mem** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kgd_mem**, align 8
  %8 = alloca %struct.amdkfd_process_info*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.kgd_mem** %2, %struct.kgd_mem*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.amdkfd_process_info*
  store %struct.amdkfd_process_info* %12, %struct.amdkfd_process_info** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.amdgpu_bo*
  store %struct.amdgpu_bo* %14, %struct.amdgpu_bo** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %137

23:                                               ; preds = %17
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.kgd_mem* @kzalloc(i32 24, i32 %24)
  %26 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  store %struct.kgd_mem* %25, %struct.kgd_mem** %26, align 8
  %27 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %28 = load %struct.kgd_mem*, %struct.kgd_mem** %27, align 8
  %29 = icmp ne %struct.kgd_mem* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %137

33:                                               ; preds = %23
  %34 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %35 = load %struct.kgd_mem*, %struct.kgd_mem** %34, align 8
  %36 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %35, i32 0, i32 0
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %39 = call i32 @amdgpu_bo_ref(%struct.amdgpu_bo* %38)
  %40 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %41 = load %struct.kgd_mem*, %struct.kgd_mem** %40, align 8
  %42 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @AMDGPU_GEM_DOMAIN_GWS, align 4
  %44 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %45 = load %struct.kgd_mem*, %struct.kgd_mem** %44, align 8
  %46 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %48 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %49 = load %struct.kgd_mem*, %struct.kgd_mem** %48, align 8
  %50 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %49, i32 0, i32 2
  store %struct.amdkfd_process_info* %47, %struct.amdkfd_process_info** %50, align 8
  %51 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %52 = load %struct.kgd_mem*, %struct.kgd_mem** %51, align 8
  %53 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %54 = call i32 @add_kgd_mem_to_kfd_bo_list(%struct.kgd_mem* %52, %struct.amdkfd_process_info* %53, i32 0)
  %55 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %56 = load %struct.kgd_mem*, %struct.kgd_mem** %55, align 8
  %57 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %56, i32 0, i32 1
  %58 = call i32 @amdgpu_sync_create(i32* %57)
  %59 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %60 = load %struct.kgd_mem*, %struct.kgd_mem** %59, align 8
  %61 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %60, i32 0, i32 2
  %62 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %61, align 8
  %63 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %66 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %65, i32 0)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %33
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %112

73:                                               ; preds = %33
  %74 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %75 = load i32, i32* @AMDGPU_GEM_DOMAIN_GWS, align 4
  %76 = call i32 @amdgpu_amdkfd_bo_validate(%struct.amdgpu_bo* %74, i32 %75, i32 1)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %109

82:                                               ; preds = %73
  %83 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %84 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dma_resv_reserve_shared(i32 %87, i32 1)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %108

92:                                               ; preds = %82
  %93 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %94 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %95 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @amdgpu_bo_fence(%struct.amdgpu_bo* %93, i32* %97, i32 1)
  %99 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %100 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %99)
  %101 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %102 = load %struct.kgd_mem*, %struct.kgd_mem** %101, align 8
  %103 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %102, i32 0, i32 2
  %104 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %103, align 8
  %105 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %137

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %79
  %110 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %111 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %110)
  br label %112

112:                                              ; preds = %109, %70
  %113 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %114 = load %struct.kgd_mem*, %struct.kgd_mem** %113, align 8
  %115 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %114, i32 0, i32 2
  %116 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %115, align 8
  %117 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %120 = load %struct.kgd_mem*, %struct.kgd_mem** %119, align 8
  %121 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %120, i32 0, i32 1
  %122 = call i32 @amdgpu_sync_free(i32* %121)
  %123 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %124 = load %struct.kgd_mem*, %struct.kgd_mem** %123, align 8
  %125 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  %126 = call i32 @remove_kgd_mem_from_kfd_bo_list(%struct.kgd_mem* %124, %struct.amdkfd_process_info* %125)
  %127 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %9)
  %128 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %129 = load %struct.kgd_mem*, %struct.kgd_mem** %128, align 8
  %130 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %129, i32 0, i32 0
  %131 = call i32 @mutex_destroy(i32* %130)
  %132 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  %133 = load %struct.kgd_mem*, %struct.kgd_mem** %132, align 8
  %134 = call i32 @kfree(%struct.kgd_mem* %133)
  %135 = load %struct.kgd_mem**, %struct.kgd_mem*** %7, align 8
  store %struct.kgd_mem* null, %struct.kgd_mem** %135, align 8
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %112, %92, %30, %20
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.kgd_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @amdgpu_bo_ref(%struct.amdgpu_bo*) #1

declare dso_local i32 @add_kgd_mem_to_kfd_bo_list(%struct.kgd_mem*, %struct.amdkfd_process_info*, i32) #1

declare dso_local i32 @amdgpu_sync_create(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_bo_validate(%struct.amdgpu_bo*, i32, i32) #1

declare dso_local i32 @dma_resv_reserve_shared(i32, i32) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.amdgpu_bo*, i32*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_sync_free(i32*) #1

declare dso_local i32 @remove_kgd_mem_from_kfd_bo_list(%struct.kgd_mem*, %struct.amdkfd_process_info*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.kgd_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
