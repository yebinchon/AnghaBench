; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_placement_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_placement_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, i32, i64, i64, %struct.ttm_placement }
%struct.ttm_placement = type { i32, i32, i32, i32 }

@TTM_PL_FLAG_UNCACHED = common dso_local global i32 0, align 4
@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_bo_placement_set(%struct.nouveau_bo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_placement*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %9, i32 0, i32 4
  store %struct.ttm_placement* %10, %struct.ttm_placement** %7, align 8
  %11 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @TTM_PL_FLAG_UNCACHED, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %22 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %20, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %35 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %37 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %40 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %39, i32 0, i32 2
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @set_placement_list(i32 %38, i32* %40, i32 %41, i32 %42)
  %44 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %45 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %48 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %53 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @set_placement_list(i32 %51, i32* %53, i32 %56, i32 %57)
  %59 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @set_placement_range(%struct.nouveau_bo* %59, i32 %60)
  ret void
}

declare dso_local i32 @set_placement_list(i32, i32*, i32, i32) #1

declare dso_local i32 @set_placement_range(%struct.nouveau_bo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
