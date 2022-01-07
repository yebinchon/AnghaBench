; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_object_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_object_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { %struct.radeon_vm }
%struct.radeon_vm = type { i32 }
%struct.radeon_bo = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i32 }
%struct.radeon_bo_va = type { i32 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_object_open(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.radeon_bo*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_fpriv*, align 8
  %9 = alloca %struct.radeon_vm*, align 8
  %10 = alloca %struct.radeon_bo_va*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %13 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %12)
  store %struct.radeon_bo* %13, %struct.radeon_bo** %6, align 8
  %14 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %7, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  %19 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %18, align 8
  store %struct.radeon_fpriv* %19, %struct.radeon_fpriv** %8, align 8
  %20 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %20, i32 0, i32 0
  store %struct.radeon_vm* %21, %struct.radeon_vm** %9, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_CAYMAN, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %59

33:                                               ; preds = %27
  %34 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %35 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %59

40:                                               ; preds = %33
  %41 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %42 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %43 = call %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm* %41, %struct.radeon_bo* %42)
  store %struct.radeon_bo_va* %43, %struct.radeon_bo_va** %10, align 8
  %44 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %10, align 8
  %45 = icmp ne %struct.radeon_bo_va* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %48 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %49 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %50 = call %struct.radeon_bo_va* @radeon_vm_bo_add(%struct.radeon_device* %47, %struct.radeon_vm* %48, %struct.radeon_bo* %49)
  store %struct.radeon_bo_va* %50, %struct.radeon_bo_va** %10, align 8
  br label %56

51:                                               ; preds = %40
  %52 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %10, align 8
  %53 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %58 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %38, %32
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm*, %struct.radeon_bo*) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_add(%struct.radeon_device*, %struct.radeon_vm*, %struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
