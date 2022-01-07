; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_surface_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_surface_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32 }
%union.dc_tiling_info = type { i32 }
%struct.plane_size = type { i32 }
%struct.dc_plane_dcc_param = type { i32 }
%struct.dce_mem_input = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_mem_input_v_program_surface_config(%struct.mem_input* %0, i32 %1, %union.dc_tiling_info* %2, %struct.plane_size* %3, i32 %4, %struct.dc_plane_dcc_param* %5, i32 %6) #0 {
  %8 = alloca %struct.mem_input*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.dc_tiling_info*, align 8
  %11 = alloca %struct.plane_size*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dc_plane_dcc_param*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dce_mem_input*, align 8
  store %struct.mem_input* %0, %struct.mem_input** %8, align 8
  store i32 %1, i32* %9, align 4
  store %union.dc_tiling_info* %2, %union.dc_tiling_info** %10, align 8
  store %struct.plane_size* %3, %struct.plane_size** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dc_plane_dcc_param* %5, %struct.dc_plane_dcc_param** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.mem_input*, %struct.mem_input** %8, align 8
  %17 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %16)
  store %struct.dce_mem_input* %17, %struct.dce_mem_input** %15, align 8
  %18 = load %struct.dce_mem_input*, %struct.dce_mem_input** %15, align 8
  %19 = call i32 @enable(%struct.dce_mem_input* %18)
  %20 = load %struct.dce_mem_input*, %struct.dce_mem_input** %15, align 8
  %21 = load %union.dc_tiling_info*, %union.dc_tiling_info** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @program_tiling(%struct.dce_mem_input* %20, %union.dc_tiling_info* %21, i32 %22)
  %24 = load %struct.dce_mem_input*, %struct.dce_mem_input** %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.plane_size*, %struct.plane_size** %11, align 8
  %27 = call i32 @program_size_and_rotation(%struct.dce_mem_input* %24, i32 %25, %struct.plane_size* %26)
  %28 = load %struct.dce_mem_input*, %struct.dce_mem_input** %15, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @program_pixel_format(%struct.dce_mem_input* %28, i32 %29)
  ret void
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @enable(%struct.dce_mem_input*) #1

declare dso_local i32 @program_tiling(%struct.dce_mem_input*, %union.dc_tiling_info*, i32) #1

declare dso_local i32 @program_size_and_rotation(%struct.dce_mem_input*, i32, %struct.plane_size*) #1

declare dso_local i32 @program_pixel_format(%struct.dce_mem_input*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
