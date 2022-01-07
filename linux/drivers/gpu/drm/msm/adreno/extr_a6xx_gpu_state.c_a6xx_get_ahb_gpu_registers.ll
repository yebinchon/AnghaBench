; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_ahb_gpu_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_ahb_gpu_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_registers = type { i32, i64* }
%struct.a6xx_gpu_state_obj = type { i32*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_registers*, %struct.a6xx_gpu_state_obj*)* @a6xx_get_ahb_gpu_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_ahb_gpu_registers(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_registers* %2, %struct.a6xx_gpu_state_obj* %3) #0 {
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu_state*, align 8
  %7 = alloca %struct.a6xx_registers*, align 8
  %8 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %6, align 8
  store %struct.a6xx_registers* %2, %struct.a6xx_registers** %7, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %28, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %17 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %22 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @RANGE(i64* %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %9, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %33 = bitcast %struct.a6xx_registers* %32 to i8*
  %34 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %35 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %36, i32 %37, i32 4)
  %39 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %40 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %42 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %90

46:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %50 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %55 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @RANGE(i64* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %83, %53
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %65 = load %struct.a6xx_registers*, %struct.a6xx_registers** %7, align 8
  %66 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @gpu_read(%struct.msm_gpu* %64, i64 %74)
  %76 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %77 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %75, i32* %82, align 4
  br label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %59

86:                                               ; preds = %59
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %9, align 4
  br label %47

90:                                               ; preds = %45, %47
  ret void
}

declare dso_local i32 @RANGE(i64*, i32) #1

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
