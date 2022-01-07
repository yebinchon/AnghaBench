; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64 }
%struct.nouveau_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_gem_object_del(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %7)
  store %struct.nouveau_bo* %8, %struct.nouveau_bo** %3, align 8
  %9 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nouveau_drm* @nouveau_bdev(i32 %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %4, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @pm_runtime_get_sync(%struct.device* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br label %28

28:                                               ; preds = %23, %1
  %29 = phi i1 [ false, %1 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %54

34:                                               ; preds = %28
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %41 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %42 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %40, i32 %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %48 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %47, i32 0, i32 0
  %49 = call i32 @ttm_bo_put(%struct.TYPE_4__* %48)
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @pm_runtime_mark_last_busy(%struct.device* %50)
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @pm_runtime_put_autosuspend(%struct.device* %52)
  br label %54

54:                                               ; preds = %46, %33
  ret void
}

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @ttm_bo_put(%struct.TYPE_4__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
