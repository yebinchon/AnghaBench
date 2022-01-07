; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_add_deps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_add_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.lima_submit = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_fence = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.lima_submit*)* @lima_gem_add_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_gem_add_deps(%struct.drm_file* %0, %struct.lima_submit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.lima_submit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_fence*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.lima_submit* %1, %struct.lima_submit** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %54, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %12 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %9
  store %struct.dma_fence* null, %struct.dma_fence** %8, align 8
  %17 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %18 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %54

26:                                               ; preds = %16
  %27 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %28 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %29 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @drm_syncobj_find_fence(%struct.drm_file* %27, i32 %34, i32 0, i32 0, %struct.dma_fence** %8)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load %struct.lima_submit*, %struct.lima_submit** %5, align 8
  %42 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %46 = call i32 @drm_gem_fence_array_add(i32* %44, %struct.dma_fence* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %51 = call i32 @dma_fence_put(%struct.dma_fence* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %9

57:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_syncobj_find_fence(%struct.drm_file*, i32, i32, i32, %struct.dma_fence**) #1

declare dso_local i32 @drm_gem_fence_array_add(i32*, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
