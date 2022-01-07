; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_hdr_info_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_hdr_info_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dc_info_packet = type { i32, i32, i32, i8*, i32, i32 }
%struct.hdmi_drm_infoframe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HDR SB:\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector_state*, %struct.dc_info_packet*)* @fill_hdr_info_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_hdr_info_packet(%struct.drm_connector_state* %0, %struct.dc_info_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.dc_info_packet*, align 8
  %6 = alloca %struct.hdmi_drm_infoframe, align 4
  %7 = alloca [30 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %4, align 8
  store %struct.dc_info_packet* %1, %struct.dc_info_packet** %5, align 8
  %11 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %12 = call i32 @memset(%struct.dc_info_packet* %11, i32 0, i32 32)
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %20 = call i32 @drm_hdmi_infoframe_set_hdr_metadata(%struct.hdmi_drm_infoframe* %6, %struct.drm_connector_state* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %18
  %26 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %27 = call i32 @hdmi_drm_infoframe_pack_only(%struct.hdmi_drm_infoframe* %6, i8* %26, i32 30)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %96

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 30
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %96

38:                                               ; preds = %32
  %39 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %40 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %74 [
    i32 129, label %44
    i32 130, label %57
    i32 128, label %57
  ]

44:                                               ; preds = %38
  %45 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %46 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %45, i32 0, i32 0
  store i32 135, i32* %46, align 8
  %47 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %48 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %50 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %49, i32 0, i32 2
  store i32 26, i32* %50, align 8
  %51 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %54 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %52, i8* %56, align 1
  store i32 1, i32* %10, align 4
  br label %77

57:                                               ; preds = %38, %38
  %58 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %59 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %61 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %60, i32 0, i32 1
  store i32 135, i32* %61, align 4
  %62 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %63 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %62, i32 0, i32 2
  store i32 29, i32* %63, align 8
  %64 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %65 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %64, i32 0, i32 4
  store i32 76, i32* %65, align 8
  %66 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %67 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 1, i8* %69, align 1
  %70 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %71 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 26, i8* %73, align 1
  store i32 2, i32* %10, align 4
  br label %77

74:                                               ; preds = %38
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %96

77:                                               ; preds = %57, %44
  %78 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %79 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = bitcast i8* %83 to i32*
  %85 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 4
  %86 = call i32 @memcpy(i32* %84, i8* %85, i32 26)
  %87 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %88 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %87, i32 0, i32 5
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* @KERN_DEBUG, align 4
  %90 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %91 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %92 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = call i32 @print_hex_dump(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %90, i32 16, i32 1, i32* %94, i32 8, i32 0)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %77, %74, %35, %30, %23, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.dc_info_packet*, i32, i32) #1

declare dso_local i32 @drm_hdmi_infoframe_set_hdr_metadata(%struct.hdmi_drm_infoframe*, %struct.drm_connector_state*) #1

declare dso_local i32 @hdmi_drm_infoframe_pack_only(%struct.hdmi_drm_infoframe*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
