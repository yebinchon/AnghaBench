; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_one_sb_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_one_sb_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx }
%struct.drm_dp_sideband_msg_rx = type { i32, i32 }

@DP_SIDEBAND_MSG_UP_REQ_BASE = common dso_local global i32 0, align 4
@DP_SIDEBAND_MSG_DOWN_REP_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to read DPCD down rep %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"sideband msg build failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to read a chunk (len %d, ret %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to build sideband msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*, i32)* @drm_dp_get_one_sb_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_get_one_sb_msg(%struct.drm_dp_mst_topology_mgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_dp_sideband_msg_rx*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @DP_SIDEBAND_MSG_UP_REQ_BASE, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DP_SIDEBAND_MSG_DOWN_REP_BASE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %26 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %25, i32 0, i32 3
  br label %30

27:                                               ; preds = %20
  %28 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %29 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %28, i32 0, i32 2
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi %struct.drm_dp_sideband_msg_rx* [ %26, %24 ], [ %29, %27 ]
  store %struct.drm_dp_sideband_msg_rx* %31, %struct.drm_dp_sideband_msg_rx** %12, align 8
  %32 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %33 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @min(i32 %34, i32 16)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %37 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @drm_dp_dpcd_read(i32 %38, i32 %39, i32* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %116

50:                                               ; preds = %30
  %51 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %12, align 8
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @drm_dp_sideband_msg_build(%struct.drm_dp_sideband_msg_rx* %51, i32* %52, i32 %53, i32 1)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 0, i32* %3, align 4
  br label %116

61:                                               ; preds = %50
  %62 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %12, align 8
  %63 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %12, align 8
  %66 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %108, %61
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %80 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @min3(i32 %78, i32 %81, i32 16)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %84 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @drm_dp_dpcd_read(i32 %85, i32 %88, i32* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %77
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  store i32 0, i32* %3, align 4
  br label %116

99:                                               ; preds = %77
  %100 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %12, align 8
  %101 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @drm_dp_sideband_msg_build(%struct.drm_dp_sideband_msg_rx* %100, i32* %101, i32 %102, i32 0)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %116

108:                                              ; preds = %99
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %74

115:                                              ; preds = %74
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %106, %95, %57, %46
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_read(i32, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_dp_sideband_msg_build(%struct.drm_dp_sideband_msg_rx*, i32*, i32, i32) #1

declare dso_local i32 @min3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
