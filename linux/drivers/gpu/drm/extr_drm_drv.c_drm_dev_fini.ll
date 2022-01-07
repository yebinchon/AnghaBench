; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, i32, i32, i32, i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@DRM_MINOR_PRIMARY = common dso_local global i32 0, align 4
@DRM_MINOR_RENDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dev_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = call i32 @drm_vblank_cleanup(%struct.drm_device* %3)
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = load i32, i32* @DRIVER_GEM, align 4
  %7 = call i64 @drm_core_check_feature(%struct.drm_device* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call i32 @drm_gem_destroy(%struct.drm_device* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = call i32 @drm_legacy_ctxbitmap_cleanup(%struct.drm_device* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call i32 @drm_legacy_remove_map_hash(%struct.drm_device* %15)
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @drm_fs_inode_free(i32 %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = load i32, i32* @DRM_MINOR_PRIMARY, align 4
  %23 = call i32 @drm_minor_free(%struct.drm_device* %21, i32 %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = load i32, i32* @DRM_MINOR_RENDER, align 4
  %26 = call i32 @drm_minor_free(%struct.drm_device* %24, i32 %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @put_device(i32 %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 4
  %33 = call i32 @mutex_destroy(i32* %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 3
  %36 = call i32 @mutex_destroy(i32* %35)
  %37 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 2
  %39 = call i32 @mutex_destroy(i32* %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 1
  %42 = call i32 @mutex_destroy(i32* %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = call i32 @drm_legacy_destroy_members(%struct.drm_device* %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  ret void
}

declare dso_local i32 @drm_vblank_cleanup(%struct.drm_device*) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_gem_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_ctxbitmap_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_remove_map_hash(%struct.drm_device*) #1

declare dso_local i32 @drm_fs_inode_free(i32) #1

declare dso_local i32 @drm_minor_free(%struct.drm_device*, i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @drm_legacy_destroy_members(%struct.drm_device*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
