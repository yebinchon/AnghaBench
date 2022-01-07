; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_blend_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_blend_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dpp* }
%struct.dpp = type { %struct.TYPE_4__*, %struct.pwl_params }
%struct.TYPE_4__ = type { i32 (%struct.dpp*, %struct.pwl_params*)* }
%struct.pwl_params = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.pwl_params }

@TF_TYPE_HWPWL = common dso_local global i64 0, align 8
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, %struct.dc_plane_state*)* @dcn20_set_blend_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn20_set_blend_lut(%struct.pipe_ctx* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca %struct.dc_plane_state*, align 8
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwl_params*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %4, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.dpp*, %struct.dpp** %10, align 8
  store %struct.dpp* %11, %struct.dpp** %5, align 8
  store i32 1, i32* %6, align 4
  store %struct.pwl_params* null, %struct.pwl_params** %7, align 8
  %12 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %13 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TF_TYPE_HWPWL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store %struct.pwl_params* %28, %struct.pwl_params** %7, align 8
  br label %47

29:                                               ; preds = %16
  %30 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %31 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %39 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load %struct.dpp*, %struct.dpp** %5, align 8
  %42 = getelementptr inbounds %struct.dpp, %struct.dpp* %41, i32 0, i32 1
  %43 = call i32 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_6__* %40, %struct.pwl_params* %42, i32 0)
  %44 = load %struct.dpp*, %struct.dpp** %5, align 8
  %45 = getelementptr inbounds %struct.dpp, %struct.dpp* %44, i32 0, i32 1
  store %struct.pwl_params* %45, %struct.pwl_params** %7, align 8
  br label %46

46:                                               ; preds = %37, %29
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.dpp*, %struct.dpp** %5, align 8
  %50 = getelementptr inbounds %struct.dpp, %struct.dpp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dpp*, %struct.pwl_params*)*, i32 (%struct.dpp*, %struct.pwl_params*)** %52, align 8
  %54 = load %struct.dpp*, %struct.dpp** %5, align 8
  %55 = load %struct.pwl_params*, %struct.pwl_params** %7, align 8
  %56 = call i32 %53(%struct.dpp* %54, %struct.pwl_params* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @cm_helper_translate_curve_to_hw_format(%struct.TYPE_6__*, %struct.pwl_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
