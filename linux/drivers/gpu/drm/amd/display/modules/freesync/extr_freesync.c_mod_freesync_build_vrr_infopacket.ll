; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_build_vrr_infopacket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_build_vrr_infopacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.mod_vrr_params = type { i32, i32 }
%struct.dc_info_packet = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_freesync_build_vrr_infopacket(%struct.mod_freesync* %0, %struct.dc_stream_state* %1, %struct.mod_vrr_params* %2, i32 %3, i32 %4, %struct.dc_info_packet* %5) #0 {
  %7 = alloca %struct.mod_freesync*, align 8
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca %struct.mod_vrr_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dc_info_packet*, align 8
  store %struct.mod_freesync* %0, %struct.mod_freesync** %7, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %8, align 8
  store %struct.mod_vrr_params* %2, %struct.mod_vrr_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.dc_info_packet* %5, %struct.dc_info_packet** %12, align 8
  %13 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %9, align 8
  %14 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %9, align 8
  %19 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %6
  br label %41

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %34 [
    i32 129, label %25
    i32 128, label %33
    i32 130, label %33
  ]

25:                                               ; preds = %23
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %27 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.dc_info_packet*, %struct.dc_info_packet** %12, align 8
  %32 = call i32 @build_vrr_infopacket_v2(i32 %28, %struct.mod_vrr_params* %29, i32 %30, %struct.dc_info_packet* %31)
  br label %41

33:                                               ; preds = %23, %23
  br label %34

34:                                               ; preds = %23, %33
  %35 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %36 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %9, align 8
  %39 = load %struct.dc_info_packet*, %struct.dc_info_packet** %12, align 8
  %40 = call i32 @build_vrr_infopacket_v1(i32 %37, %struct.mod_vrr_params* %38, %struct.dc_info_packet* %39)
  br label %41

41:                                               ; preds = %22, %34, %25
  ret void
}

declare dso_local i32 @build_vrr_infopacket_v2(i32, %struct.mod_vrr_params*, i32, %struct.dc_info_packet*) #1

declare dso_local i32 @build_vrr_infopacket_v1(i32, %struct.mod_vrr_params*, %struct.dc_info_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
