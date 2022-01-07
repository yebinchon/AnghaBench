; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_program_surface_flip_and_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_program_surface_flip_and_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { %struct.dc_plane_address, %struct.dc_plane_address }
%struct.dc_plane_address = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.dce_mem_input = type { i32 }

@GRPH_UPDATE = common dso_local global i32 0, align 4
@GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@GRPH_FLIP_CONTROL = common dso_local global i32 0, align 4
@GRPH_SURFACE_UPDATE_H_RETRACE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_input*, %struct.dc_plane_address*, i32)* @dce_mi_program_surface_flip_and_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_mi_program_surface_flip_and_addr(%struct.mem_input* %0, %struct.dc_plane_address* %1, i32 %2) #0 {
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
  %10 = load i32, i32* @GRPH_UPDATE, align 4
  %11 = load i32, i32* @GRPH_UPDATE_LOCK, align 4
  %12 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 1)
  %13 = load i32, i32* @GRPH_FLIP_CONTROL, align 4
  %14 = load i32, i32* @GRPH_SURFACE_UPDATE_H_RETRACE_EN, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 %18)
  %20 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %21 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %69 [
    i32 129, label %23
    i32 128, label %39
  ]

23:                                               ; preds = %3
  %24 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %25 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %71

31:                                               ; preds = %23
  %32 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %33 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %34 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @program_pri_addr(%struct.dce_mem_input* %32, i32 %37)
  br label %71

39:                                               ; preds = %3
  %40 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %41 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %48 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %39
  br label %71

54:                                               ; preds = %46
  %55 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %56 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %57 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @program_pri_addr(%struct.dce_mem_input* %55, i32 %60)
  %62 = load %struct.dce_mem_input*, %struct.dce_mem_input** %7, align 8
  %63 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %64 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @program_sec_addr(%struct.dce_mem_input* %62, i32 %67)
  br label %71

69:                                               ; preds = %3
  %70 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %71

71:                                               ; preds = %69, %54, %53, %31, %30
  %72 = load %struct.mem_input*, %struct.mem_input** %4, align 8
  %73 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %72, i32 0, i32 1
  %74 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %75 = bitcast %struct.dc_plane_address* %73 to i8*
  %76 = bitcast %struct.dc_plane_address* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 16, i1 false)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.mem_input*, %struct.mem_input** %4, align 8
  %81 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %80, i32 0, i32 0
  %82 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %83 = bitcast %struct.dc_plane_address* %81 to i8*
  %84 = bitcast %struct.dc_plane_address* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 16, i1 false)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load i32, i32* @GRPH_UPDATE, align 4
  %87 = load i32, i32* @GRPH_UPDATE_LOCK, align 4
  %88 = call i32 @REG_UPDATE(i32 %86, i32 %87, i32 0)
  ret i32 1
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @program_pri_addr(%struct.dce_mem_input*, i32) #1

declare dso_local i32 @program_sec_addr(%struct.dce_mem_input*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
