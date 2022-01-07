; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_store_pairing_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_store_pairing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.hdcp_port_data }
%struct.hdcp_port_data = type { i32 }
%struct.hdcp2_ake_send_pairing_info = type { i32 }
%struct.drm_i915_private = type { i32, %struct.i915_hdcp_comp_master* }
%struct.i915_hdcp_comp_master = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_pairing_info*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Store pairing info failed. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, %struct.hdcp2_ake_send_pairing_info*)* @hdcp2_store_pairing_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_store_pairing_info(%struct.intel_connector* %0, %struct.hdcp2_ake_send_pairing_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.hdcp2_ake_send_pairing_info*, align 8
  %6 = alloca %struct.hdcp_port_data*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.i915_hdcp_comp_master*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store %struct.hdcp2_ake_send_pairing_info* %1, %struct.hdcp2_ake_send_pairing_info** %5, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.hdcp_port_data* %12, %struct.hdcp_port_data** %6, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %7, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 1
  %23 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %22, align 8
  store %struct.i915_hdcp_comp_master* %23, %struct.i915_hdcp_comp_master** %8, align 8
  %24 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %8, align 8
  %25 = icmp ne %struct.i915_hdcp_comp_master* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %8, align 8
  %28 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %26
  %38 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %8, align 8
  %39 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_pairing_info*)*, i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_pairing_info*)** %41, align 8
  %43 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %8, align 8
  %44 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %47 = load %struct.hdcp2_ake_send_pairing_info*, %struct.hdcp2_ake_send_pairing_info** %5, align 8
  %48 = call i32 %42(i32 %45, %struct.hdcp_port_data* %46, %struct.hdcp2_ake_send_pairing_info* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %37
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
