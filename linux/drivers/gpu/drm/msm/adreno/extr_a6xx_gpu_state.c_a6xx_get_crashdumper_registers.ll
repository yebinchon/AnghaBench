; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_crashdumper_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_crashdumper_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_registers = type { i32, i32*, i32, i32 }
%struct.a6xx_gpu_state_obj = type { i32, %struct.a6xx_registers* }
%struct.a6xx_crashdumper = type { i32*, i32 }

@A6XX_CD_DATA_OFFSET = common dso_local global i32 0, align 4
@A6XX_CD_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_registers*, %struct.a6xx_gpu_state_obj*, %struct.a6xx_crashdumper*)* @a6xx_get_crashdumper_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_crashdumper_registers(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_registers* %2, %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_crashdumper* %4) #0 {
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca %struct.a6xx_gpu_state*, align 8
  %8 = alloca %struct.a6xx_registers*, align 8
  %9 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %10 = alloca %struct.a6xx_crashdumper*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %7, align 8
  store %struct.a6xx_registers* %2, %struct.a6xx_registers** %8, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %9, align 8
  store %struct.a6xx_crashdumper* %4, %struct.a6xx_crashdumper** %10, align 8
  %16 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %17 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %20 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %25 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %31 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %34 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @CRASHDUMP_WRITE(i32* %29, i32 %32, i32 %35)
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %36
  store i32* %38, i32** %11, align 8
  br label %39

39:                                               ; preds = %28, %5
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %75, %39
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %43 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %48 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @RANGE(i32* %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %54 = getelementptr inbounds %struct.a6xx_registers, %struct.a6xx_registers* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @CRASHDUMP_READ(i32* %52, i32 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %11, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %46
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %13, align 4
  br label %40

78:                                               ; preds = %40
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @CRASHDUMP_FINI(i32* %79)
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = load i32, i32* @A6XX_CD_DATA_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ugt i64 %83, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @WARN_ON(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %115

91:                                               ; preds = %78
  %92 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %93 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %94 = call i64 @a6xx_crashdumper_run(%struct.msm_gpu* %92, %struct.a6xx_crashdumper* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %115

97:                                               ; preds = %91
  %98 = load %struct.a6xx_registers*, %struct.a6xx_registers** %8, align 8
  %99 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %100 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %99, i32 0, i32 1
  store %struct.a6xx_registers* %98, %struct.a6xx_registers** %100, align 8
  %101 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %7, align 8
  %102 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %10, align 8
  %103 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @A6XX_CD_DATA_OFFSET, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @state_kmemdup(%struct.a6xx_gpu_state* %101, i32* %107, i32 %111)
  %113 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %9, align 8
  %114 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %97, %96, %90
  ret void
}

declare dso_local i64 @CRASHDUMP_WRITE(i32*, i32, i32) #1

declare dso_local i32 @RANGE(i32*, i32) #1

declare dso_local i64 @CRASHDUMP_READ(i32*, i32, i32, i32) #1

declare dso_local i32 @CRASHDUMP_FINI(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @a6xx_crashdumper_run(%struct.msm_gpu*, %struct.a6xx_crashdumper*) #1

declare dso_local i32 @state_kmemdup(%struct.a6xx_gpu_state*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
