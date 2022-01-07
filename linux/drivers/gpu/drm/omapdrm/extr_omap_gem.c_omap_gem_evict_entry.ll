; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_evict_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_evict_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.omap_drm_private* }
%struct.TYPE_5__ = type { i32 }
%struct.omap_drm_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.omap_drm_usergart_entry = type { i32, i32* }
%struct.omap_gem_object = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*, i32, %struct.omap_drm_usergart_entry*)* @omap_gem_evict_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_gem_evict_entry(%struct.drm_gem_object* %0, i32 %1, %struct.omap_drm_usergart_entry* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_drm_usergart_entry*, align 8
  %7 = alloca %struct.omap_gem_object*, align 8
  %8 = alloca %struct.omap_drm_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.omap_drm_usergart_entry* %2, %struct.omap_drm_usergart_entry** %6, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %15 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %14)
  store %struct.omap_gem_object* %15, %struct.omap_gem_object** %7, align 8
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %17 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.omap_drm_private*, %struct.omap_drm_private** %19, align 8
  store %struct.omap_drm_private* %20, %struct.omap_drm_private** %8, align 8
  %21 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  %22 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %34 = call i32 @omap_gem_mmap_offset(%struct.drm_gem_object* %33)
  %35 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %6, align 8
  %36 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.omap_gem_object*, %struct.omap_gem_object** %7, align 8
  %42 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = call i32 @DIV_ROUND_UP(i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %76

50:                                               ; preds = %3
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %72, %50
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %57 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @unmap_mapping_range(i32 %62, i32 %63, i64 %65, i32 1)
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %13, align 4
  br label %52

75:                                               ; preds = %52
  br label %87

76:                                               ; preds = %3
  %77 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %78 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @unmap_mapping_range(i32 %83, i32 %84, i64 %85, i32 1)
  br label %87

87:                                               ; preds = %76, %75
  %88 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %6, align 8
  %89 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  ret void
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @omap_gem_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @unmap_mapping_range(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
