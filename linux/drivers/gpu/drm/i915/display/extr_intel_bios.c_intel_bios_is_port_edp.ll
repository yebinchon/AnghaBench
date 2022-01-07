; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_intel_bios_is_port_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_intel_bios_is_port_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.child_device_config*, %struct.TYPE_3__* }
%struct.child_device_config = type { i16, i32 }
%struct.TYPE_3__ = type { i32 }

@intel_bios_is_port_edp.port_mapping = internal constant [133 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 133, i16 134, i16 135, i16 136, i16 137], align 16
@DEVICE_TYPE_eDP_BITS = common dso_local global i32 0, align 4
@DEVICE_TYPE_eDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_bios_is_port_edp(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_device_config*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = call i64 @HAS_DDI(%struct.drm_i915_private* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %70

28:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %66, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.child_device_config*, %struct.child_device_config** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %40, i64 %42
  store %struct.child_device_config* %43, %struct.child_device_config** %6, align 8
  %44 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %45 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 4
  %47 = sext i16 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [133 x i16], [133 x i16]* @intel_bios_is_port_edp.port_mapping, i64 0, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %36
  %55 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %56 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DEVICE_TYPE_eDP_BITS, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @DEVICE_TYPE_eDP, align 4
  %61 = load i32, i32* @DEVICE_TYPE_eDP_BITS, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %70

65:                                               ; preds = %54, %36
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %29

69:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %64, %27, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
