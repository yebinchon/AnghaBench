; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_drm_vram_mm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_drm_vram_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_vram_mm = type { i64, i32, %struct.drm_vram_mm_funcs*, i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_vram_mm_funcs = type { i32 }

@bo_driver = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_vram_mm_init(%struct.drm_vram_mm* %0, %struct.drm_device* %1, i32 %2, i64 %3, %struct.drm_vram_mm_funcs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_vram_mm*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_vram_mm_funcs*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_vram_mm* %0, %struct.drm_vram_mm** %7, align 8
  store %struct.drm_device* %1, %struct.drm_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.drm_vram_mm_funcs* %4, %struct.drm_vram_mm_funcs** %11, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %7, align 8
  %15 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %7, align 8
  %18 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.drm_vram_mm_funcs*, %struct.drm_vram_mm_funcs** %11, align 8
  %20 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %7, align 8
  %21 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %20, i32 0, i32 2
  store %struct.drm_vram_mm_funcs* %19, %struct.drm_vram_mm_funcs** %21, align 8
  %22 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %7, align 8
  %23 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %22, i32 0, i32 1
  %24 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ttm_bo_device_init(i32* %23, i32* @bo_driver, i32 %28, i32 1)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %47

34:                                               ; preds = %5
  %35 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %7, align 8
  %36 = getelementptr inbounds %struct.drm_vram_mm, %struct.drm_vram_mm* %35, i32 0, i32 1
  %37 = load i32, i32* @TTM_PL_VRAM, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = lshr i64 %38, %39
  %41 = call i32 @ttm_bo_init_mm(i32* %36, i32 %37, i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %44, %32
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @ttm_bo_device_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @ttm_bo_init_mm(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
