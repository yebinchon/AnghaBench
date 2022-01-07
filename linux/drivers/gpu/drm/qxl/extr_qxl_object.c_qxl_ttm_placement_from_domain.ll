; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_ttm_placement_from_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_object.c_qxl_ttm_placement_from_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_bo = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i64 0, align 8
@QXL_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8
@TTM_PL_FLAG_CACHED = common dso_local global i64 0, align 8
@TTM_PL_FLAG_VRAM = common dso_local global i64 0, align 8
@QXL_GEM_DOMAIN_SURFACE = common dso_local global i64 0, align 8
@TTM_PL_FLAG_PRIV = common dso_local global i64 0, align 8
@QXL_GEM_DOMAIN_CPU = common dso_local global i64 0, align 8
@TTM_PL_MASK_CACHING = common dso_local global i64 0, align 8
@TTM_PL_FLAG_SYSTEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qxl_ttm_placement_from_domain(%struct.qxl_bo* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.qxl_bo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qxl_bo* %0, %struct.qxl_bo** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @TTM_PL_FLAG_NO_EVICT, align 8
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %14 ]
  store i64 %16, i64* %8, align 8
  %17 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %18 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %21 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %24 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %27 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @QXL_GEM_DOMAIN_VRAM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %15
  %33 = load i64, i64* @TTM_PL_FLAG_CACHED, align 8
  %34 = load i64, i64* @TTM_PL_FLAG_VRAM, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %35, %36
  %38 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %39 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 %37, i64* %44, align 8
  br label %45

45:                                               ; preds = %32, %15
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @QXL_GEM_DOMAIN_SURFACE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load i64, i64* @TTM_PL_FLAG_CACHED, align 8
  %51 = load i64, i64* @TTM_PL_FLAG_PRIV, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* %8, align 8
  %54 = or i64 %52, %53
  %55 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %56 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i64 %54, i64* %61, align 8
  %62 = load i64, i64* @TTM_PL_FLAG_CACHED, align 8
  %63 = load i64, i64* @TTM_PL_FLAG_VRAM, align 8
  %64 = or i64 %62, %63
  %65 = load i64, i64* %8, align 8
  %66 = or i64 %64, %65
  %67 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %68 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i64 %66, i64* %73, align 8
  br label %74

74:                                               ; preds = %49, %45
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @QXL_GEM_DOMAIN_CPU, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i64, i64* @TTM_PL_MASK_CACHING, align 8
  %80 = load i64, i64* @TTM_PL_FLAG_SYSTEM, align 8
  %81 = or i64 %79, %80
  %82 = load i64, i64* %8, align 8
  %83 = or i64 %81, %82
  %84 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %85 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 %83, i64* %90, align 8
  br label %91

91:                                               ; preds = %78, %74
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* @TTM_PL_MASK_CACHING, align 8
  %96 = load i64, i64* @TTM_PL_FLAG_SYSTEM, align 8
  %97 = or i64 %95, %96
  %98 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %99 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i64 %97, i64* %104, align 8
  br label %105

105:                                              ; preds = %94, %91
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %108 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %112 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %134, %105
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %7, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %121 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %128 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %9, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %114

137:                                              ; preds = %114
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
