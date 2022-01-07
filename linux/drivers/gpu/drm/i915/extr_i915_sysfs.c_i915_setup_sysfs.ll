; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_i915_setup_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_i915_setup_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@dpf_attrs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"l3 parity sysfs setup failed\0A\00", align 1
@dpf_attrs_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"l3 parity slice 1 setup failed\0A\00", align 1
@vlv_attrs = common dso_local global i32 0, align 4
@gen6_attrs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"RPS sysfs setup failed\0A\00", align 1
@media_rc6_attr_group = common dso_local global i32 0, align 4
@rc6_attr_group = common dso_local global i32 0, align 4
@rc6p_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_setup_sysfs(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i64 @HAS_L3_DPF(%struct.drm_i915_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @device_create_bin_file(%struct.device* %15, i32* @dpf_attrs)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i32 @NUM_L3_SLICES(%struct.drm_i915_private* %22)
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @device_create_bin_file(%struct.device* %26, i32* @dpf_attrs_1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %1
  store i32 0, i32* %4, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %34
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* @vlv_attrs, align 4
  %46 = call i32 @sysfs_create_files(i32* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %38
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = call i32 @INTEL_GEN(%struct.drm_i915_private* %48)
  %50 = icmp sge i32 %49, 6
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* @gen6_attrs, align 4
  %55 = call i32 @sysfs_create_files(i32* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %47
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = call i32 @i915_setup_error_capture(%struct.device* %63)
  ret void
}

declare dso_local i64 @HAS_L3_DPF(%struct.drm_i915_private*) #1

declare dso_local i32 @device_create_bin_file(%struct.device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @NUM_L3_SLICES(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @sysfs_create_files(i32*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_setup_error_capture(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
