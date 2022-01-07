; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_placement = type { i64, i64, i64, i64 }
%struct.ttm_mem_reg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_mem_compat(%struct.ttm_placement* %0, %struct.ttm_mem_reg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_placement*, align 8
  %6 = alloca %struct.ttm_mem_reg*, align 8
  %7 = alloca i32*, align 8
  store %struct.ttm_placement* %0, %struct.ttm_placement** %5, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %9 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @ttm_bo_places_compat(i64 %10, i64 %13, %struct.ttm_mem_reg* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %24 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %29 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %32 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %27, %19
  %36 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %37 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ttm_placement*, %struct.ttm_placement** %5, align 8
  %40 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @ttm_bo_places_compat(i64 %38, i64 %41, %struct.ttm_mem_reg* %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %48

47:                                               ; preds = %35, %27
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @ttm_bo_places_compat(i64, i64, %struct.ttm_mem_reg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
