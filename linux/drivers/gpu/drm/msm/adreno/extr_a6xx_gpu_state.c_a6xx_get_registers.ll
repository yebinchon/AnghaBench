; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32, i32* }
%struct.a6xx_crashdumper = type { i32 }

@a6xx_ahb_reglist = common dso_local global i32* null, align 8
@a6xx_reglist = common dso_local global i32* null, align 8
@a6xx_hlsq_reglist = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_crashdumper*)* @a6xx_get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_registers(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_crashdumper* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.a6xx_gpu_state*, align 8
  %6 = alloca %struct.a6xx_crashdumper*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %5, align 8
  store %struct.a6xx_crashdumper* %2, %struct.a6xx_crashdumper** %6, align 8
  %10 = load i32*, i32** @a6xx_ahb_reglist, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = load i32*, i32** @a6xx_reglist, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = add nsw i32 %11, %13
  %15 = load i32*, i32** @a6xx_hlsq_reglist, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %18, i32 %19, i32 4)
  %21 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %22 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %24 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %105

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %31 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %52, %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** @a6xx_ahb_reglist, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %39 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %40 = load i32*, i32** @a6xx_ahb_reglist, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %45 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = call i32 @a6xx_get_ahb_gpu_registers(%struct.msm_gpu* %38, %struct.a6xx_gpu_state* %39, i32* %43, i32* %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %32

55:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** @a6xx_reglist, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %63 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %64 = load i32*, i32** @a6xx_reglist, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %69 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %6, align 8
  %76 = call i32 @a6xx_get_crashdumper_registers(%struct.msm_gpu* %62, %struct.a6xx_gpu_state* %63, i32* %67, i32* %74, %struct.a6xx_crashdumper* %75)
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %56

80:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** @a6xx_hlsq_reglist, align 8
  %84 = call i32 @ARRAY_SIZE(i32* %83)
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %88 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %89 = load i32*, i32** @a6xx_hlsq_reglist, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %94 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %6, align 8
  %101 = call i32 @a6xx_get_crashdumper_hlsq_registers(%struct.msm_gpu* %87, %struct.a6xx_gpu_state* %88, i32* %92, i32* %99, %struct.a6xx_crashdumper* %100)
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %81

105:                                              ; preds = %27, %81
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @a6xx_get_ahb_gpu_registers(%struct.msm_gpu*, %struct.a6xx_gpu_state*, i32*, i32*) #1

declare dso_local i32 @a6xx_get_crashdumper_registers(%struct.msm_gpu*, %struct.a6xx_gpu_state*, i32*, i32*, %struct.a6xx_crashdumper*) #1

declare dso_local i32 @a6xx_get_crashdumper_hlsq_registers(%struct.msm_gpu*, %struct.a6xx_gpu_state*, i32*, i32*, %struct.a6xx_crashdumper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
