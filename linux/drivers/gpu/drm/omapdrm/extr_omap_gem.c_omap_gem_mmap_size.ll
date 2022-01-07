; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_mmap_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_mmap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64 }
%struct.omap_gem_object = type { i32, i32, i32 }

@OMAP_BO_TILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap_gem_mmap_size(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.omap_gem_object*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %5)
  store %struct.omap_gem_object* %6, %struct.omap_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OMAP_BO_TILED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %18 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gem2fmt(i32 %19)
  %21 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %25 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @tiler_vsize(i32 %20, i32 %23, i32 %26)
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %16, %1
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @tiler_vsize(i32, i32, i32) #1

declare dso_local i32 @gem2fmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
