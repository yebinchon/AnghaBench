; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_build_vrr_infopacket_header_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_build_vrr_infopacket_header_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_info_packet = type { i32, i32, i32, i32 }

@DC_HDMI_INFOFRAME_TYPE_SPD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dc_info_packet*, i32*)* @build_vrr_infopacket_header_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_vrr_infopacket_header_v2(i32 %0, %struct.dc_info_packet* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_info_packet*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dc_info_packet* %1, %struct.dc_info_packet** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @dc_is_hdmi_signal(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i8*, i8** @DC_HDMI_INFOFRAME_TYPE_SPD, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %14 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %16 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %15, i32 0, i32 1
  store i32 2, i32* %16, align 4
  %17 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %18 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %17, i32 0, i32 2
  store i32 9, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 10, i32* %19, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @dc_is_dp_signal(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %26 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i8*, i8** @DC_HDMI_INFOFRAME_TYPE_SPD, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %30 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %32 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %31, i32 0, i32 2
  store i32 27, i32* %32, align 4
  %33 = load %struct.dc_info_packet*, %struct.dc_info_packet** %5, align 8
  %34 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %33, i32 0, i32 3
  store i32 8, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 27, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %20
  br label %37

37:                                               ; preds = %36, %10
  ret void
}

declare dso_local i64 @dc_is_hdmi_signal(i32) #1

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
