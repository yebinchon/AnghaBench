; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_dce80_timing_generator_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_dce80_timing_generator_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_timing_generator = type { i32, i32, i32, i64, i64, %struct.TYPE_2__, i32, %struct.dce110_timing_generator_offsets, i64 }
%struct.TYPE_2__ = type { i64, i32, %struct.dc_context*, i32* }
%struct.dce110_timing_generator_offsets = type { i32 }
%struct.dc_context = type { i32 }

@CONTROLLER_ID_D0 = common dso_local global i64 0, align 8
@reg_offsets = common dso_local global i32* null, align 8
@dce80_tg_funcs = common dso_local global i32 0, align 4
@CRTC_H_TOTAL__CRTC_H_TOTAL_MASK = common dso_local global i64 0, align 8
@CRTC_V_TOTAL__CRTC_V_TOTAL_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce80_timing_generator_construct(%struct.dce110_timing_generator* %0, %struct.dc_context* %1, i64 %2, %struct.dce110_timing_generator_offsets* %3) #0 {
  %5 = alloca %struct.dce110_timing_generator*, align 8
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dce110_timing_generator_offsets*, align 8
  store %struct.dce110_timing_generator* %0, %struct.dce110_timing_generator** %5, align 8
  store %struct.dc_context* %1, %struct.dc_context** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.dce110_timing_generator_offsets* %3, %struct.dce110_timing_generator_offsets** %8, align 8
  %9 = load i64, i64* @CONTROLLER_ID_D0, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %9, %10
  %12 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %13 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %12, i32 0, i32 8
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %16 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %19 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %18, i32 0, i32 7
  %20 = load %struct.dce110_timing_generator_offsets*, %struct.dce110_timing_generator_offsets** %8, align 8
  %21 = bitcast %struct.dce110_timing_generator_offsets* %19 to i8*
  %22 = bitcast %struct.dce110_timing_generator_offsets* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32*, i32** @reg_offsets, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %28 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %30 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32* @dce80_tg_funcs, i32** %31, align 8
  %32 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %33 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %34 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store %struct.dc_context* %32, %struct.dc_context** %35, align 8
  %36 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %37 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %40 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i64, i64* @CRTC_H_TOTAL__CRTC_H_TOTAL_MASK, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %45 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @CRTC_V_TOTAL__CRTC_V_TOTAL_MASK, align 8
  %47 = add nsw i64 %46, 1
  %48 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %49 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %51 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %50, i32 0, i32 0
  store i32 56, i32* %51, align 8
  %52 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %53 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %52, i32 0, i32 1
  store i32 4, i32* %53, align 4
  %54 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %55 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %54, i32 0, i32 2
  store i32 4, i32* %55, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
