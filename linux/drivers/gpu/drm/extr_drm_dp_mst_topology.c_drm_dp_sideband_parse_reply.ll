; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_rx = type { i32* }
%struct.drm_dp_sideband_msg_reply_body = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DP_SIDEBAND_REPLY_NAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Got unknown reply 0x%02x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*)* @drm_dp_sideband_parse_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_sideband_parse_reply(%struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_reply_body* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_sideband_msg_rx*, align 8
  %5 = alloca %struct.drm_dp_sideband_msg_reply_body*, align 8
  store %struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_rx** %4, align 8
  store %struct.drm_dp_sideband_msg_reply_body* %1, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %6 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %7 = call i32 @memset(%struct.drm_dp_sideband_msg_reply_body* %6, i32 0, i32 20)
  %8 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %9 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 128
  %14 = ashr i32 %13, 7
  %15 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %16 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %18 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 127
  %23 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %24 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %26 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DP_SIDEBAND_REPLY_NAK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %2
  %31 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %32 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %37 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = call i32 @memcpy(i32 %35, i32* %39, i32 16)
  %41 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %42 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 17
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %47 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %51 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 18
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %56 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %104

59:                                               ; preds = %2
  %60 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %61 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %95 [
    i32 134, label %63
    i32 131, label %67
    i32 130, label %71
    i32 129, label %75
    i32 128, label %79
    i32 135, label %83
    i32 136, label %87
    i32 133, label %91
    i32 132, label %91
  ]

63:                                               ; preds = %59
  %64 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %65 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %66 = call i32 @drm_dp_sideband_parse_link_address(%struct.drm_dp_sideband_msg_rx* %64, %struct.drm_dp_sideband_msg_reply_body* %65)
  store i32 %66, i32* %3, align 4
  br label %104

67:                                               ; preds = %59
  %68 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %69 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %70 = call i32 @drm_dp_sideband_parse_query_payload_ack(%struct.drm_dp_sideband_msg_rx* %68, %struct.drm_dp_sideband_msg_reply_body* %69)
  store i32 %70, i32* %3, align 4
  br label %104

71:                                               ; preds = %59
  %72 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %73 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %74 = call i32 @drm_dp_sideband_parse_remote_dpcd_read(%struct.drm_dp_sideband_msg_rx* %72, %struct.drm_dp_sideband_msg_reply_body* %73)
  store i32 %74, i32* %3, align 4
  br label %104

75:                                               ; preds = %59
  %76 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %77 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %78 = call i32 @drm_dp_sideband_parse_remote_dpcd_write(%struct.drm_dp_sideband_msg_rx* %76, %struct.drm_dp_sideband_msg_reply_body* %77)
  store i32 %78, i32* %3, align 4
  br label %104

79:                                               ; preds = %59
  %80 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %81 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %82 = call i32 @drm_dp_sideband_parse_remote_i2c_read_ack(%struct.drm_dp_sideband_msg_rx* %80, %struct.drm_dp_sideband_msg_reply_body* %81)
  store i32 %82, i32* %3, align 4
  br label %104

83:                                               ; preds = %59
  %84 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %85 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %86 = call i32 @drm_dp_sideband_parse_enum_path_resources_ack(%struct.drm_dp_sideband_msg_rx* %84, %struct.drm_dp_sideband_msg_reply_body* %85)
  store i32 %86, i32* %3, align 4
  br label %104

87:                                               ; preds = %59
  %88 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %89 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %90 = call i32 @drm_dp_sideband_parse_allocate_payload_ack(%struct.drm_dp_sideband_msg_rx* %88, %struct.drm_dp_sideband_msg_reply_body* %89)
  store i32 %90, i32* %3, align 4
  br label %104

91:                                               ; preds = %59, %59
  %92 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %93 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %94 = call i32 @drm_dp_sideband_parse_power_updown_phy_ack(%struct.drm_dp_sideband_msg_rx* %92, %struct.drm_dp_sideband_msg_reply_body* %93)
  store i32 %94, i32* %3, align 4
  br label %104

95:                                               ; preds = %59
  %96 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %97 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %100 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @drm_dp_mst_req_type_str(i32 %101)
  %103 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %95, %91, %87, %83, %79, %75, %71, %67, %63, %30
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @memset(%struct.drm_dp_sideband_msg_reply_body*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @drm_dp_sideband_parse_link_address(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @drm_dp_sideband_parse_query_payload_ack(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @drm_dp_sideband_parse_remote_dpcd_read(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @drm_dp_sideband_parse_remote_dpcd_write(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @drm_dp_sideband_parse_remote_i2c_read_ack(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @drm_dp_sideband_parse_enum_path_resources_ack(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @drm_dp_sideband_parse_allocate_payload_ack(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @drm_dp_sideband_parse_power_updown_phy_ack(%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @drm_dp_mst_req_type_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
