; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_gpu_state_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_gpu_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu_state = type { i32 }
%struct.msm_gpu = type { i32 }
%struct.a6xx_crashdumper = type { i32, i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }
%struct.a6xx_gpu_state = type { %struct.msm_gpu_state, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gpu_state* @a6xx_gpu_state_get(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu_state*, align 8
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.a6xx_crashdumper, align 4
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu*, align 8
  %7 = alloca %struct.a6xx_gpu_state*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %8 = bitcast %struct.a6xx_crashdumper* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %10 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %9)
  store %struct.adreno_gpu* %10, %struct.adreno_gpu** %5, align 8
  %11 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %12 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %11)
  store %struct.a6xx_gpu* %12, %struct.a6xx_gpu** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.a6xx_gpu_state* @kzalloc(i32 8, i32 %13)
  store %struct.a6xx_gpu_state* %14, %struct.a6xx_gpu_state** %7, align 8
  %15 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %16 = icmp ne %struct.a6xx_gpu_state* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.msm_gpu_state* @ERR_PTR(i32 %19)
  store %struct.msm_gpu_state* %20, %struct.msm_gpu_state** %2, align 8
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %23 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %26 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %27 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %26, i32 0, i32 0
  %28 = call i32 @adreno_gpu_state_get(%struct.msm_gpu* %25, %struct.msm_gpu_state* %27)
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %30 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %31 = call i32 @a6xx_get_gmu_registers(%struct.msm_gpu* %29, %struct.a6xx_gpu_state* %30)
  %32 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %6, align 8
  %33 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %32, i32 0, i32 0
  %34 = call i32 @a6xx_gmu_gx_is_on(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %38 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %37, i32 0, i32 0
  store %struct.msm_gpu_state* %38, %struct.msm_gpu_state** %2, align 8
  br label %71

39:                                               ; preds = %21
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %41 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %42 = call i32 @a6xx_get_indexed_registers(%struct.msm_gpu* %40, %struct.a6xx_gpu_state* %41)
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %44 = call i32 @a6xx_crashdumper_init(%struct.msm_gpu* %43, %struct.a6xx_crashdumper* %4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %39
  %47 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %48 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %49 = call i32 @a6xx_get_registers(%struct.msm_gpu* %47, %struct.a6xx_gpu_state* %48, %struct.a6xx_crashdumper* %4)
  %50 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %51 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %52 = call i32 @a6xx_get_shaders(%struct.msm_gpu* %50, %struct.a6xx_gpu_state* %51, %struct.a6xx_crashdumper* %4)
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %54 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %55 = call i32 @a6xx_get_clusters(%struct.msm_gpu* %53, %struct.a6xx_gpu_state* %54, %struct.a6xx_crashdumper* %4)
  %56 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %57 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %58 = call i32 @a6xx_get_dbgahb_clusters(%struct.msm_gpu* %56, %struct.a6xx_gpu_state* %57, %struct.a6xx_crashdumper* %4)
  %59 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %62 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @msm_gem_kernel_put(i32 %60, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %46, %39
  %66 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %67 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %68 = call i32 @a6xx_get_debugbus(%struct.msm_gpu* %66, %struct.a6xx_gpu_state* %67)
  %69 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %70 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %69, i32 0, i32 0
  store %struct.msm_gpu_state* %70, %struct.msm_gpu_state** %2, align 8
  br label %71

71:                                               ; preds = %65, %36, %17
  %72 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  ret %struct.msm_gpu_state* %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #2

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #2

declare dso_local %struct.a6xx_gpu_state* @kzalloc(i32, i32) #2

declare dso_local %struct.msm_gpu_state* @ERR_PTR(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @adreno_gpu_state_get(%struct.msm_gpu*, %struct.msm_gpu_state*) #2

declare dso_local i32 @a6xx_get_gmu_registers(%struct.msm_gpu*, %struct.a6xx_gpu_state*) #2

declare dso_local i32 @a6xx_gmu_gx_is_on(i32*) #2

declare dso_local i32 @a6xx_get_indexed_registers(%struct.msm_gpu*, %struct.a6xx_gpu_state*) #2

declare dso_local i32 @a6xx_crashdumper_init(%struct.msm_gpu*, %struct.a6xx_crashdumper*) #2

declare dso_local i32 @a6xx_get_registers(%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_crashdumper*) #2

declare dso_local i32 @a6xx_get_shaders(%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_crashdumper*) #2

declare dso_local i32 @a6xx_get_clusters(%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_crashdumper*) #2

declare dso_local i32 @a6xx_get_dbgahb_clusters(%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_crashdumper*) #2

declare dso_local i32 @msm_gem_kernel_put(i32, i32, i32) #2

declare dso_local i32 @a6xx_get_debugbus(%struct.msm_gpu*, %struct.a6xx_gpu_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
