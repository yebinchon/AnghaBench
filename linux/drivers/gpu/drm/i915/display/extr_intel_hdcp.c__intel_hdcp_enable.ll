; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c__intel_hdcp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c__intel_hdcp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_6__, %struct.intel_hdcp }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdcp = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"[%s:%d] HDCP is being enabled...\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"HDCP key Load is not possible\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@KEY_LOAD_TRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not load HDCP keys, (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"HDCP Auth failure (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"HDCP authentication failed (%d tries/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @_intel_hdcp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_intel_hdcp_enable(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_hdcp*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 1
  store %struct.intel_hdcp* %10, %struct.intel_hdcp** %4, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  store i32 3, i32* %8, align 4
  %17 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %22 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = call i32 @hdcp_key_loadable(%struct.drm_i915_private* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %84

34:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @KEY_LOAD_TRIES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = call i32 @intel_hdcp_load_keys(%struct.drm_i915_private* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %51

45:                                               ; preds = %39
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %47 = call i32 @intel_hdcp_clear_keys(%struct.drm_i915_private* %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %35

51:                                               ; preds = %44, %35
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %84

58:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %65 = call i32 @intel_hdcp_auth(%struct.intel_connector* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %70 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  store i32 0, i32* %2, align 4
  br label %84

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %75 = call i32 @_intel_hdcp_disable(%struct.intel_connector* %74)
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %59

79:                                               ; preds = %59
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %68, %54, %30
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @hdcp_key_loadable(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @intel_hdcp_load_keys(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdcp_clear_keys(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdcp_auth(%struct.intel_connector*) #1

declare dso_local i32 @_intel_hdcp_disable(%struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
