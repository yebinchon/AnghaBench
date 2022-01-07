; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_transform_v_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_transform_v_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }

@dce110_xfmv_funcs = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_18BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_24BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_30BPP = common dso_local global i32 0, align 4
@LB_BITS_PER_ENTRY = common dso_local global i32 0, align 4
@LB_TOTAL_NUMBER_OF_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_transform_v_construct(%struct.dce_transform* %0, %struct.dc_context* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.dc_context*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.dc_context* %1, %struct.dc_context** %4, align 8
  %5 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %6 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %7 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.dc_context* %5, %struct.dc_context** %8, align 8
  %9 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %10 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* @dce110_xfmv_funcs, i32** %11, align 8
  %12 = load i32, i32* @LB_PIXEL_DEPTH_18BPP, align 4
  %13 = load i32, i32* @LB_PIXEL_DEPTH_24BPP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @LB_PIXEL_DEPTH_30BPP, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %18 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %20 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @LB_BITS_PER_ENTRY, align 4
  %22 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %23 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @LB_TOTAL_NUMBER_OF_ENTRIES, align 4
  %25 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %26 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
