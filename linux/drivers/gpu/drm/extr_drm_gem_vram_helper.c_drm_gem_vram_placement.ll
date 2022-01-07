; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_placement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_vram_object = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@TTM_PL_FLAG_VRAM = common dso_local global i64 0, align 8
@TTM_PL_FLAG_WC = common dso_local global i64 0, align 8
@TTM_PL_FLAG_UNCACHED = common dso_local global i64 0, align 8
@TTM_PL_FLAG_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_MASK_CACHING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_vram_object*, i64)* @drm_gem_vram_placement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_gem_vram_placement(%struct.drm_gem_vram_object* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_vram_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_gem_vram_object* %0, %struct.drm_gem_vram_object** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %12, align 8
  %13 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %14 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %17 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @TTM_PL_FLAG_VRAM, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i64, i64* @TTM_PL_FLAG_WC, align 8
  %25 = load i64, i64* @TTM_PL_FLAG_UNCACHED, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @TTM_PL_FLAG_VRAM, align 8
  %28 = or i64 %26, %27
  %29 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %30 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %28, i64* %36, align 8
  br label %37

37:                                               ; preds = %23, %2
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @TTM_PL_FLAG_SYSTEM, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i64, i64* @TTM_PL_MASK_CACHING, align 8
  %44 = load i64, i64* @TTM_PL_FLAG_SYSTEM, align 8
  %45 = or i64 %43, %44
  %46 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %47 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 %45, i64* %53, align 8
  br label %54

54:                                               ; preds = %42, %37
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* @TTM_PL_MASK_CACHING, align 8
  %59 = load i64, i64* @TTM_PL_FLAG_SYSTEM, align 8
  %60 = or i64 %58, %59
  %61 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %62 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i64 %60, i64* %68, align 8
  br label %69

69:                                               ; preds = %57, %54
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %72 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %76 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %97, %69
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %84 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %91 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %78

100:                                              ; preds = %78
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
