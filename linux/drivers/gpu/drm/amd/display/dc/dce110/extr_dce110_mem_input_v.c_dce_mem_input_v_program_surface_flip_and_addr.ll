; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_surface_flip_and_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_surface_flip_and_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { %struct.dc_plane_address }
%struct.dc_plane_address = type { i32 }
%struct.dce_mem_input = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_mem_input_v_program_surface_flip_and_addr(%struct.mem_input* %0, %struct.dc_plane_address* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_input*, align 8
  %5 = alloca %struct.dc_plane_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dce_mem_input*, align 8
  store %struct.mem_input* %0, %struct.mem_input** %4, align 8
  store %struct.dc_plane_address* %1, %struct.dc_plane_address** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mem_input*, %struct.mem_input** %4, align 8
  %9 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %8)
  store %struct.dce_mem_input* %9, %struct.dce_mem_input** %7, align 8
  %10 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @set_flip_control(%struct.dce_mem_input* %10, i32 %11)
  %13 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %14 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %15 = call i32 @program_addr(%struct.dce_mem_input* %13, %struct.dc_plane_address* %14)
  %16 = load %struct.mem_input*, %struct.mem_input** %4, align 8
  %17 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %16, i32 0, i32 0
  %18 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %19 = bitcast %struct.dc_plane_address* %17 to i8*
  %20 = bitcast %struct.dc_plane_address* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  ret i32 1
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @set_flip_control(%struct.dce_mem_input*, i32) #1

declare dso_local i32 @program_addr(%struct.dce_mem_input*, %struct.dc_plane_address*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
