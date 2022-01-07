; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_intel_bios_is_dsi_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_intel_bios_is_dsi_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.child_device_config* }
%struct.child_device_config = type { i32, i64 }

@DEVICE_TYPE_MIPI_OUTPUT = common dso_local global i32 0, align 4
@DVO_PORT_MIPIA = common dso_local global i64 0, align 8
@DVO_PORT_MIPIB = common dso_local global i64 0, align 8
@DVO_PORT_MIPIC = common dso_local global i64 0, align 8
@DVO_PORT_MIPID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"VBT has unsupported DSI port %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_bios_is_dsi_present(%struct.drm_i915_private* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.child_device_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %84, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %87

16:                                               ; preds = %9
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.child_device_config*, %struct.child_device_config** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %20, i64 %22
  store %struct.child_device_config* %23, %struct.child_device_config** %6, align 8
  %24 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %25 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DEVICE_TYPE_MIPI_OUTPUT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %84

31:                                               ; preds = %16
  %32 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %33 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @DVO_PORT_MIPIA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @DVO_PORT_MIPIB, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = call i32 @INTEL_GEN(%struct.drm_i915_private* %43)
  %45 = icmp sge i32 %44, 11
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @DVO_PORT_MIPIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %52 = call i32 @INTEL_GEN(%struct.drm_i915_private* %51)
  %53 = icmp slt i32 %52, 11
  br i1 %53, label %54, label %64

54:                                               ; preds = %50, %42, %31
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @DVO_PORT_MIPIA, align 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %54
  store i32 1, i32* %3, align 4
  br label %88

64:                                               ; preds = %50, %46
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @DVO_PORT_MIPIB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @DVO_PORT_MIPIC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @DVO_PORT_MIPID, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72, %68, %64
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @DVO_PORT_MIPIA, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i32 @port_name(i64 %79)
  %81 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %72
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %30
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %9

87:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @port_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
