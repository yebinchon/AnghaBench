; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_context_create_ext = type { i32, i32, i32 }
%struct.create_ext = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@I915_CONTEXT_CREATE_FLAGS_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"client %s[%d] banned from creating ctx\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PIDTYPE_PID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS = common dso_local global i32 0, align 4
@create_extensions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"HW context %d created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_context_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_gem_context_create_ext*, align 8
  %10 = alloca %struct.create_ext, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_i915_gem_context_create_ext*
  store %struct.drm_i915_gem_context_create_ext* %15, %struct.drm_i915_gem_context_create_ext** %9, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %17 = call %struct.TYPE_5__* @DRIVER_CAPS(%struct.drm_i915_private* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %129

24:                                               ; preds = %3
  %25 = load %struct.drm_i915_gem_context_create_ext*, %struct.drm_i915_gem_context_create_ext** %9, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_context_create_ext, %struct.drm_i915_gem_context_create_ext* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I915_CONTEXT_CREATE_FLAGS_UNKNOWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %129

34:                                               ; preds = %24
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = call i32 @intel_gt_terminally_wedged(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %129

42:                                               ; preds = %34
  %43 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %44 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @client_is_banned(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %56 = load i32, i32* @PIDTYPE_PID, align 4
  %57 = call i32 @get_task_pid(%struct.TYPE_4__* %55, i32 %56)
  %58 = call i32 @pid_nr(i32 %57)
  %59 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %129

62:                                               ; preds = %42
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %129

69:                                               ; preds = %62
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %71 = load %struct.drm_i915_gem_context_create_ext*, %struct.drm_i915_gem_context_create_ext** %9, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_context_create_ext, %struct.drm_i915_gem_context_create_ext* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @i915_gem_create_context(%struct.drm_i915_private* %70, i32 %73)
  %75 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %4, align 4
  br label %129

87:                                               ; preds = %69
  %88 = load %struct.drm_i915_gem_context_create_ext*, %struct.drm_i915_gem_context_create_ext** %9, align 8
  %89 = getelementptr inbounds %struct.drm_i915_gem_context_create_ext, %struct.drm_i915_gem_context_create_ext* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load %struct.drm_i915_gem_context_create_ext*, %struct.drm_i915_gem_context_create_ext** %9, align 8
  %96 = getelementptr inbounds %struct.drm_i915_gem_context_create_ext, %struct.drm_i915_gem_context_create_ext* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @u64_to_user_ptr(i32 %97)
  %99 = load i32, i32* @create_extensions, align 4
  %100 = load i32, i32* @create_extensions, align 4
  %101 = call i32 @ARRAY_SIZE(i32 %100)
  %102 = call i32 @i915_user_extensions(i32 %98, i32 %99, i32 %101, %struct.create_ext* %10)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %124

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %87
  %108 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @gem_context_register(i32 %109, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %124

116:                                              ; preds = %107
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.drm_i915_gem_context_create_ext*, %struct.drm_i915_gem_context_create_ext** %9, align 8
  %119 = getelementptr inbounds %struct.drm_i915_gem_context_create_ext, %struct.drm_i915_gem_context_create_ext* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.drm_i915_gem_context_create_ext*, %struct.drm_i915_gem_context_create_ext** %9, align 8
  %121 = getelementptr inbounds %struct.drm_i915_gem_context_create_ext, %struct.drm_i915_gem_context_create_ext* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  store i32 0, i32* %4, align 4
  br label %129

124:                                              ; preds = %115, %105
  %125 = getelementptr inbounds %struct.create_ext, %struct.create_ext* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @context_close(i32 %126)
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %124, %116, %83, %67, %51, %40, %31, %21
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.TYPE_5__* @DRIVER_CAPS(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_terminally_wedged(i32*) #1

declare dso_local i64 @client_is_banned(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @pid_nr(i32) #1

declare dso_local i32 @get_task_pid(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_create_context(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i915_user_extensions(i32, i32, i32, %struct.create_ext*) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @gem_context_register(i32, i32) #1

declare dso_local i32 @context_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
