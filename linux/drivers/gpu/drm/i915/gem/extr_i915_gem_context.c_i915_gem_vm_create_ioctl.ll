; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_vm_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_vm_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_vm_control = type { i32, i64, i64 }
%struct.i915_ppgtt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_i915_file_private* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_vm_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_gem_vm_control*, align 8
  %10 = alloca %struct.drm_i915_file_private*, align 8
  %11 = alloca %struct.i915_ppgtt*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_i915_gem_vm_control*
  store %struct.drm_i915_gem_vm_control* %16, %struct.drm_i915_gem_vm_control** %9, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %18, align 8
  store %struct.drm_i915_file_private* %19, %struct.drm_i915_file_private** %10, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %21 = call i32 @HAS_FULL_PPGTT(%struct.drm_i915_private* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %3
  %27 = load %struct.drm_i915_gem_vm_control*, %struct.drm_i915_gem_vm_control** %9, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_vm_control, %struct.drm_i915_gem_vm_control* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %100

34:                                               ; preds = %26
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %36 = call %struct.i915_ppgtt* @i915_ppgtt_create(%struct.drm_i915_private* %35)
  store %struct.i915_ppgtt* %36, %struct.i915_ppgtt** %11, align 8
  %37 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %11, align 8
  %38 = call i64 @IS_ERR(%struct.i915_ppgtt* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %11, align 8
  %42 = call i32 @PTR_ERR(%struct.i915_ppgtt* %41)
  store i32 %42, i32* %4, align 4
  br label %100

43:                                               ; preds = %34
  %44 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %10, align 8
  %45 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %11, align 8
  %46 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.drm_i915_file_private* %44, %struct.drm_i915_file_private** %47, align 8
  %48 = load %struct.drm_i915_gem_vm_control*, %struct.drm_i915_gem_vm_control** %9, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_vm_control, %struct.drm_i915_gem_vm_control* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load %struct.drm_i915_gem_vm_control*, %struct.drm_i915_gem_vm_control** %9, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_vm_control, %struct.drm_i915_gem_vm_control* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @u64_to_user_ptr(i64 %55)
  %57 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %11, align 8
  %58 = call i32 @i915_user_extensions(i32 %56, i32* null, i32 0, %struct.i915_ppgtt* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %95

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %10, align 8
  %65 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock_interruptible(i32* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %95

70:                                               ; preds = %63
  %71 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %10, align 8
  %72 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %71, i32 0, i32 1
  %73 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %11, align 8
  %74 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %73, i32 0, i32 0
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @idr_alloc(i32* %72, %struct.TYPE_3__* %74, i32 0, i32 0, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %91

80:                                               ; preds = %70
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @GEM_BUG_ON(i32 %83)
  %85 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %10, align 8
  %86 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.drm_i915_gem_vm_control*, %struct.drm_i915_gem_vm_control** %9, align 8
  %90 = getelementptr inbounds %struct.drm_i915_gem_vm_control, %struct.drm_i915_gem_vm_control* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %4, align 4
  br label %100

91:                                               ; preds = %79
  %92 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %10, align 8
  %93 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %69, %61
  %96 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %11, align 8
  %97 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %96, i32 0, i32 0
  %98 = call i32 @i915_vm_put(%struct.TYPE_3__* %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %80, %40, %31, %23
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @HAS_FULL_PPGTT(%struct.drm_i915_private*) #1

declare dso_local %struct.i915_ppgtt* @i915_ppgtt_create(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.i915_ppgtt*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_ppgtt*) #1

declare dso_local i32 @i915_user_extensions(i32, i32*, i32, %struct.i915_ppgtt*) #1

declare dso_local i32 @u64_to_user_ptr(i64) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_vm_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
