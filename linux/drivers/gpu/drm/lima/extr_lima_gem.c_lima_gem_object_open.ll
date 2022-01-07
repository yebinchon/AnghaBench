; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_object_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_object_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { i32 }
%struct.lima_bo = type { i32 }
%struct.lima_drm_priv = type { %struct.lima_vm* }
%struct.lima_vm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_gem_object_open(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.lima_bo*, align 8
  %6 = alloca %struct.lima_drm_priv*, align 8
  %7 = alloca %struct.lima_vm*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = call %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object* %8)
  store %struct.lima_bo* %9, %struct.lima_bo** %5, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %11 = call %struct.lima_drm_priv* @to_lima_drm_priv(%struct.drm_file* %10)
  store %struct.lima_drm_priv* %11, %struct.lima_drm_priv** %6, align 8
  %12 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %6, align 8
  %13 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %12, i32 0, i32 0
  %14 = load %struct.lima_vm*, %struct.lima_vm** %13, align 8
  store %struct.lima_vm* %14, %struct.lima_vm** %7, align 8
  %15 = load %struct.lima_vm*, %struct.lima_vm** %7, align 8
  %16 = load %struct.lima_bo*, %struct.lima_bo** %5, align 8
  %17 = call i32 @lima_vm_bo_add(%struct.lima_vm* %15, %struct.lima_bo* %16, i32 1)
  ret i32 %17
}

declare dso_local %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.lima_drm_priv* @to_lima_drm_priv(%struct.drm_file*) #1

declare dso_local i32 @lima_vm_bo_add(%struct.lima_vm*, %struct.lima_bo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
