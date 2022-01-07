; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { %struct.nouveau_vmm, %struct.nouveau_vmm }
%struct.nouveau_vmm = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.nouveau_bo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.nouveau_vma = type { i32 }

@NVIF_CLASS_VMM_NV50 = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_object_open(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.nouveau_cli*, align 8
  %7 = alloca %struct.nouveau_bo*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.nouveau_vmm*, align 8
  %11 = alloca %struct.nouveau_vma*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %14 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %13)
  store %struct.nouveau_cli* %14, %struct.nouveau_cli** %6, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %16 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %15)
  store %struct.nouveau_bo* %16, %struct.nouveau_bo** %7, align 8
  %17 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nouveau_drm* @nouveau_bdev(i32 %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %8, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load %struct.nouveau_cli*, %struct.nouveau_cli** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.nouveau_cli*, %struct.nouveau_cli** %6, align 8
  %34 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %33, i32 0, i32 1
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.nouveau_cli*, %struct.nouveau_cli** %6, align 8
  %37 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %36, i32 0, i32 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi %struct.nouveau_vmm* [ %34, %32 ], [ %37, %35 ]
  store %struct.nouveau_vmm* %39, %struct.nouveau_vmm** %10, align 8
  %40 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %10, align 8
  %41 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NVIF_CLASS_VMM_NV50, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %80

48:                                               ; preds = %38
  %49 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %50 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %49, i32 0, i32 0
  %51 = call i32 @ttm_bo_reserve(%struct.TYPE_9__* %50, i32 0, i32 0, i32* null)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %3, align 4
  br label %80

56:                                               ; preds = %48
  %57 = load %struct.device*, %struct.device** %9, align 8
  %58 = call i32 @pm_runtime_get_sync(%struct.device* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @EACCES, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61, %56
  %68 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %69 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %10, align 8
  %70 = call i32 @nouveau_vma_new(%struct.nouveau_bo* %68, %struct.nouveau_vmm* %69, %struct.nouveau_vma** %11)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = call i32 @pm_runtime_mark_last_busy(%struct.device* %71)
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = call i32 @pm_runtime_put_autosuspend(%struct.device* %73)
  br label %75

75:                                               ; preds = %67, %66
  %76 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %77 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %76, i32 0, i32 0
  %78 = call i32 @ttm_bo_unreserve(%struct.TYPE_9__* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %54, %47
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @ttm_bo_reserve(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @nouveau_vma_new(%struct.nouveau_bo*, %struct.nouveau_vmm*, %struct.nouveau_vma**) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
