; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_propagate_stream_management_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_propagate_stream_management_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i64, i32, %struct.TYPE_6__, %struct.intel_hdcp_shim* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port*, %struct.hdcp2_rep_stream_manage*, i32)*, i32 (%struct.intel_digital_port.0*, i32, %struct.hdcp2_rep_stream_ready*, i32)* }
%struct.intel_digital_port = type opaque
%struct.hdcp2_rep_stream_manage = type opaque
%struct.intel_digital_port.0 = type opaque
%struct.hdcp2_rep_stream_ready = type opaque
%struct.intel_digital_port.1 = type { i32 }
%union.anon = type { %struct.hdcp2_rep_stream_manage.2 }
%struct.hdcp2_rep_stream_manage.2 = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.hdcp2_rep_stream_ready.3 = type { i32 }

@HDCP_2_2_REP_STREAM_MANAGE = common dso_local global i32 0, align 4
@HDCP_2_2_REP_STREAM_READY = common dso_local global i32 0, align 4
@HDCP_2_2_SEQ_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"seq_num_m roll over.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @hdcp2_propagate_stream_management_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_propagate_stream_management_info(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_digital_port.1*, align 8
  %5 = alloca %struct.intel_hdcp*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca %struct.intel_hdcp_shim*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %10 = call %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector* %9)
  store %struct.intel_digital_port.1* %10, %struct.intel_digital_port.1** %4, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 0
  store %struct.intel_hdcp* %12, %struct.intel_hdcp** %5, align 8
  %13 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %14 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %13, i32 0, i32 3
  %15 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %14, align 8
  store %struct.intel_hdcp_shim* %15, %struct.intel_hdcp_shim** %7, align 8
  %16 = load i32, i32* @HDCP_2_2_REP_STREAM_MANAGE, align 4
  %17 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_manage.2*
  %18 = getelementptr inbounds %struct.hdcp2_rep_stream_manage.2, %struct.hdcp2_rep_stream_manage.2* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_manage.2*
  %20 = getelementptr inbounds %struct.hdcp2_rep_stream_manage.2, %struct.hdcp2_rep_stream_manage.2* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %23 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @drm_hdcp_cpu_to_be24(i32 %21, i64 %24)
  %26 = call i32 @cpu_to_be16(i32 1)
  %27 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_manage.2*
  %28 = getelementptr inbounds %struct.hdcp2_rep_stream_manage.2, %struct.hdcp2_rep_stream_manage.2* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_manage.2*
  %30 = getelementptr inbounds %struct.hdcp2_rep_stream_manage.2, %struct.hdcp2_rep_stream_manage.2* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %35 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_manage.2*
  %38 = getelementptr inbounds %struct.hdcp2_rep_stream_manage.2, %struct.hdcp2_rep_stream_manage.2* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 8
  %42 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %7, align 8
  %43 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %42, i32 0, i32 0
  %44 = load i32 (%struct.intel_digital_port*, %struct.hdcp2_rep_stream_manage*, i32)*, i32 (%struct.intel_digital_port*, %struct.hdcp2_rep_stream_manage*, i32)** %43, align 8
  %45 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %46 = bitcast %struct.intel_digital_port.1* %45 to %struct.intel_digital_port*
  %47 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_manage.2*
  %48 = bitcast %struct.hdcp2_rep_stream_manage.2* %47 to %struct.hdcp2_rep_stream_manage*
  %49 = call i32 %44(%struct.intel_digital_port* %46, %struct.hdcp2_rep_stream_manage* %48, i32 24)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %104

54:                                               ; preds = %1
  %55 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %7, align 8
  %56 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %55, i32 0, i32 1
  %57 = load i32 (%struct.intel_digital_port.0*, i32, %struct.hdcp2_rep_stream_ready*, i32)*, i32 (%struct.intel_digital_port.0*, i32, %struct.hdcp2_rep_stream_ready*, i32)** %56, align 8
  %58 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %59 = bitcast %struct.intel_digital_port.1* %58 to %struct.intel_digital_port.0*
  %60 = load i32, i32* @HDCP_2_2_REP_STREAM_READY, align 4
  %61 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_ready.3*
  %62 = bitcast %struct.hdcp2_rep_stream_ready.3* %61 to %struct.hdcp2_rep_stream_ready*
  %63 = call i32 %57(%struct.intel_digital_port.0* %59, i32 %60, %struct.hdcp2_rep_stream_ready* %62, i32 4)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %104

68:                                               ; preds = %54
  %69 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %70 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %73 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %76 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %79 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %77, i32* %83, align 4
  %84 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %85 = bitcast %union.anon* %6 to %struct.hdcp2_rep_stream_ready.3*
  %86 = call i32 @hdcp2_verify_mprime(%struct.intel_connector* %84, %struct.hdcp2_rep_stream_ready.3* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %68
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %104

91:                                               ; preds = %68
  %92 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %93 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %97 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HDCP_2_2_SEQ_NUM_MAX, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %104

103:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %101, %89, %66, %52
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @drm_hdcp_cpu_to_be24(i32, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @hdcp2_verify_mprime(%struct.intel_connector*, %struct.hdcp2_rep_stream_ready.3*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
