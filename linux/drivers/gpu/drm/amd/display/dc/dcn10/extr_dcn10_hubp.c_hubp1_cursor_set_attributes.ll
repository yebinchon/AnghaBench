; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_cursor_set_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_cursor_set_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { %struct.dc_cursor_attributes }
%struct.dc_cursor_attributes = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dcn10_hubp = type { i32 }

@CURSOR_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@CURSOR_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@CURSOR_SIZE = common dso_local global i32 0, align 4
@CURSOR_WIDTH = common dso_local global i32 0, align 4
@CURSOR_HEIGHT = common dso_local global i32 0, align 4
@CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_MODE = common dso_local global i32 0, align 4
@CURSOR_PITCH = common dso_local global i32 0, align 4
@CURSOR_LINES_PER_CHUNK = common dso_local global i32 0, align 4
@CURSOR_SETTINS = common dso_local global i32 0, align 4
@CURSOR0_DST_Y_OFFSET = common dso_local global i32 0, align 4
@CURSOR0_CHUNK_HDL_ADJUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_cursor_set_attributes(%struct.hubp* %0, %struct.dc_cursor_attributes* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct.dc_cursor_attributes*, align 8
  %5 = alloca %struct.dcn10_hubp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct.dc_cursor_attributes* %1, %struct.dc_cursor_attributes** %4, align 8
  %8 = load %struct.hubp*, %struct.hubp** %3, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %5, align 8
  %10 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %11 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hubp1_get_cursor_pitch(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %15 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %18 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hubp1_get_lines_per_chunk(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.hubp*, %struct.hubp** %3, align 8
  %22 = getelementptr inbounds %struct.hubp, %struct.hubp* %21, i32 0, i32 0
  %23 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %24 = bitcast %struct.dc_cursor_attributes* %22 to i8*
  %25 = bitcast %struct.dc_cursor_attributes* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 24, i1 false)
  %26 = load i32, i32* @CURSOR_SURFACE_ADDRESS_HIGH, align 4
  %27 = load i32, i32* @CURSOR_SURFACE_ADDRESS_HIGH, align 4
  %28 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %29 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 %31)
  %33 = load i32, i32* @CURSOR_SURFACE_ADDRESS, align 4
  %34 = load i32, i32* @CURSOR_SURFACE_ADDRESS, align 4
  %35 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %36 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_UPDATE(i32 %33, i32 %34, i32 %38)
  %40 = load i32, i32* @CURSOR_SIZE, align 4
  %41 = load i32, i32* @CURSOR_WIDTH, align 4
  %42 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %43 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CURSOR_HEIGHT, align 4
  %46 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %47 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REG_UPDATE_2(i32 %40, i32 %41, i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* @CURSOR_CONTROL, align 4
  %51 = load i32, i32* @CURSOR_MODE, align 4
  %52 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %4, align 8
  %53 = getelementptr inbounds %struct.dc_cursor_attributes, %struct.dc_cursor_attributes* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CURSOR_PITCH, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @CURSOR_LINES_PER_CHUNK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @REG_UPDATE_3(i32 %50, i32 %51, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @CURSOR_SETTINS, align 4
  %61 = load i32, i32* @CURSOR0_DST_Y_OFFSET, align 4
  %62 = load i32, i32* @CURSOR0_CHUNK_HDL_ADJUST, align 4
  %63 = call i32 @REG_SET_2(i32 %60, i32 0, i32 %61, i32 0, i32 %62, i32 3)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @hubp1_get_cursor_pitch(i32) #1

declare dso_local i32 @hubp1_get_lines_per_chunk(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
