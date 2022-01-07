; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_build_vrr_infopacket_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_build_vrr_infopacket_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_vrr_params = type { i64, i32, i32 }
%struct.dc_info_packet = type { i32* }

@VRR_STATE_UNSUPPORTED = common dso_local global i64 0, align 8
@VRR_STATE_DISABLED = common dso_local global i64 0, align 8
@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i64 0, align 8
@VRR_STATE_ACTIVE_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mod_vrr_params*, %struct.dc_info_packet*)* @build_vrr_infopacket_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_vrr_infopacket_data(%struct.mod_vrr_params* %0, %struct.dc_info_packet* %1) #0 {
  %3 = alloca %struct.mod_vrr_params*, align 8
  %4 = alloca %struct.dc_info_packet*, align 8
  store %struct.mod_vrr_params* %0, %struct.mod_vrr_params** %3, align 8
  store %struct.dc_info_packet* %1, %struct.dc_info_packet** %4, align 8
  %5 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %6 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 26, i32* %8, align 4
  %9 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %10 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %14 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 0, i32* %16, align 4
  %17 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %3, align 8
  %18 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VRR_STATE_UNSUPPORTED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %24 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %3, align 8
  %31 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VRR_STATE_DISABLED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %3, align 8
  %37 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VRR_STATE_UNSUPPORTED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %43 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, 2
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41, %35, %29
  %49 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %3, align 8
  %50 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VRR_STATE_ACTIVE_VARIABLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %3, align 8
  %56 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VRR_STATE_ACTIVE_FIXED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54, %48
  %61 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %62 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, 4
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %54
  %68 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %3, align 8
  %69 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sdiv i32 %70, 1000000
  %72 = trunc i32 %71 to i8
  %73 = zext i8 %72 to i32
  %74 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %75 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 7
  store i32 %73, i32* %77, align 4
  %78 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %3, align 8
  %79 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 1000000
  %82 = trunc i32 %81 to i8
  %83 = zext i8 %82 to i32
  %84 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %85 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  store i32 %83, i32* %87, align 4
  %88 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %89 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 9
  store i32 0, i32* %91, align 4
  %92 = load %struct.dc_info_packet*, %struct.dc_info_packet** %4, align 8
  %93 = getelementptr inbounds %struct.dc_info_packet, %struct.dc_info_packet* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 10
  store i32 0, i32* %95, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
