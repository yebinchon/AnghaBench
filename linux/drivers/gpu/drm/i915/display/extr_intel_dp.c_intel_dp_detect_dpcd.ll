; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_detect_dpcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_detect_dpcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.intel_lspcon = type { i64 }

@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DS_PORT_HPD = common dso_local global i32 0, align 4
@DP_DS_PORT_TYPE_MASK = common dso_local global i32 0, align 4
@DP_DS_PORT_TYPE_VGA = common dso_local global i32 0, align 4
@DP_DS_PORT_TYPE_NON_EDID = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@DP_DOWNSTREAMPORT_PRESENT = common dso_local global i64 0, align 8
@DP_DWN_STRM_PORT_TYPE_MASK = common dso_local global i32 0, align 4
@DP_DWN_STRM_PORT_TYPE_ANALOG = common dso_local global i32 0, align 4
@DP_DWN_STRM_PORT_TYPE_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Broken DP branch device, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_detect_dpcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_detect_dpcd(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_lspcon*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %8 = call %struct.intel_lspcon* @dp_to_lspcon(%struct.intel_dp* %7)
  store %struct.intel_lspcon* %8, %struct.intel_lspcon** %4, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %10 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = call i32 @intel_dp_is_edp(%struct.intel_dp* %12)
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @connector_status_connected, align 4
  store i32 %17, i32* %2, align 4
  br label %128

18:                                               ; preds = %1
  %19 = load %struct.intel_lspcon*, %struct.intel_lspcon** %4, align 8
  %20 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.intel_lspcon*, %struct.intel_lspcon** %4, align 8
  %25 = call i32 @lspcon_resume(%struct.intel_lspcon* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %28 = call i32 @intel_dp_get_dpcd(%struct.intel_dp* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %31, i32* %2, align 4
  br label %128

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @drm_dp_is_branch(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @connector_status_connected, align 4
  store i32 %37, i32* %2, align 4
  br label %128

38:                                               ; preds = %32
  %39 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %40 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @DP_DPCD_REV, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 17
  br i1 %45, label %46, label %66

46:                                               ; preds = %38
  %47 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %48 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DP_DS_PORT_HPD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %46
  %56 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @connector_status_connected, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @connector_status_disconnected, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %2, align 4
  br label %128

66:                                               ; preds = %46, %38
  %67 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %68 = call i64 @intel_dp_can_mst(%struct.intel_dp* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @connector_status_connected, align 4
  store i32 %71, i32* %2, align 4
  br label %128

72:                                               ; preds = %66
  %73 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %74 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i64 @drm_probe_ddc(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @connector_status_connected, align 4
  store i32 %79, i32* %2, align 4
  br label %128

80:                                               ; preds = %72
  %81 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %82 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @DP_DPCD_REV, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 17
  br i1 %87, label %88, label %106

88:                                               ; preds = %80
  %89 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %90 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DP_DS_PORT_TYPE_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @DP_DS_PORT_TYPE_VGA, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @DP_DS_PORT_TYPE_NON_EDID, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %88
  %104 = load i32, i32* @connector_status_unknown, align 4
  store i32 %104, i32* %2, align 4
  br label %128

105:                                              ; preds = %99
  br label %125

106:                                              ; preds = %80
  %107 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %108 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @DP_DOWNSTREAMPORT_PRESENT, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DP_DWN_STRM_PORT_TYPE_MASK, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @DP_DWN_STRM_PORT_TYPE_ANALOG, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @DP_DWN_STRM_PORT_TYPE_OTHER, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %106
  %123 = load i32, i32* @connector_status_unknown, align 4
  store i32 %123, i32* %2, align 4
  br label %128

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %105
  %126 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %127 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %125, %122, %103, %78, %70, %64, %36, %30, %16
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.intel_lspcon* @dp_to_lspcon(%struct.intel_dp*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @lspcon_resume(%struct.intel_lspcon*) #1

declare dso_local i32 @intel_dp_get_dpcd(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_is_branch(i32*) #1

declare dso_local i64 @intel_dp_can_mst(%struct.intel_dp*) #1

declare dso_local i64 @drm_probe_ddc(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
