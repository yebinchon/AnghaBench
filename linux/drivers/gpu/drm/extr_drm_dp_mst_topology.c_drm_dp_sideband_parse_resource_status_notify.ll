; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_resource_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_resource_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_rx = type { i32*, i32 }
%struct.drm_dp_sideband_msg_req_body = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"resource status reply parse length fail %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_req_body*)* @drm_dp_sideband_parse_resource_status_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_sideband_parse_resource_status_notify(%struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_req_body* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_sideband_msg_rx*, align 8
  %5 = alloca %struct.drm_dp_sideband_msg_req_body*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_rx** %4, align 8
  store %struct.drm_dp_sideband_msg_req_body* %1, %struct.drm_dp_sideband_msg_req_body** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %8 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 240
  %15 = ashr i32 %14, 4
  %16 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %5, align 8
  %17 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %24 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %73

28:                                               ; preds = %2
  %29 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %5, align 8
  %30 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %35 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @memcpy(i32 %33, i32* %39, i32 16)
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 16
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %45 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %73

49:                                               ; preds = %28
  %50 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %51 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %59 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %57, %65
  %67 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %5, align 8
  %68 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %3, align 4
  br label %79

73:                                               ; preds = %48, %27
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %76 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %49
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
