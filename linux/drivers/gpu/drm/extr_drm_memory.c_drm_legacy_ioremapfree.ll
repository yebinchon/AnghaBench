; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_memory.c_drm_legacy_ioremapfree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_memory.c_drm_legacy_ioremapfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_local_map = type { i64, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@_DRM_AGP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_legacy_ioremapfree(%struct.drm_local_map* %0, %struct.drm_device* %1) #0 {
  %3 = alloca %struct.drm_local_map*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.drm_local_map* %0, %struct.drm_local_map** %3, align 8
  store %struct.drm_device* %1, %struct.drm_device** %4, align 8
  %5 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %6 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %11 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %43

15:                                               ; preds = %9
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %29 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @_DRM_AGP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %35 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vunmap(i32 %36)
  br label %43

38:                                               ; preds = %27, %20, %15
  %39 = load %struct.drm_local_map*, %struct.drm_local_map** %3, align 8
  %40 = getelementptr inbounds %struct.drm_local_map, %struct.drm_local_map* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @iounmap(i32 %41)
  br label %43

43:                                               ; preds = %14, %38, %33
  ret void
}

declare dso_local i32 @vunmap(i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
