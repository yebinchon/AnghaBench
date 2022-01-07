; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_vram_object = type { %struct.TYPE_2__, %struct.ttm_bo_kmap_obj }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_bo_kmap_obj = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @drm_gem_vram_kmap(%struct.drm_gem_vram_object* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_gem_vram_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_bo_kmap_obj*, align 8
  store %struct.drm_gem_vram_object* %0, %struct.drm_gem_vram_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %11 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %10, i32 0, i32 1
  store %struct.ttm_bo_kmap_obj* %11, %struct.ttm_bo_kmap_obj** %9, align 8
  %12 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %13 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  br label %35

20:                                               ; preds = %16
  %21 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %22 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %21, i32 0, i32 0
  %23 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %5, align 8
  %24 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %28 = call i32 @ttm_bo_kmap(%struct.TYPE_2__* %22, i32 0, i32 %26, %struct.ttm_bo_kmap_obj* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @ERR_PTR(i32 %32)
  store i8* %33, i8** %4, align 8
  br label %53

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %40 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %4, align 8
  br label %53

42:                                               ; preds = %35
  %43 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %44 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  store i32 0, i32* %48, align 4
  store i8* null, i8** %4, align 8
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i8* @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj* %50, i32* %51)
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %49, %47, %38, %31
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_2__*, i32, i32, %struct.ttm_bo_kmap_obj*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
