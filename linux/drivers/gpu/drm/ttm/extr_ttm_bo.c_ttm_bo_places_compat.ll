; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_places_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_places_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_place = type { i64, i64, i32 }
%struct.ttm_mem_reg = type { i64, i64, i32, i64 }

@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_MASK_MEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_CONTIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_place*, i32, %struct.ttm_mem_reg*, i32*)* @ttm_bo_places_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_places_compat(%struct.ttm_place* %0, i32 %1, %struct.ttm_mem_reg* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_place*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_place*, align 8
  store %struct.ttm_place* %0, %struct.ttm_place** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %90, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %93

16:                                               ; preds = %12
  %17 = load %struct.ttm_place*, %struct.ttm_place** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %17, i64 %19
  store %struct.ttm_place* %20, %struct.ttm_place** %11, align 8
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %16
  %26 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ttm_place*, %struct.ttm_place** %11, align 8
  %30 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %25
  %34 = load %struct.ttm_place*, %struct.ttm_place** %11, align 8
  %35 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %40 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %43 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.ttm_place*, %struct.ttm_place** %11, align 8
  %47 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38, %25
  br label %90

51:                                               ; preds = %38, %33, %16
  %52 = load %struct.ttm_place*, %struct.ttm_place** %11, align 8
  %53 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %59 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %57, %60
  %62 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %51
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %69 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %67, %70
  %72 = load i32, i32* @TTM_PL_MASK_MEM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %65
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TTM_PL_FLAG_CONTIGUOUS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %83 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TTM_PL_FLAG_CONTIGUOUS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81, %75
  store i32 1, i32* %5, align 4
  br label %94

89:                                               ; preds = %81, %65, %51
  br label %90

90:                                               ; preds = %89, %50
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %12

93:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
