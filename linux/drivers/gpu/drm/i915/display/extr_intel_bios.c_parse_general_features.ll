; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_general_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_general_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_general_features = type { i64, i32, i32, i32, i32, i32, i32 }

@BDB_GENERAL_FEATURES = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_NORMAL = common dso_local global i32 0, align 4
@DRM_MODE_PANEL_ORIENTATION_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [142 x i8] c"BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_general_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_general_features(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_general_features*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %6 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %7 = load i32, i32* @BDB_GENERAL_FEATURES, align 4
  %8 = call %struct.bdb_general_features* @find_section(%struct.bdb_header* %6, i32 %7)
  store %struct.bdb_general_features* %8, %struct.bdb_general_features** %5, align 8
  %9 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %10 = icmp ne %struct.bdb_general_features* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %114

12:                                               ; preds = %2
  %13 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %14 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 4
  %19 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %20 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 155
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = call i64 @HAS_DDI(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27, %23
  %32 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %33 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %27, %12
  %39 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %40 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %47 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @intel_bios_ssc_frequency(%struct.drm_i915_private* %45, i32 %48)
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %54 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %60 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %66 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 181
  br i1 %68, label %69, label %83

69:                                               ; preds = %38
  %70 = load %struct.bdb_general_features*, %struct.bdb_general_features** %5, align 8
  %71 = getelementptr inbounds %struct.bdb_general_features, %struct.bdb_general_features* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_NORMAL, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %81 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  store i32 %79, i32* %82, align 4
  br label %88

83:                                               ; preds = %38
  %84 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 6
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %98 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %110 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %96, i32 %100, i32 %104, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %88, %11
  ret void
}

declare dso_local %struct.bdb_general_features* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_bios_ssc_frequency(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
