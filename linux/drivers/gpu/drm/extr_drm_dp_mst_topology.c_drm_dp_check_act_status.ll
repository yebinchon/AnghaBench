; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_check_act_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_check_act_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }

@DP_PAYLOAD_TABLE_UPDATE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to read payload table status %d\0A\00", align 1
@DP_PAYLOAD_ACT_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to get ACT bit %d after %d retries\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_check_act_status(%struct.drm_dp_mst_topology_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %9 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DP_PAYLOAD_TABLE_UPDATE_STATUS, align 4
  %12 = call i32 @drm_dp_dpcd_readb(i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %43

18:                                               ; preds = %7
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DP_PAYLOAD_ACT_HANDLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = call i32 @udelay(i32 100)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 30
  br i1 %30, label %7, label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DP_PAYLOAD_ACT_HANDLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %45

43:                                               ; preds = %36, %15
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @drm_dp_dpcd_readb(i32, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
