; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_topology_mgr_set_mst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_topology_mgr_set_mst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32, i32*, i32, i32, i64, i64, i32, i32, %struct.drm_dp_mst_branch*, i32, i32 }
%struct.drm_dp_mst_branch = type { %struct.drm_dp_mst_topology_mgr* }
%struct.drm_dp_payload = type { i32, i64 }

@DP_DPCD_REV = common dso_local global i32 0, align 4
@DP_RECEIVER_CAP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to read DPCD\0A\00", align 1
@DP_MAX_LANE_COUNT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DP_MSTM_CTRL = common dso_local global i32 0, align 4
@DP_MST_EN = common dso_local global i32 0, align 4
@DP_UP_REQ_EN = common dso_local global i32 0, align 4
@DP_UPSTREAM_IS_SRC = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_mst_topology_mgr_set_mst(%struct.drm_dp_mst_topology_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_dp_mst_branch*, align 8
  %7 = alloca %struct.drm_dp_payload, align 8
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.drm_dp_mst_branch* null, %struct.drm_dp_mst_branch** %6, align 8
  %8 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %9 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %8, i32 0, i32 3
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %131

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %20 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %102

23:                                               ; preds = %17
  %24 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %25 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %24, i32 0, i32 8
  %26 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %25, align 8
  %27 = call i32 @WARN_ON(%struct.drm_dp_mst_branch* %26)
  %28 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %29 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DP_DPCD_REV, align 4
  %32 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %33 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @DP_RECEIVER_CAP_SIZE, align 4
  %36 = call i32 @drm_dp_dpcd_read(i32 %30, i32 %31, i32* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DP_RECEIVER_CAP_SIZE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %131

42:                                               ; preds = %23
  %43 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %44 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %49 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DP_MAX_LANE_COUNT_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %56 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %55, i32 0, i32 10
  %57 = call i32 @drm_dp_get_vc_payload_bw(i32 %47, i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %42
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %131

62:                                               ; preds = %42
  %63 = call %struct.drm_dp_mst_branch* @drm_dp_add_mst_branch_device(i32 1, i32* null)
  store %struct.drm_dp_mst_branch* %63, %struct.drm_dp_mst_branch** %6, align 8
  %64 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %65 = icmp eq %struct.drm_dp_mst_branch* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %131

69:                                               ; preds = %62
  %70 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %71 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %72 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %71, i32 0, i32 0
  store %struct.drm_dp_mst_topology_mgr* %70, %struct.drm_dp_mst_topology_mgr** %72, align 8
  %73 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %74 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %75 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %74, i32 0, i32 8
  store %struct.drm_dp_mst_branch* %73, %struct.drm_dp_mst_branch** %75, align 8
  %76 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %77 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %76, i32 0, i32 8
  %78 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %77, align 8
  %79 = call i32 @drm_dp_mst_topology_get_mstb(%struct.drm_dp_mst_branch* %78)
  %80 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %81 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DP_MSTM_CTRL, align 4
  %84 = load i32, i32* @DP_MST_EN, align 4
  %85 = load i32, i32* @DP_UP_REQ_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DP_UPSTREAM_IS_SRC, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @drm_dp_dpcd_writeb(i32 %82, i32 %83, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %69
  br label %131

93:                                               ; preds = %69
  %94 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %7, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %7, i32 0, i32 0
  store i32 63, i32* %95, align 8
  %96 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %97 = call i32 @drm_dp_dpcd_write_payload(%struct.drm_dp_mst_topology_mgr* %96, i32 0, %struct.drm_dp_payload* %7)
  %98 = load i32, i32* @system_long_wq, align 4
  %99 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %100 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %99, i32 0, i32 9
  %101 = call i32 @queue_work(i32 %98, i32* %100)
  store i32 0, i32* %5, align 4
  br label %130

102:                                              ; preds = %17
  %103 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %104 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %103, i32 0, i32 8
  %105 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %104, align 8
  store %struct.drm_dp_mst_branch* %105, %struct.drm_dp_mst_branch** %6, align 8
  %106 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %107 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %106, i32 0, i32 8
  store %struct.drm_dp_mst_branch* null, %struct.drm_dp_mst_branch** %107, align 8
  %108 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %109 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DP_MSTM_CTRL, align 4
  %112 = call i32 @drm_dp_dpcd_writeb(i32 %110, i32 %111, i32 0)
  store i32 0, i32* %5, align 4
  %113 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %114 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %117 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 16
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memset(i32 %115, i32 0, i32 %121)
  %123 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %124 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  %125 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %126 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %125, i32 0, i32 5
  %127 = call i32 @set_bit(i32 0, i64* %126)
  %128 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %129 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %102, %93
  br label %131

131:                                              ; preds = %130, %92, %66, %59, %40, %16
  %132 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %133 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %132, i32 0, i32 3
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %136 = icmp ne %struct.drm_dp_mst_branch* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %139 = call i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch* %138)
  br label %140

140:                                              ; preds = %137, %131
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(%struct.drm_dp_mst_branch*) #1

declare dso_local i32 @drm_dp_dpcd_read(i32, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_dp_get_vc_payload_bw(i32, i32, i32*) #1

declare dso_local %struct.drm_dp_mst_branch* @drm_dp_add_mst_branch_device(i32, i32*) #1

declare dso_local i32 @drm_dp_mst_topology_get_mstb(%struct.drm_dp_mst_branch*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_write_payload(%struct.drm_dp_mst_topology_mgr*, i32, %struct.drm_dp_payload*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
