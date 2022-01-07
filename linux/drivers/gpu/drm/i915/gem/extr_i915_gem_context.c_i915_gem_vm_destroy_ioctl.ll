; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_vm_destroy_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_vm_destroy_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32, i32 }
%struct.drm_i915_gem_vm_control = type { i32, i64, i64 }
%struct.i915_address_space = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_vm_destroy_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_file_private*, align 8
  %9 = alloca %struct.drm_i915_gem_vm_control*, align 8
  %10 = alloca %struct.i915_address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %14, align 8
  store %struct.drm_i915_file_private* %15, %struct.drm_i915_file_private** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_i915_gem_vm_control*
  store %struct.drm_i915_gem_vm_control* %17, %struct.drm_i915_gem_vm_control** %9, align 8
  %18 = load %struct.drm_i915_gem_vm_control*, %struct.drm_i915_gem_vm_control** %9, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_vm_control, %struct.drm_i915_gem_vm_control* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  %26 = load %struct.drm_i915_gem_vm_control*, %struct.drm_i915_gem_vm_control** %9, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_vm_control, %struct.drm_i915_gem_vm_control* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %66

33:                                               ; preds = %25
  %34 = load %struct.drm_i915_gem_vm_control*, %struct.drm_i915_gem_vm_control** %9, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_vm_control, %struct.drm_i915_gem_vm_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %33
  %43 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %8, align 8
  %44 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock_interruptible(i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %42
  %51 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %8, align 8
  %52 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %51, i32 0, i32 1
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.i915_address_space* @idr_remove(i32* %52, i32 %53)
  store %struct.i915_address_space* %54, %struct.i915_address_space** %10, align 8
  %55 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %8, align 8
  %56 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %59 = icmp ne %struct.i915_address_space* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %50
  %64 = load %struct.i915_address_space*, %struct.i915_address_space** %10, align 8
  %65 = call i32 @i915_vm_put(%struct.i915_address_space* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %60, %48, %39, %30, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.i915_address_space* @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_vm_put(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
