; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_dpcd_write_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_dpcd_write_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_payload = type { i32, i32 }

@DP_PAYLOAD_TABLE_UPDATE_STATUS = common dso_local global i32 0, align 4
@DP_PAYLOAD_TABLE_UPDATED = common dso_local global i32 0, align 4
@DP_PAYLOAD_ALLOCATE_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to write payload allocation %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to read payload table status %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"status not set after read payload table status %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*, i32, %struct.drm_dp_payload*)* @drm_dp_dpcd_write_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_dpcd_write_payload(%struct.drm_dp_mst_topology_mgr* %0, i32 %1, %struct.drm_dp_payload* %2) #0 {
  %4 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_dp_payload*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_dp_payload* %2, %struct.drm_dp_payload** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %12 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DP_PAYLOAD_TABLE_UPDATE_STATUS, align 4
  %15 = load i32, i32* @DP_PAYLOAD_TABLE_UPDATED, align 4
  %16 = call i32 @drm_dp_dpcd_writeb(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %6, align 8
  %20 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %6, align 8
  %24 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %28 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DP_PAYLOAD_ALLOCATE_SET, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %32 = call i32 @drm_dp_dpcd_write(i32 %29, i32 %30, i32* %31, i32 3)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %68

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %60, %38
  %40 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %41 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DP_PAYLOAD_TABLE_UPDATE_STATUS, align 4
  %44 = call i32 @drm_dp_dpcd_readb(i32 %42, i32 %43, i32* %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %68

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @DP_PAYLOAD_TABLE_UPDATED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 20
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %39

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %68

67:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %62, %47, %35
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @drm_dp_dpcd_writeb(i32, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_write(i32, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
