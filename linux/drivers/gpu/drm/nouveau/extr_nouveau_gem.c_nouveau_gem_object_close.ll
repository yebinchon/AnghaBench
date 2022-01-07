; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_close.c"
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
%struct.nouveau_vma = type { i64 }

@NVIF_CLASS_VMM_NV50 = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_gem_object_close(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.nouveau_cli*, align 8
  %6 = alloca %struct.nouveau_bo*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nouveau_vmm*, align 8
  %10 = alloca %struct.nouveau_vma*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %13 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %12)
  store %struct.nouveau_cli* %13, %struct.nouveau_cli** %5, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %15 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %14)
  store %struct.nouveau_bo* %15, %struct.nouveau_bo** %6, align 8
  %16 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nouveau_drm* @nouveau_bdev(i32 %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %7, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %8, align 8
  %26 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %27 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %32, i32 0, i32 1
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %36 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %35, i32 0, i32 0
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi %struct.nouveau_vmm* [ %33, %31 ], [ %36, %34 ]
  store %struct.nouveau_vmm* %38, %struct.nouveau_vmm** %9, align 8
  %39 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %9, align 8
  %40 = getelementptr inbounds %struct.nouveau_vmm, %struct.nouveau_vmm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NVIF_CLASS_VMM_NV50, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %95

47:                                               ; preds = %37
  %48 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %49 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %48, i32 0, i32 0
  %50 = call i32 @ttm_bo_reserve(%struct.TYPE_9__* %49, i32 0, i32 0, i32* null)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %95

54:                                               ; preds = %47
  %55 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %56 = load %struct.nouveau_vmm*, %struct.nouveau_vmm** %9, align 8
  %57 = call %struct.nouveau_vma* @nouveau_vma_find(%struct.nouveau_bo* %55, %struct.nouveau_vmm* %56)
  store %struct.nouveau_vma* %57, %struct.nouveau_vma** %10, align 8
  %58 = load %struct.nouveau_vma*, %struct.nouveau_vma** %10, align 8
  %59 = icmp ne %struct.nouveau_vma* %58, null
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load %struct.nouveau_vma*, %struct.nouveau_vma** %10, align 8
  %62 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = call i32 @pm_runtime_get_sync(%struct.device* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @EACCES, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @WARN_ON(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %83 = load %struct.nouveau_vma*, %struct.nouveau_vma** %10, align 8
  %84 = call i32 @nouveau_gem_object_unmap(%struct.nouveau_bo* %82, %struct.nouveau_vma* %83)
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = call i32 @pm_runtime_mark_last_busy(%struct.device* %85)
  %87 = load %struct.device*, %struct.device** %8, align 8
  %88 = call i32 @pm_runtime_put_autosuspend(%struct.device* %87)
  br label %89

89:                                               ; preds = %81, %76
  br label %90

90:                                               ; preds = %89, %60
  br label %91

91:                                               ; preds = %90, %54
  %92 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %93 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %92, i32 0, i32 0
  %94 = call i32 @ttm_bo_unreserve(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %91, %53, %46
  ret void
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @ttm_bo_reserve(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local %struct.nouveau_vma* @nouveau_vma_find(%struct.nouveau_bo*, %struct.nouveau_vmm*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nouveau_gem_object_unmap(%struct.nouveau_bo*, %struct.nouveau_vma*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
