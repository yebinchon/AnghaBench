; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c__a6xx_get_gmu_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c__a6xx_get_gmu_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_registers = type { i32, i64* }
%struct.a6xx_gpu_state_obj = type { i32*, i8* }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { %struct.a6xx_gmu }
%struct.a6xx_gmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_registers*, %struct.a6xx_gpu_state_obj*)* @_a6xx_get_gmu_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_a6xx_get_gmu_registers(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_registers* %2, %struct.a6xx_gpu_state_obj* %3) #0 {
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu_state*, align 8
  %7 = alloca %struct.a6xx_registers*, align 8
  %8 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %9 = alloca %struct.adreno_gpu*, align 8
  %10 = alloca %struct.a6xx_gpu*, align 8
  %11 = alloca %struct.a6xx_gmu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %6, align 8
  store %struct.a6xx_registers* %2, %struct.a6xx_registers** %7, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %8, align 8
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %18 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %17)
  store %struct.adreno_gpu* %18, %struct.adreno_gpu** %9, align 8
  %19 = load %struct.adreno_gpu*, %struct.adreno_gpu** %9, align 8
  %20 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %19)
  store %struct.a6xx_gpu* %20, %struct.a6xx_gpu** %10, align 8
  %21 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %10, align 8
  %22 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %21, i32 0, i32 0
  store %struct.a6xx_gmu* %22, %struct.a6xx_gmu** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %37, %4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %26 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %31 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @RANGE(i64* %32, i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %12, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %42 = bitcast %struct.a6xx_registers* %41 to i8*
  %43 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %44 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %45, i32 %46, i32 4)
  %48 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %49 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %51 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  br label %99

55:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %59 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %56
  %63 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %64 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @RANGE(i64* %65, i32 %66)
  store i32 %67, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %92, %62
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %11, align 8
  %74 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %75 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 @gmu_read(%struct.a6xx_gmu* %73, i64 %83)
  %85 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %86 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %84, i32* %91, align 4
  br label %92

92:                                               ; preds = %72
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %68

95:                                               ; preds = %68
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %12, align 4
  br label %56

99:                                               ; preds = %54, %56
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @RANGE(i64*, i32) #1

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @gmu_read(%struct.a6xx_gmu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
