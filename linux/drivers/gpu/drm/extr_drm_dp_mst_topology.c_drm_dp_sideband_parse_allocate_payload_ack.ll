; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_allocate_payload_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_allocate_payload_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_rx = type { i32*, i32 }
%struct.drm_dp_sideband_msg_reply_body = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"allocate payload parse length fail %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*)* @drm_dp_sideband_parse_allocate_payload_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_sideband_parse_allocate_payload_ack(%struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_reply_body* %1) #0 {
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
  %14 = ashr i32 %13, 4
  %15 = and i32 %14, 15
  %16 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %17 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %16, i32 0, i32 0
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
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %30 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %37 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %44 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %79

48:                                               ; preds = %28
  %49 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %50 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %58 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %56, %64
  %66 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %67 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %74 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  br label %79

78:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %85

79:                                               ; preds = %77, %47, %27
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %82 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %78
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
