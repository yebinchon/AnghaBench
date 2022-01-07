; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_authenticate_repeater_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_authenticate_repeater_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_2__, %struct.intel_hdcp }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_hdcp = type { i64, %struct.intel_hdcp_shim* }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port*, i32, %struct.hdcp2_rep_send_receiverid_list*, i32)*, i32 (%struct.intel_digital_port.0*, %struct.hdcp2_rep_send_ack*, i32)* }
%struct.intel_digital_port = type opaque
%struct.hdcp2_rep_send_receiverid_list = type opaque
%struct.intel_digital_port.0 = type opaque
%struct.hdcp2_rep_send_ack = type opaque
%struct.intel_digital_port.1 = type { i32 }
%union.anon = type { %struct.hdcp2_rep_send_receiverid_list.2 }
%struct.hdcp2_rep_send_receiverid_list.2 = type { i32, i64, i32* }
%struct.hdcp2_rep_send_ack.3 = type { i32 }

@HDCP_2_2_REP_SEND_RECVID_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Topology Max Size Exceeded\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Seq_num_v roll over.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Revoked receiver ID(s) is in list\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @hdcp2_authenticate_repeater_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_authenticate_repeater_topology(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_digital_port.1*, align 8
  %5 = alloca %struct.intel_hdcp*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca %struct.intel_hdcp_shim*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %14 = call %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector* %13)
  store %struct.intel_digital_port.1* %14, %struct.intel_digital_port.1** %4, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 1
  store %struct.intel_hdcp* %16, %struct.intel_hdcp** %5, align 8
  %17 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %6, align 8
  %21 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %22 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %21, i32 0, i32 1
  %23 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %22, align 8
  store %struct.intel_hdcp_shim* %23, %struct.intel_hdcp_shim** %8, align 8
  %24 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %8, align 8
  %25 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %24, i32 0, i32 0
  %26 = load i32 (%struct.intel_digital_port*, i32, %struct.hdcp2_rep_send_receiverid_list*, i32)*, i32 (%struct.intel_digital_port*, i32, %struct.hdcp2_rep_send_receiverid_list*, i32)** %25, align 8
  %27 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %28 = bitcast %struct.intel_digital_port.1* %27 to %struct.intel_digital_port*
  %29 = load i32, i32* @HDCP_2_2_REP_SEND_RECVID_LIST, align 4
  %30 = bitcast %union.anon* %7 to %struct.hdcp2_rep_send_receiverid_list.2*
  %31 = bitcast %struct.hdcp2_rep_send_receiverid_list.2* %30 to %struct.hdcp2_rep_send_receiverid_list*
  %32 = call i32 %26(%struct.intel_digital_port* %28, i32 %29, %struct.hdcp2_rep_send_receiverid_list* %31, i32 24)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %2, align 4
  br label %120

37:                                               ; preds = %1
  %38 = bitcast %union.anon* %7 to %struct.hdcp2_rep_send_receiverid_list.2*
  %39 = getelementptr inbounds %struct.hdcp2_rep_send_receiverid_list.2, %struct.hdcp2_rep_send_receiverid_list.2* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @HDCP_2_2_MAX_CASCADE_EXCEEDED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @HDCP_2_2_MAX_DEVS_EXCEEDED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %37
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %120

56:                                               ; preds = %46
  %57 = bitcast %union.anon* %7 to %struct.hdcp2_rep_send_receiverid_list.2*
  %58 = getelementptr inbounds %struct.hdcp2_rep_send_receiverid_list.2, %struct.hdcp2_rep_send_receiverid_list.2* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = call i64 @drm_hdcp_be24_to_cpu(i32* %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %64 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %120

71:                                               ; preds = %56
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @HDCP_2_2_DEV_COUNT_HI(i32 %74)
  %76 = shl i32 %75, 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @HDCP_2_2_DEV_COUNT_LO(i32 %79)
  %81 = or i32 %76, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %10, align 8
  %83 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %84 = bitcast %union.anon* %7 to %struct.hdcp2_rep_send_receiverid_list.2*
  %85 = getelementptr inbounds %struct.hdcp2_rep_send_receiverid_list.2, %struct.hdcp2_rep_send_receiverid_list.2* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @drm_hdcp_check_ksvs_revoked(%struct.drm_device* %83, i32 %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %71
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %120

94:                                               ; preds = %71
  %95 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %96 = bitcast %union.anon* %7 to %struct.hdcp2_rep_send_receiverid_list.2*
  %97 = bitcast %union.anon* %7 to %struct.hdcp2_rep_send_ack.3*
  %98 = call i32 @hdcp2_verify_rep_topology_prepare_ack(%struct.intel_connector* %95, %struct.hdcp2_rep_send_receiverid_list.2* %96, %struct.hdcp2_rep_send_ack.3* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %2, align 4
  br label %120

103:                                              ; preds = %94
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %106 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %8, align 8
  %108 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %107, i32 0, i32 1
  %109 = load i32 (%struct.intel_digital_port.0*, %struct.hdcp2_rep_send_ack*, i32)*, i32 (%struct.intel_digital_port.0*, %struct.hdcp2_rep_send_ack*, i32)** %108, align 8
  %110 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %111 = bitcast %struct.intel_digital_port.1* %110 to %struct.intel_digital_port.0*
  %112 = bitcast %union.anon* %7 to %struct.hdcp2_rep_send_ack.3*
  %113 = bitcast %struct.hdcp2_rep_send_ack.3* %112 to %struct.hdcp2_rep_send_ack*
  %114 = call i32 %109(%struct.intel_digital_port.0* %111, %struct.hdcp2_rep_send_ack* %113, i32 4)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %117, %101, %90, %67, %52, %35
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i64 @HDCP_2_2_MAX_CASCADE_EXCEEDED(i32) #1

declare dso_local i64 @HDCP_2_2_MAX_DEVS_EXCEEDED(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @drm_hdcp_be24_to_cpu(i32*) #1

declare dso_local i32 @HDCP_2_2_DEV_COUNT_HI(i32) #1

declare dso_local i32 @HDCP_2_2_DEV_COUNT_LO(i32) #1

declare dso_local i64 @drm_hdcp_check_ksvs_revoked(%struct.drm_device*, i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @hdcp2_verify_rep_topology_prepare_ack(%struct.intel_connector*, %struct.hdcp2_rep_send_receiverid_list.2*, %struct.hdcp2_rep_send_ack.3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
