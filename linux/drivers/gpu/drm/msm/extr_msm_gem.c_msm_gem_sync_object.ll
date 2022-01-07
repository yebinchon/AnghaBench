; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_sync_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_sync_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_fence_context = type { i64 }
%struct.dma_resv_list = type { i32, i32* }
%struct.dma_fence = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_sync_object(%struct.drm_gem_object* %0, %struct.msm_fence_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.msm_fence_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_resv_list*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %5, align 8
  store %struct.msm_fence_context* %1, %struct.msm_fence_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %13 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dma_resv_list* @dma_resv_get_list(i32 %14)
  store %struct.dma_resv_list* %15, %struct.dma_resv_list** %8, align 8
  %16 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %17 = icmp ne %struct.dma_resv_list* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %20 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18, %3
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.dma_fence* @dma_resv_get_excl(i32 %26)
  store %struct.dma_fence* %27, %struct.dma_fence** %9, align 8
  %28 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %29 = icmp ne %struct.dma_fence* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %32 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %35 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %40 = call i32 @dma_fence_wait(%struct.dma_fence* %39, i32 1)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %94

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %30, %23
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %52 = icmp ne %struct.dma_resv_list* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %47
  store i32 0, i32* %4, align 4
  br label %94

54:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %90, %54
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %58 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %55
  %62 = load %struct.dma_resv_list*, %struct.dma_resv_list** %8, align 8
  %63 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %70 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dma_resv_held(i32 %71)
  %73 = call %struct.dma_fence* @rcu_dereference_protected(i32 %68, i32 %72)
  store %struct.dma_fence* %73, %struct.dma_fence** %9, align 8
  %74 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %75 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.msm_fence_context*, %struct.msm_fence_context** %6, align 8
  %78 = getelementptr inbounds %struct.msm_fence_context, %struct.msm_fence_context* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %61
  %82 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %83 = call i32 @dma_fence_wait(%struct.dma_fence* %82, i32 1)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %94

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %55

93:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %86, %53, %43
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.dma_resv_list* @dma_resv_get_list(i32) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl(i32) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dma_resv_held(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
