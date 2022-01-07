; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_lb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_lb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.line_buffer_params = type { i32, i32, i32, i32, i32 }

@DSCL_DATA_PRCESSING_FIXED_FORMAT = common dso_local global i64 0, align 8
@LB_DATA_FORMAT = common dso_local global i32 0, align 4
@PIXEL_DEPTH = common dso_local global i32 0, align 4
@PIXEL_EXPAN_MODE = common dso_local global i32 0, align 4
@PIXEL_REDUCE_MODE = common dso_local global i32 0, align 4
@DYNAMIC_PIXEL_DEPTH = common dso_local global i32 0, align 4
@DITHER_EN = common dso_local global i32 0, align 4
@INTERLEAVE_EN = common dso_local global i32 0, align 4
@LB_DATA_FORMAT__ALPHA_EN = common dso_local global i32 0, align 4
@LB_MEMORY_CTRL = common dso_local global i32 0, align 4
@MEMORY_CONFIG = common dso_local global i32 0, align 4
@LB_MAX_PARTITIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, %struct.line_buffer_params*, i32)* @dpp1_dscl_set_lb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_dscl_set_lb(%struct.dcn10_dpp* %0, %struct.line_buffer_params* %1, i32 %2) #0 {
  %4 = alloca %struct.dcn10_dpp*, align 8
  %5 = alloca %struct.line_buffer_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %4, align 8
  store %struct.line_buffer_params* %1, %struct.line_buffer_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %10 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DSCL_DATA_PRCESSING_FIXED_FORMAT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load %struct.line_buffer_params*, %struct.line_buffer_params** %5, align 8
  %19 = getelementptr inbounds %struct.line_buffer_params, %struct.line_buffer_params* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dpp1_dscl_get_pixel_depth_val(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.line_buffer_params*, %struct.line_buffer_params** %5, align 8
  %23 = getelementptr inbounds %struct.line_buffer_params, %struct.line_buffer_params* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @LB_DATA_FORMAT, align 4
  %26 = load i32, i32* @PIXEL_DEPTH, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PIXEL_EXPAN_MODE, align 4
  %29 = load %struct.line_buffer_params*, %struct.line_buffer_params** %5, align 8
  %30 = getelementptr inbounds %struct.line_buffer_params, %struct.line_buffer_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PIXEL_REDUCE_MODE, align 4
  %33 = load i32, i32* @DYNAMIC_PIXEL_DEPTH, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @DITHER_EN, align 4
  %36 = load i32, i32* @INTERLEAVE_EN, align 4
  %37 = load %struct.line_buffer_params*, %struct.line_buffer_params** %5, align 8
  %38 = getelementptr inbounds %struct.line_buffer_params, %struct.line_buffer_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LB_DATA_FORMAT__ALPHA_EN, align 4
  %41 = load %struct.line_buffer_params*, %struct.line_buffer_params** %5, align 8
  %42 = getelementptr inbounds %struct.line_buffer_params, %struct.line_buffer_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @REG_SET_7(i32 %25, i32 0, i32 %26, i32 %27, i32 %28, i32 %31, i32 %32, i32 1, i32 %33, i32 %34, i32 %35, i32 0, i32 %36, i32 %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %17, %3
  %46 = load i32, i32* @LB_MEMORY_CTRL, align 4
  %47 = load i32, i32* @MEMORY_CONFIG, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @LB_MAX_PARTITIONS, align 4
  %50 = call i32 @REG_SET_2(i32 %46, i32 0, i32 %47, i32 %48, i32 %49, i32 63)
  ret void
}

declare dso_local i32 @dpp1_dscl_get_pixel_depth_val(i32) #1

declare dso_local i32 @REG_SET_7(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
