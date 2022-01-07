; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_debugbus_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_debugbus_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32 }
%struct.a6xx_debugbus_block = type { i32, i32 }
%struct.a6xx_gpu_state_obj = type { i32*, %struct.a6xx_debugbus_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_debugbus_block*, %struct.a6xx_gpu_state_obj*)* @a6xx_get_debugbus_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_debugbus_block(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_debugbus_block* %2, %struct.a6xx_gpu_state_obj* %3) #0 {
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu_state*, align 8
  %7 = alloca %struct.a6xx_debugbus_block*, align 8
  %8 = alloca %struct.a6xx_gpu_state_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %6, align 8
  store %struct.a6xx_debugbus_block* %2, %struct.a6xx_debugbus_block** %7, align 8
  store %struct.a6xx_gpu_state_obj* %3, %struct.a6xx_gpu_state_obj** %8, align 8
  %11 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %6, align 8
  %12 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %7, align 8
  %13 = getelementptr inbounds %struct.a6xx_debugbus_block, %struct.a6xx_debugbus_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %11, i32 %14, i32 4)
  %16 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %17 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %19 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %7, align 8
  %25 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %26 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %25, i32 0, i32 1
  store %struct.a6xx_debugbus_block* %24, %struct.a6xx_debugbus_block** %26, align 8
  %27 = load %struct.a6xx_gpu_state_obj*, %struct.a6xx_gpu_state_obj** %8, align 8
  %28 = getelementptr inbounds %struct.a6xx_gpu_state_obj, %struct.a6xx_gpu_state_obj* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %47, %23
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %7, align 8
  %33 = getelementptr inbounds %struct.a6xx_debugbus_block, %struct.a6xx_debugbus_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %38 = load %struct.a6xx_debugbus_block*, %struct.a6xx_debugbus_block** %7, align 8
  %39 = getelementptr inbounds %struct.a6xx_debugbus_block, %struct.a6xx_debugbus_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @debugbus_read(%struct.msm_gpu* %37, i32 %40, i32 %41, i32* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %10, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %30

50:                                               ; preds = %22, %30
  ret void
}

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @debugbus_read(%struct.msm_gpu*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
