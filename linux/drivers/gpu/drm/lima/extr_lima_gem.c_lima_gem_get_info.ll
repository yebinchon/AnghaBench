; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gem.c_lima_gem_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.lima_bo = type { i32 }
%struct.lima_drm_priv = type { %struct.lima_vm* }
%struct.lima_vm = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_gem_get_info(%struct.drm_file* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.lima_bo*, align 8
  %12 = alloca %struct.lima_drm_priv*, align 8
  %13 = alloca %struct.lima_vm*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %16 = call %struct.lima_drm_priv* @to_lima_drm_priv(%struct.drm_file* %15)
  store %struct.lima_drm_priv* %16, %struct.lima_drm_priv** %12, align 8
  %17 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %12, align 8
  %18 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %17, i32 0, i32 0
  %19 = load %struct.lima_vm*, %struct.lima_vm** %18, align 8
  store %struct.lima_vm* %19, %struct.lima_vm** %13, align 8
  %20 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %20, i32 %21)
  store %struct.drm_gem_object* %22, %struct.drm_gem_object** %10, align 8
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %24 = icmp ne %struct.drm_gem_object* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %48

28:                                               ; preds = %4
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %30 = call %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object* %29)
  store %struct.lima_bo* %30, %struct.lima_bo** %11, align 8
  %31 = load %struct.lima_vm*, %struct.lima_vm** %13, align 8
  %32 = load %struct.lima_bo*, %struct.lima_bo** %11, align 8
  %33 = call i32 @lima_vm_get_va(%struct.lima_vm* %31, %struct.lima_bo* %32)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %36 = call i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %40, i32 0, i32 0
  %42 = call i32 @drm_vma_node_offset_addr(i32* %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %28
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %46 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %25
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.lima_drm_priv* @to_lima_drm_priv(%struct.drm_file*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.lima_bo* @to_lima_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @lima_vm_get_va(%struct.lima_vm*, %struct.lima_bo*) #1

declare dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_vma_node_offset_addr(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
