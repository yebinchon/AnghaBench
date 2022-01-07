; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_timing_generator = type { i32, i32, i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.dc_context*, i32* }
%struct.dc_context = type { i32 }

@CONTROLLER_ID_UNDERLAY0 = common dso_local global i32 0, align 4
@dce110_tg_v_funcs = common dso_local global i32 0, align 4
@CRTC_H_TOTAL__CRTC_H_TOTAL_MASK = common dso_local global i64 0, align 8
@CRTC_V_TOTAL__CRTC_V_TOTAL_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_v_construct(%struct.dce110_timing_generator* %0, %struct.dc_context* %1) #0 {
  %3 = alloca %struct.dce110_timing_generator*, align 8
  %4 = alloca %struct.dc_context*, align 8
  store %struct.dce110_timing_generator* %0, %struct.dce110_timing_generator** %3, align 8
  store %struct.dc_context* %1, %struct.dc_context** %4, align 8
  %5 = load i32, i32* @CONTROLLER_ID_UNDERLAY0, align 4
  %6 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %7 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 8
  %8 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %9 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32* @dce110_tg_v_funcs, i32** %10, align 8
  %11 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %12 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %13 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.dc_context* %11, %struct.dc_context** %14, align 8
  %15 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %16 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %19 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i64, i64* @CRTC_H_TOTAL__CRTC_H_TOTAL_MASK, align 8
  %22 = add nsw i64 %21, 1
  %23 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %24 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* @CRTC_V_TOTAL__CRTC_V_TOTAL_MASK, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %28 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %30 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %29, i32 0, i32 0
  store i32 56, i32* %30, align 8
  %31 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %32 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %31, i32 0, i32 1
  store i32 4, i32* %32, align 4
  %33 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %3, align 8
  %34 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %33, i32 0, i32 2
  store i32 4, i32* %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
