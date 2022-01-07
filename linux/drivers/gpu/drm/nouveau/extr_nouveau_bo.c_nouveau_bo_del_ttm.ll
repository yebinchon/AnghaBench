; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_del_ttm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_del_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_drm = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_bo = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @nouveau_bo_del_ttm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bo_del_ttm(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_bo*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.nouveau_drm* @nouveau_bdev(i32 %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %3, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %14 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %13)
  store %struct.nouveau_bo* %14, %struct.nouveau_bo** %5, align 8
  %15 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %23 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nv10_bo_put_tile_region(%struct.drm_device* %21, i32 %24, i32* null)
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %32, i32 0, i32 0
  %34 = call i32 @drm_gem_object_release(%struct.TYPE_2__* %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %37 = call i32 @kfree(%struct.nouveau_bo* %36)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nv10_bo_put_tile_region(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.nouveau_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
