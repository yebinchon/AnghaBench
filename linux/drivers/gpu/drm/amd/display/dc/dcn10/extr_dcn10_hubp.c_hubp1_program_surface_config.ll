; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_surface_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_surface_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%union.dc_tiling_info = type { i32 }
%struct.plane_size = type { i32 }
%struct.dc_plane_dcc_param = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_program_surface_config(%struct.hubp* %0, i32 %1, %union.dc_tiling_info* %2, %struct.plane_size* %3, i32 %4, %struct.dc_plane_dcc_param* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.hubp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.dc_tiling_info*, align 8
  %12 = alloca %struct.plane_size*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dc_plane_dcc_param*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %9, align 8
  store i32 %1, i32* %10, align 4
  store %union.dc_tiling_info* %2, %union.dc_tiling_info** %11, align 8
  store %struct.plane_size* %3, %struct.plane_size** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.dc_plane_dcc_param* %5, %struct.dc_plane_dcc_param** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.hubp*, %struct.hubp** %9, align 8
  %18 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %14, align 8
  %19 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %14, align 8
  %22 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hubp1_dcc_control(%struct.hubp* %17, i32 %20, i32 %23)
  %25 = load %struct.hubp*, %struct.hubp** %9, align 8
  %26 = load %union.dc_tiling_info*, %union.dc_tiling_info** %11, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @hubp1_program_tiling(%struct.hubp* %25, %union.dc_tiling_info* %26, i32 %27)
  %29 = load %struct.hubp*, %struct.hubp** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.plane_size*, %struct.plane_size** %12, align 8
  %32 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %14, align 8
  %33 = call i32 @hubp1_program_size(%struct.hubp* %29, i32 %30, %struct.plane_size* %31, %struct.dc_plane_dcc_param* %32)
  %34 = load %struct.hubp*, %struct.hubp** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @hubp1_program_rotation(%struct.hubp* %34, i32 %35, i32 %36)
  %38 = load %struct.hubp*, %struct.hubp** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @hubp1_program_pixel_format(%struct.hubp* %38, i32 %39)
  ret void
}

declare dso_local i32 @hubp1_dcc_control(%struct.hubp*, i32, i32) #1

declare dso_local i32 @hubp1_program_tiling(%struct.hubp*, %union.dc_tiling_info*, i32) #1

declare dso_local i32 @hubp1_program_size(%struct.hubp*, i32, %struct.plane_size*, %struct.dc_plane_dcc_param*) #1

declare dso_local i32 @hubp1_program_rotation(%struct.hubp*, i32, i32) #1

declare dso_local i32 @hubp1_program_pixel_format(%struct.hubp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
