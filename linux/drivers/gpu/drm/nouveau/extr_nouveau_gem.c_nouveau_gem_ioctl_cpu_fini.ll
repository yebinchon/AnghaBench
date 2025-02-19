; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_cpu_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_ioctl_cpu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_nouveau_gem_cpu_fini = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.nouveau_bo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_ioctl_cpu_fini(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_nouveau_gem_cpu_fini*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.nouveau_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_nouveau_gem_cpu_fini*
  store %struct.drm_nouveau_gem_cpu_fini* %12, %struct.drm_nouveau_gem_cpu_fini** %8, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_nouveau_gem_cpu_fini*, %struct.drm_nouveau_gem_cpu_fini** %8, align 8
  %15 = getelementptr inbounds %struct.drm_nouveau_gem_cpu_fini, %struct.drm_nouveau_gem_cpu_fini* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %13, i32 %16)
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %9, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %19 = icmp ne %struct.drm_gem_object* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %25 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %24)
  store %struct.nouveau_bo* %25, %struct.nouveau_bo** %10, align 8
  %26 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %27 = call i32 @nouveau_bo_sync_for_device(%struct.nouveau_bo* %26)
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %29 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @nouveau_bo_sync_for_device(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
