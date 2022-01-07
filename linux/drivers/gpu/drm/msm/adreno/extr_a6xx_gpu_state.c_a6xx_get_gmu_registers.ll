; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_gmu_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_gmu_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32, i32* }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }

@a6xx_gmu_reglist = common dso_local global i32* null, align 8
@REG_A6XX_GMU_AO_AHB_FENCE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*)* @a6xx_get_gmu_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_gmu_registers(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.a6xx_gpu_state*, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %4, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %5, align 8
  %9 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %10 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %9)
  store %struct.a6xx_gpu* %10, %struct.a6xx_gpu** %6, align 8
  %11 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %12 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %11, i32 2, i32 4)
  %13 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %14 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %16 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %22 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %24 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %25 = load i32*, i32** @a6xx_gmu_reglist, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %28 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @_a6xx_get_gmu_registers(%struct.msm_gpu* %23, %struct.a6xx_gpu_state* %24, i32* %26, i32* %30)
  %32 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %6, align 8
  %33 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %32, i32 0, i32 0
  %34 = call i32 @a6xx_gmu_gx_is_on(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %50

37:                                               ; preds = %20
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %39 = load i32, i32* @REG_A6XX_GMU_AO_AHB_FENCE_CTRL, align 4
  %40 = call i32 @gpu_write(%struct.msm_gpu* %38, i32 %39, i32 0)
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %42 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %43 = load i32*, i32** @a6xx_gmu_reglist, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %46 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @_a6xx_get_gmu_registers(%struct.msm_gpu* %41, %struct.a6xx_gpu_state* %42, i32* %44, i32* %48)
  br label %50

50:                                               ; preds = %37, %36, %19
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @_a6xx_get_gmu_registers(%struct.msm_gpu*, %struct.a6xx_gpu_state*, i32*, i32*) #1

declare dso_local i32 @a6xx_gmu_gx_is_on(i32*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
