; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_10__, %struct.intel_hdcp }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdcp = type { i64, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 (%struct.intel_digital_port*)* }
%struct.intel_digital_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DRM_MODE_CONTENT_PROTECTION_ENABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s:%d HDCP link stopped encryption,%x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DRM_MODE_CONTENT_PROTECTION_DESIRED = common dso_local global i8* null, align 8
@DRM_MODE_CONTENT_PROTECTION_UNDESIRED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[%s:%d] HDCP link failed, retrying authentication\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to disable hdcp (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to enable hdcp (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @intel_hdcp_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdcp_check_link(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca %struct.intel_hdcp*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 1
  store %struct.intel_hdcp* %9, %struct.intel_hdcp** %3, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %17 = call %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector* %16)
  store %struct.intel_digital_port* %17, %struct.intel_digital_port** %5, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %23 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %26 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_ENABLED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %32 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %133

38:                                               ; preds = %30
  %39 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %40 = call i32 @intel_hdcp_in_use(%struct.intel_connector* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %38
  %47 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %48 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %52 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @PORT_HDCP_STATUS(i32 %56)
  %58 = call i32 @I915_READ(i32 %57)
  %59 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55, i32 %58)
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %65 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %67 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %66, i32 0, i32 2
  %68 = call i32 @schedule_work(i32* %67)
  br label %133

69:                                               ; preds = %38
  %70 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %71 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64 (%struct.intel_digital_port*)*, i64 (%struct.intel_digital_port*)** %73, align 8
  %75 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %76 = call i64 %74(%struct.intel_digital_port* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %69
  %79 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %80 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_UNDESIRED, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_ENABLED, align 8
  %86 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %87 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %89 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %88, i32 0, i32 2
  %90 = call i32 @schedule_work(i32* %89)
  br label %91

91:                                               ; preds = %84, %78
  br label %133

92:                                               ; preds = %69
  %93 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %94 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %98 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %101)
  %103 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %104 = call i32 @_intel_hdcp_disable(%struct.intel_connector* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %92
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i8*, i8** @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %113 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %115 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %114, i32 0, i32 2
  %116 = call i32 @schedule_work(i32* %115)
  br label %133

117:                                              ; preds = %92
  %118 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %119 = call i32 @_intel_hdcp_enable(%struct.intel_connector* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i8*, i8** @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %128 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %130 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %129, i32 0, i32 2
  %131 = call i32 @schedule_work(i32* %130)
  br label %133

132:                                              ; preds = %117
  br label %133

133:                                              ; preds = %132, %122, %107, %91, %46, %35
  %134 = load %struct.intel_hdcp*, %struct.intel_hdcp** %3, align 8
  %135 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %134, i32 0, i32 1
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_hdcp_in_use(%struct.intel_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PORT_HDCP_STATUS(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @_intel_hdcp_disable(%struct.intel_connector*) #1

declare dso_local i32 @_intel_hdcp_enable(%struct.intel_connector*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
