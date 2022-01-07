; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.kgd_mem = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.amdgpu_bo* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"userptr can't be mapped to kernel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to reserve bo. ret %d\0A\00", align 1
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to pin bo. ret %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to map bo to kernel. ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_gpuvm_map_gtt_bo_to_kernel(%struct.kgd_dev* %0, %struct.kgd_mem* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kgd_dev*, align 8
  %7 = alloca %struct.kgd_mem*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_bo*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %6, align 8
  store %struct.kgd_mem* %1, %struct.kgd_mem** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.kgd_mem*, %struct.kgd_mem** %7, align 8
  %13 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %12, i32 0, i32 2
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %13, align 8
  store %struct.amdgpu_bo* %14, %struct.amdgpu_bo** %11, align 8
  %15 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %16 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @amdgpu_ttm_tt_get_usermm(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %95

25:                                               ; preds = %4
  %26 = load %struct.kgd_mem*, %struct.kgd_mem** %7, align 8
  %27 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %32 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %31, i32 1)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %88

38:                                               ; preds = %25
  %39 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %40 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %41 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %85

47:                                               ; preds = %38
  %48 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %48, i8** %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %82

56:                                               ; preds = %47
  %57 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %58 = load %struct.kgd_mem*, %struct.kgd_mem** %7, align 8
  %59 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @amdgpu_amdkfd_remove_eviction_fence(%struct.amdgpu_bo* %57, i32 %62)
  %64 = load %struct.kgd_mem*, %struct.kgd_mem** %7, align 8
  %65 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @list_del_init(i32* %66)
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %72 = call i32 @amdgpu_bo_size(%struct.amdgpu_bo* %71)
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %56
  %75 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %76 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %75)
  %77 = load %struct.kgd_mem*, %struct.kgd_mem** %7, align 8
  %78 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  store i32 0, i32* %5, align 4
  br label %95

82:                                               ; preds = %53
  %83 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %84 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %83)
  br label %85

85:                                               ; preds = %82, %44
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %87 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %86)
  br label %88

88:                                               ; preds = %85, %35
  %89 = load %struct.kgd_mem*, %struct.kgd_mem** %7, align 8
  %90 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %88, %74, %21
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i8**) #1

declare dso_local i32 @amdgpu_amdkfd_remove_eviction_fence(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
