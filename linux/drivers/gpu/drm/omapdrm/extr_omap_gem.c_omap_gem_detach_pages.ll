; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_detach_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_detach_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.omap_gem_object = type { i32*, i64*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*)* @omap_gem_detach_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_gem_detach_pages(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.omap_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %7 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %6)
  store %struct.omap_gem_object* %7, %struct.omap_gem_object** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = lshr i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %13, i32 0, i32 2
  %15 = call i32 @lockdep_assert_held(i32* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %31 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_page(i32 %34, i64 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %29, %20
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %51 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @kfree(i64* %52)
  %54 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %55 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %54, i32 0, i32 1
  store i64* null, i64** %55, align 8
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %57 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %58 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @drm_gem_put_pages(%struct.drm_gem_object* %56, i32* %59, i32 1, i32 0)
  %61 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %62 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  ret void
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @drm_gem_put_pages(%struct.drm_gem_object*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
