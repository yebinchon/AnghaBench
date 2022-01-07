; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_indexed_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_indexed_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@a6xx_indexed_reglist = common dso_local global i32* null, align 8
@REG_A6XX_CP_MEM_POOL_SIZE = common dso_local global i32 0, align 4
@a6xx_cp_mempool_indexed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*)* @a6xx_get_indexed_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_indexed_registers(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.a6xx_gpu_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %4, align 8
  %8 = load i32*, i32** @a6xx_indexed_reglist, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.TYPE_3__* @state_kcalloc(%struct.a6xx_gpu_state* %11, i32 %12, i32 8)
  %14 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %15 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %14, i32 0, i32 1
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %17 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %77

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** @a6xx_indexed_reglist, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %29 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %30 = load i32*, i32** @a6xx_indexed_reglist, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %35 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = call i32 @a6xx_get_indexed_regs(%struct.msm_gpu* %28, %struct.a6xx_gpu_state* %29, i32* %33, %struct.TYPE_3__* %39)
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %46 = load i32, i32* @REG_A6XX_CP_MEM_POOL_SIZE, align 4
  %47 = call i32 @gpu_read(%struct.msm_gpu* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %49 = load i32, i32* @REG_A6XX_CP_MEM_POOL_SIZE, align 4
  %50 = call i32 @gpu_write(%struct.msm_gpu* %48, i32 %49, i32 0)
  %51 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %52 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %53 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %54 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = call i32 @a6xx_get_indexed_regs(%struct.msm_gpu* %51, %struct.a6xx_gpu_state* %52, i32* @a6xx_cp_mempool_indexed, %struct.TYPE_3__* %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %62 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8192
  store i32 %60, i32* %69, align 4
  %70 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %71 = load i32, i32* @REG_A6XX_CP_MEM_POOL_SIZE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @gpu_write(%struct.msm_gpu* %70, i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %4, align 8
  %76 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %44, %20
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_3__* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @a6xx_get_indexed_regs(%struct.msm_gpu*, %struct.a6xx_gpu_state*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
