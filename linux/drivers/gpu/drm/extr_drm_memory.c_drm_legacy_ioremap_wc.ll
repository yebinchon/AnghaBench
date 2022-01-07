; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_memory.c_drm_legacy_ioremap_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_memory.c_drm_legacy_ioremap_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_local_map = type { i64, i32, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@_DRM_AGP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_legacy_ioremap_wc(%struct.drm_local_map* %0, %struct.drm_device* %1) #0 {
  %3 = alloca %struct.drm_local_map*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_local_map* %0, %struct.drm_local_map** %3, align 8
  store %struct.drm_device* %1, %struct.drm_device** %4, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %9
  %17 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %18 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @_DRM_AGP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %24 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %27 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = call i32 @agp_remap(i32 %25, i32 %28, %struct.drm_device* %29)
  %31 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %32 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %43

33:                                               ; preds = %16, %9, %2
  %34 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %35 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %38 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ioremap_wc(i32 %36, i32 %39)
  %41 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %42 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %22
  ret void
}

declare dso_local i32 @agp_remap(i32, i32, %struct.drm_device*) #1

declare dso_local i32 @ioremap_wc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
