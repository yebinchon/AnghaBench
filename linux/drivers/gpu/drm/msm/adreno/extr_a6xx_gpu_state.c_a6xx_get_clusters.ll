; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_get_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_gpu_state = type { i32, i32* }
%struct.a6xx_crashdumper = type { i32 }

@a6xx_clusters = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*, %struct.a6xx_gpu_state*, %struct.a6xx_crashdumper*)* @a6xx_get_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_get_clusters(%struct.msm_gpu* %0, %struct.a6xx_gpu_state* %1, %struct.a6xx_crashdumper* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.a6xx_gpu_state*, align 8
  %6 = alloca %struct.a6xx_crashdumper*, align 8
  %7 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.a6xx_gpu_state* %1, %struct.a6xx_gpu_state** %5, align 8
  store %struct.a6xx_crashdumper* %2, %struct.a6xx_crashdumper** %6, align 8
  %8 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %9 = load i32*, i32** @a6xx_clusters, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = call i32* @state_kcalloc(%struct.a6xx_gpu_state* %8, i32 %10, i32 4)
  %12 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %13 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %15 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %47

19:                                               ; preds = %3
  %20 = load i32*, i32** @a6xx_clusters, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %23 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %44, %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** @a6xx_clusters, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %31 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %32 = load i32*, i32** @a6xx_clusters, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.a6xx_gpu_state*, %struct.a6xx_gpu_state** %5, align 8
  %37 = getelementptr inbounds %struct.a6xx_gpu_state, %struct.a6xx_gpu_state* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %6, align 8
  %43 = call i32 @a6xx_get_cluster(%struct.msm_gpu* %30, %struct.a6xx_gpu_state* %31, i32* %35, i32* %41, %struct.a6xx_crashdumper* %42)
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %24

47:                                               ; preds = %18, %24
  ret void
}

declare dso_local i32* @state_kcalloc(%struct.a6xx_gpu_state*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @a6xx_get_cluster(%struct.msm_gpu*, %struct.a6xx_gpu_state*, i32*, i32*, %struct.a6xx_crashdumper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
