; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_verify_rx_cert_prepare_km.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_verify_rx_cert_prepare_km.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.hdcp_port_data }
%struct.hdcp_port_data = type { i32 }
%struct.hdcp2_ake_send_cert = type { i32 }
%struct.hdcp2_ake_no_stored_km = type { i32 }
%struct.drm_i915_private = type { i32, %struct.i915_hdcp_comp_master* }
%struct.i915_hdcp_comp_master = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_cert*, i32*, %struct.hdcp2_ake_no_stored_km*, i64*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Verify rx_cert failed. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, %struct.hdcp2_ake_send_cert*, i32*, %struct.hdcp2_ake_no_stored_km*, i64*)* @hdcp2_verify_rx_cert_prepare_km to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_verify_rx_cert_prepare_km(%struct.intel_connector* %0, %struct.hdcp2_ake_send_cert* %1, i32* %2, %struct.hdcp2_ake_no_stored_km* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca %struct.hdcp2_ake_send_cert*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hdcp2_ake_no_stored_km*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.hdcp_port_data*, align 8
  %13 = alloca %struct.drm_i915_private*, align 8
  %14 = alloca %struct.i915_hdcp_comp_master*, align 8
  %15 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %7, align 8
  store %struct.hdcp2_ake_send_cert* %1, %struct.hdcp2_ake_send_cert** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.hdcp2_ake_no_stored_km* %3, %struct.hdcp2_ake_no_stored_km** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.hdcp_port_data* %18, %struct.hdcp_port_data** %12, align 8
  %19 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %20 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %13, align 8
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 1
  %29 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %28, align 8
  store %struct.i915_hdcp_comp_master* %29, %struct.i915_hdcp_comp_master** %14, align 8
  %30 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %14, align 8
  %31 = icmp ne %struct.i915_hdcp_comp_master* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %14, align 8
  %34 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %5
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %68

43:                                               ; preds = %32
  %44 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %14, align 8
  %45 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_cert*, i32*, %struct.hdcp2_ake_no_stored_km*, i64*)*, i32 (i32, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_cert*, i32*, %struct.hdcp2_ake_no_stored_km*, i64*)** %47, align 8
  %49 = load %struct.i915_hdcp_comp_master*, %struct.i915_hdcp_comp_master** %14, align 8
  %50 = getelementptr inbounds %struct.i915_hdcp_comp_master, %struct.i915_hdcp_comp_master* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %12, align 8
  %53 = load %struct.hdcp2_ake_send_cert*, %struct.hdcp2_ake_send_cert** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.hdcp2_ake_no_stored_km*, %struct.hdcp2_ake_no_stored_km** %10, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = call i32 %48(i32 %51, %struct.hdcp_port_data* %52, %struct.hdcp2_ake_send_cert* %53, i32* %54, %struct.hdcp2_ake_no_stored_km* %55, i64* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %43
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %63, %37
  %69 = load i32, i32* %6, align 4
  ret i32 %69
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
