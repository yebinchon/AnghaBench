; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_build_prescale_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_build_prescale_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bias_and_scale = type { i32, i32, i32 }
%struct.dc_plane_state = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i64 0, align 8
@SURFACE_PIXEL_FORMAT_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_build_prescale_params(%struct.dc_bias_and_scale* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca %struct.dc_bias_and_scale*, align 8
  %4 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc_bias_and_scale* %0, %struct.dc_bias_and_scale** %3, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %4, align 8
  %5 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %6 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %12 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SURFACE_PIXEL_FORMAT_INVALID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %24 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %30 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %29, i32 0, i32 1
  %31 = call i32 @dc_fixpt_from_fraction(i32 256, i32 255)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dc_fixpt_mul(i64 %33, i32 %31)
  %35 = call i32 @fixed_point_to_int_frac(i32 %34, i32 2, i32 13)
  %36 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %37 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %39 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %42 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %44 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %47 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %55

48:                                               ; preds = %22, %16, %10, %2
  %49 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %50 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %49, i32 0, i32 0
  store i32 8192, i32* %50, align 4
  %51 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %52 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %51, i32 0, i32 1
  store i32 8192, i32* %52, align 4
  %53 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %3, align 8
  %54 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %53, i32 0, i32 2
  store i32 8192, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %28
  ret void
}

declare dso_local i32 @fixed_point_to_int_frac(i32, i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i64, i32) #1

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
