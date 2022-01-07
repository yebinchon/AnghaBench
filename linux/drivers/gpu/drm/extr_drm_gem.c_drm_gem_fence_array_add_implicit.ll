; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_fence_array_add_implicit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_fence_array_add_implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.dma_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_fence_array_add_implicit(%struct.xarray* %0, %struct.drm_gem_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xarray*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_fence*, align 8
  store %struct.xarray* %0, %struct.xarray** %5, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %17 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dma_fence* @dma_resv_get_excl_rcu(i32 %18)
  store %struct.dma_fence* %19, %struct.dma_fence** %12, align 8
  %20 = load %struct.xarray*, %struct.xarray** %5, align 8
  %21 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %22 = call i32 @drm_gem_fence_array_add(%struct.xarray* %20, %struct.dma_fence* %21)
  store i32 %22, i32* %4, align 4
  br label %74

23:                                               ; preds = %3
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_resv_get_fences_rcu(i32 %26, i32* null, i32* %11, %struct.dma_fence*** %9)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.xarray*, %struct.xarray** %5, align 8
  %42 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %42, i64 %44
  %46 = load %struct.dma_fence*, %struct.dma_fence** %45, align 8
  %47 = call i32 @drm_gem_fence_array_add(%struct.xarray* %41, %struct.dma_fence* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %36

55:                                               ; preds = %50, %36
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %61, i64 %63
  %65 = load %struct.dma_fence*, %struct.dma_fence** %64, align 8
  %66 = call i32 @dma_fence_put(%struct.dma_fence* %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %56

70:                                               ; preds = %56
  %71 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %72 = call i32 @kfree(%struct.dma_fence** %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %33, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.dma_fence* @dma_resv_get_excl_rcu(i32) #1

declare dso_local i32 @drm_gem_fence_array_add(%struct.xarray*, %struct.dma_fence*) #1

declare dso_local i32 @dma_resv_get_fences_rcu(i32, i32*, i32*, %struct.dma_fence***) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
