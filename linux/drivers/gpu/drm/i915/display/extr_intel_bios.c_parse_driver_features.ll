; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_driver_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_driver_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_driver_features = type { i64, i32, i32 }

@BDB_DRIVER_FEATURES = common dso_local global i32 0, align 4
@BDB_DRIVER_FEATURE_INT_LVDS = common dso_local global i64 0, align 8
@BDB_DRIVER_FEATURE_INT_SDVO_LVDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"DRRS State Enabled:%d\0A\00", align 1
@DRRS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_driver_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_driver_features(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_driver_features*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %6 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %7 = load i32, i32* @BDB_DRIVER_FEATURES, align 4
  %8 = call %struct.bdb_driver_features* @find_section(%struct.bdb_header* %6, i32 %7)
  store %struct.bdb_driver_features* %8, %struct.bdb_driver_features** %5, align 8
  %9 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %10 = icmp ne %struct.bdb_driver_features* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %71

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i32 @INTEL_GEN(%struct.drm_i915_private* %13)
  %15 = icmp sge i32 %14, 5
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %18 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BDB_DRIVER_FEATURE_INT_LVDS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %16
  br label %49

27:                                               ; preds = %12
  %28 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %29 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 134
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %34 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BDB_DRIVER_FEATURE_INT_LVDS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %40 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BDB_DRIVER_FEATURE_INT_SDVO_LVDS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %38, %32, %27
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %51 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %55 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @DRRS_NOT_SUPPORTED, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %49
  %64 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %65 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %11
  ret void
}

declare dso_local %struct.bdb_driver_features* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
