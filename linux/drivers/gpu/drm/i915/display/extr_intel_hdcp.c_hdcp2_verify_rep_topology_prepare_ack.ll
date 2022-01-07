; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_verify_rep_topology_prepare_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_verify_rep_topology_prepare_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.hdcp_port_data }
%struct.hdcp_port_data = type { i32 }
%struct.hdcp2_rep_send_receiverid_list = type { i32 }
%struct.hdcp2_rep_send_ack = type { i32 }
%struct.drm_i915_private = type { i32, %struct.i915_hdcp_comp_master* }
%struct.i915_hdcp_comp_master = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_ack*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Verify rep topology failed. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_ack*)* @hdcp2_verify_rep_topology_prepare_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_verify_rep_topology_prepare_ack(%struct.intel_connector* %0, %struct.hdcp2_rep_send_receiverid_list* %1, %struct.hdcp2_rep_send_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.hdcp2_rep_send_receiverid_list*, align 8
  %7 = alloca %struct.hdcp2_rep_send_ack*, align 8
  %8 = alloca %struct.hdcp_port_data*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.i915_hdcp_comp_master*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %5, align 8
  store %struct.hdcp2_rep_send_receiverid_list* %1, %struct.hdcp2_rep_send_receiverid_list** %6, align 8
  store %struct.hdcp2_rep_send_ack* %2, %struct.hdcp2_rep_send_ack** %7, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.hdcp_port_data* %14, %struct.hdcp_port_data** %8, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %9, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 1
  %25 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %24, align 8
  store %struct.i915_hdcp_comp_master* %25, %struct.i915_hdcp_comp_master** %10, align 8
  %26 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %10, align 8
  %27 = icmp ne %struct.i915_hdcp_comp_master* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %10, align 8
  %30 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %28
  %40 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %10, align 8
  %41 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_ack*)*, i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_ack*)** %43, align 8
  %45 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %10, align 8
  %46 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %8, align 8
  %49 = load %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_receiverid_list** %6, align 8
  %50 = load %struct.hdcp2_rep_send_ack*, %struct.hdcp2_rep_send_ack** %7, align 8
  %51 = call i32 %44(i32 %47, %struct.hdcp_port_data* %48, %struct.hdcp2_rep_send_receiverid_list* %49, %struct.hdcp2_rep_send_ack* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %39
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %33
  %63 = load i32, i32* %4, align 4
  ret i32 %63
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
