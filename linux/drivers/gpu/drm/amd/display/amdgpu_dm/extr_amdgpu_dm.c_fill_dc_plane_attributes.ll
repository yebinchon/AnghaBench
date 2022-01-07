; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_dc_plane_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_dc_plane_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.dc_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_plane_state = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.dm_crtc_state = type { i32 }
%struct.amdgpu_framebuffer = type { i32 }
%struct.dc_scaling_info = type { i32, i32, i32, i32 }
%struct.dc_plane_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.dc_plane_state*, %struct.drm_plane_state*, %struct.drm_crtc_state*)* @fill_dc_plane_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_dc_plane_attributes(%struct.amdgpu_device* %0, %struct.dc_plane_state* %1, %struct.drm_plane_state* %2, %struct.drm_crtc_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.dc_plane_state*, align 8
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  %10 = alloca %struct.dm_crtc_state*, align 8
  %11 = alloca %struct.amdgpu_framebuffer*, align 8
  %12 = alloca %struct.dc_scaling_info, align 4
  %13 = alloca %struct.dc_plane_info, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %7, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %8, align 8
  store %struct.drm_crtc_state* %3, %struct.drm_crtc_state** %9, align 8
  %16 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %17 = call %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state* %16)
  store %struct.dm_crtc_state* %17, %struct.dm_crtc_state** %10, align 8
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.amdgpu_framebuffer* @to_amdgpu_framebuffer(i32 %20)
  store %struct.amdgpu_framebuffer* %21, %struct.amdgpu_framebuffer** %11, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %23 = call i32 @fill_dc_scaling_info(%struct.drm_plane_state* %22, %struct.dc_scaling_info* %12)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %5, align 4
  br label %127

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %12, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %32 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %31, i32 0, i32 17
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %12, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %36 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %35, i32 0, i32 16
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %40 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %39, i32 0, i32 15
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %44 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %43, i32 0, i32 14
  store i32 %42, i32* %44, align 4
  %45 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %11, align 8
  %46 = call i32 @get_fb_info(%struct.amdgpu_framebuffer* %45, i32* %14)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %28
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %5, align 4
  br label %127

51:                                               ; preds = %28
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %56 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %55, i32 0, i32 13
  %57 = call i32 @fill_dc_plane_info_and_addr(%struct.amdgpu_device* %52, %struct.drm_plane_state* %53, i32 %54, %struct.dc_plane_info* %13, i32* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %5, align 4
  br label %127

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %66 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 12
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %70 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %74 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %78 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %82 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %86 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %90 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %94 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %98 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %102 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %106 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %110 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %114 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.dc_plane_info, %struct.dc_plane_info* %13, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %118 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %10, align 8
  %120 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  %121 = call i32 @amdgpu_dm_update_plane_color_mgmt(%struct.dm_crtc_state* %119, %struct.dc_plane_state* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %62
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %5, align 4
  br label %127

126:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %124, %60, %49, %26
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local %struct.amdgpu_framebuffer* @to_amdgpu_framebuffer(i32) #1

declare dso_local i32 @fill_dc_scaling_info(%struct.drm_plane_state*, %struct.dc_scaling_info*) #1

declare dso_local i32 @get_fb_info(%struct.amdgpu_framebuffer*, i32*) #1

declare dso_local i32 @fill_dc_plane_info_and_addr(%struct.amdgpu_device*, %struct.drm_plane_state*, i32, %struct.dc_plane_info*, i32*) #1

declare dso_local i32 @amdgpu_dm_update_plane_color_mgmt(%struct.dm_crtc_state*, %struct.dc_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
