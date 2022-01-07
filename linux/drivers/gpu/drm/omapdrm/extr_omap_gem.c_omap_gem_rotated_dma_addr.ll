; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_rotated_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_rotated_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.omap_gem_object = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_BO_TILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_gem_rotated_dma_addr(%struct.drm_gem_object* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.omap_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %14 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %13)
  store %struct.omap_gem_object* %14, %struct.omap_gem_object** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.omap_gem_object*, %struct.omap_gem_object** %11, align 8
  %18 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.omap_gem_object*, %struct.omap_gem_object** %11, align 8
  %21 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %5
  %25 = load %struct.omap_gem_object*, %struct.omap_gem_object** %11, align 8
  %26 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.omap_gem_object*, %struct.omap_gem_object** %11, align 8
  %31 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @OMAP_BO_TILED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.omap_gem_object*, %struct.omap_gem_object** %11, align 8
  %38 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @tiler_tsptr(i64 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %36, %29, %24, %5
  %46 = load %struct.omap_gem_object*, %struct.omap_gem_object** %11, align 8
  %47 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %12, align 4
  ret i32 %49
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tiler_tsptr(i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
