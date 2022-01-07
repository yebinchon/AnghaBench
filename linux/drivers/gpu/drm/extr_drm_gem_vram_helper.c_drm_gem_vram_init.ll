; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.ttm_bo_device = type { i32 }
%struct.drm_gem_vram_object = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__, %struct.ttm_bo_device* }
%struct.TYPE_5__ = type { i32* }

@drm_gem_vram_object_funcs = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@ttm_buffer_object_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.ttm_bo_device*, %struct.drm_gem_vram_object*, i64, i64, i32)* @drm_gem_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gem_vram_init(%struct.drm_device* %0, %struct.ttm_bo_device* %1, %struct.drm_gem_vram_object* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.ttm_bo_device*, align 8
  %10 = alloca %struct.drm_gem_vram_object*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.ttm_bo_device* %1, %struct.ttm_bo_device** %9, align 8
  store %struct.drm_gem_vram_object* %2, %struct.drm_gem_vram_object** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %17 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %24 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* @drm_gem_vram_object_funcs, i32** %26, align 8
  br label %27

27:                                               ; preds = %22, %6
  %28 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %29 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %30 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @drm_gem_object_init(%struct.drm_device* %28, %struct.TYPE_5__* %31, i64 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %73

38:                                               ; preds = %27
  %39 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @ttm_bo_dma_acc_size(%struct.ttm_bo_device* %39, i64 %40, i32 24)
  store i64 %41, i64* %15, align 8
  %42 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  %43 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %44 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.ttm_bo_device* %42, %struct.ttm_bo_device** %45, align 8
  %46 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %47 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %48 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @drm_gem_vram_placement(%struct.drm_gem_vram_object* %46, i32 %49)
  %51 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  %52 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %53 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %52, i32 0, i32 0
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* @ttm_bo_type_device, align 4
  %56 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %57 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %56, i32 0, i32 1
  %58 = load i64, i64* %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i64, i64* %15, align 8
  %61 = load i32, i32* @ttm_buffer_object_destroy, align 4
  %62 = call i32 @ttm_bo_init(%struct.ttm_bo_device* %51, %struct.TYPE_4__* %53, i64 %54, i32 %55, i32* %57, i64 %58, i32 %59, i64 %60, i32* null, i32* null, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %38
  br label %67

66:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %73

67:                                               ; preds = %65
  %68 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %69 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @drm_gem_object_release(%struct.TYPE_5__* %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %67, %66, %36
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, %struct.TYPE_5__*, i64) #1

declare dso_local i64 @ttm_bo_dma_acc_size(%struct.ttm_bo_device*, i64, i32) #1

declare dso_local i32 @drm_gem_vram_placement(%struct.drm_gem_vram_object*, i32) #1

declare dso_local i32 @ttm_bo_init(%struct.ttm_bo_device*, %struct.TYPE_4__*, i64, i32, i32*, i64, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
