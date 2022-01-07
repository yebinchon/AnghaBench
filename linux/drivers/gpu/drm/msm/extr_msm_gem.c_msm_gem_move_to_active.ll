; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_move_to_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_move_to_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gpu = type { i32 }
%struct.dma_fence = type { i32 }
%struct.msm_gem_object = type { i64, i32, %struct.msm_gpu* }

@MSM_MADV_WILLNEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gem_move_to_active(%struct.drm_gem_object* %0, %struct.msm_gpu* %1, i32 %2, %struct.dma_fence* %3) #0 {
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %5, align 8
  store %struct.msm_gpu* %1, %struct.msm_gpu** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dma_fence* %3, %struct.dma_fence** %8, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %11 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %10)
  store %struct.msm_gem_object* %11, %struct.msm_gem_object** %9, align 8
  %12 = load %struct.msm_gem_object*, %struct.msm_gem_object** %9, align 8
  %13 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MSM_MADV_WILLNEED, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %20 = load %struct.msm_gem_object*, %struct.msm_gem_object** %9, align 8
  %21 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %20, i32 0, i32 2
  store %struct.msm_gpu* %19, %struct.msm_gpu** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %26 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %29 = call i32 @dma_resv_add_excl_fence(i32 %27, %struct.dma_fence* %28)
  br label %36

30:                                               ; preds = %4
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %32 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %35 = call i32 @dma_resv_add_shared_fence(i32 %33, %struct.dma_fence* %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.msm_gem_object*, %struct.msm_gem_object** %9, align 8
  %38 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %37, i32 0, i32 1
  %39 = call i32 @list_del_init(i32* %38)
  %40 = load %struct.msm_gem_object*, %struct.msm_gem_object** %9, align 8
  %41 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %40, i32 0, i32 1
  %42 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %43 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  ret void
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_resv_add_excl_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @dma_resv_add_shared_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
