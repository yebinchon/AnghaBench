; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_remote_dpcd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_remote_dpcd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_rx = type { i32*, i32 }
%struct.drm_dp_sideband_msg_reply_body = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"parse length fail %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*)* @drm_dp_sideband_parse_remote_dpcd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_sideband_parse_remote_dpcd_write(%struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_reply_body* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_sideband_msg_rx*, align 8
  %5 = alloca %struct.drm_dp_sideband_msg_reply_body*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_rx** %4, align 8
  store %struct.drm_dp_sideband_msg_reply_body* %1, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %8 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  %15 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %16 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %23 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %31 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
