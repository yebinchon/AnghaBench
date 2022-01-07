; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c__intel_hdcp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c__intel_hdcp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_9__, %struct.intel_hdcp }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdcp = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.intel_digital_port*, i32)* }
%struct.intel_digital_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"[%s:%d] HDCP is being disabled...\0A\00", align 1
@ENCRYPT_STATUS_CHANGE_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to disable HDCP, timeout clearing status\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to disable HDCP signalling\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"HDCP is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @_intel_hdcp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_intel_hdcp_disable(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_hdcp*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 1
  store %struct.intel_hdcp* %10, %struct.intel_hdcp** %4, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %18 = call %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector* %17)
  store %struct.intel_digital_port* %18, %struct.intel_digital_port** %6, align 8
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %24 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %28 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31)
  %33 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %34 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PORT_HDCP_CONF(i32 %35)
  %37 = call i32 @I915_WRITE(i32 %36, i32 0)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @PORT_HDCP_STATUS(i32 %39)
  %41 = load i32, i32* @ENCRYPT_STATUS_CHANGE_TIMEOUT_MS, align 4
  %42 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %38, i32 %40, i32 -1, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %1
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %63

48:                                               ; preds = %1
  %49 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %50 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32 (%struct.intel_digital_port*, i32)*, i32 (%struct.intel_digital_port*, i32)** %52, align 8
  %54 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %55 = call i32 %53(%struct.intel_digital_port* %54, i32 0)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %48
  %62 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %58, %44
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PORT_HDCP_CONF(i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @PORT_HDCP_STATUS(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
