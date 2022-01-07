; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.adreno_platform_config* }
%struct.adreno_platform_config = type { i32 }
%struct.adreno_gpu = type { %struct.TYPE_7__*, %struct.msm_gpu, i32, i32, i32, %struct.adreno_gpu_funcs* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.msm_gpu = type { i32 }
%struct.adreno_gpu_funcs = type { i32 }
%struct.msm_gpu_config = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"kgsl_3d0_reg_memory\00", align 1
@SZ_16M = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adreno_gpu_init(%struct.drm_device* %0, %struct.platform_device* %1, %struct.adreno_gpu* %2, %struct.adreno_gpu_funcs* %3, i32 %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.adreno_gpu*, align 8
  %9 = alloca %struct.adreno_gpu_funcs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.adreno_platform_config*, align 8
  %12 = alloca %struct.msm_gpu_config, align 8
  %13 = alloca %struct.msm_gpu*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.platform_device* %1, %struct.platform_device** %7, align 8
  store %struct.adreno_gpu* %2, %struct.adreno_gpu** %8, align 8
  store %struct.adreno_gpu_funcs* %3, %struct.adreno_gpu_funcs** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.adreno_platform_config*, %struct.adreno_platform_config** %16, align 8
  store %struct.adreno_platform_config* %17, %struct.adreno_platform_config** %11, align 8
  %18 = bitcast %struct.msm_gpu_config* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %20 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %19, i32 0, i32 1
  store %struct.msm_gpu* %20, %struct.msm_gpu** %13, align 8
  %21 = load %struct.adreno_gpu_funcs*, %struct.adreno_gpu_funcs** %9, align 8
  %22 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %23 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %22, i32 0, i32 5
  store %struct.adreno_gpu_funcs* %21, %struct.adreno_gpu_funcs** %23, align 8
  %24 = load %struct.adreno_platform_config*, %struct.adreno_platform_config** %11, align 8
  %25 = getelementptr inbounds %struct.adreno_platform_config, %struct.adreno_platform_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_7__* @adreno_info(i32 %26)
  %28 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %29 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %28, i32 0, i32 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %31 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %36 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %38 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %43 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.adreno_platform_config*, %struct.adreno_platform_config** %11, align 8
  %45 = getelementptr inbounds %struct.adreno_platform_config, %struct.adreno_platform_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %48 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @SZ_16M, align 4
  %51 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %12, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %12, i32 0, i32 2
  store i32 -1, i32* %52, align 4
  %53 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %54 = call i64 @adreno_is_a2xx(%struct.adreno_gpu* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %5
  %57 = load i32, i32* @SZ_16M, align 4
  %58 = load i32, i32* @SZ_64K, align 4
  %59 = mul nsw i32 4095, %58
  %60 = add nsw i32 %57, %59
  %61 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %12, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %5
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds %struct.msm_gpu_config, %struct.msm_gpu_config* %12, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.msm_gpu*, %struct.msm_gpu** %13, align 8
  %68 = call i32 @adreno_get_pwrlevels(%struct.TYPE_6__* %66, %struct.msm_gpu* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %72 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_6__* %70, i32 %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_6__* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @pm_runtime_enable(%struct.TYPE_6__* %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %85 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %86 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %85, i32 0, i32 1
  %87 = load %struct.adreno_gpu_funcs*, %struct.adreno_gpu_funcs** %9, align 8
  %88 = getelementptr inbounds %struct.adreno_gpu_funcs, %struct.adreno_gpu_funcs* %87, i32 0, i32 0
  %89 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %90 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @msm_gpu_init(%struct.drm_device* %83, %struct.platform_device* %84, %struct.msm_gpu* %86, i32* %88, i32 %93, %struct.msm_gpu_config* %12)
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @adreno_info(i32) #2

declare dso_local i64 @adreno_is_a2xx(%struct.adreno_gpu*) #2

declare dso_local i32 @adreno_get_pwrlevels(%struct.TYPE_6__*, %struct.msm_gpu*) #2

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_6__*) #2

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_6__*) #2

declare dso_local i32 @msm_gpu_init(%struct.drm_device*, %struct.platform_device*, %struct.msm_gpu*, i32*, i32, %struct.msm_gpu_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
