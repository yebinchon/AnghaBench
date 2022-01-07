; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32, i32, i32, i32, %struct.dce_transform_mask*, %struct.dce_transform_shift*, %struct.dce_transform_registers*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dce_transform_registers = type { i32 }
%struct.dce_transform_shift = type { i32 }
%struct.dce_transform_mask = type { i32 }

@dce_transform_funcs = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_18BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_24BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_30BPP = common dso_local global i32 0, align 4
@LB_BITS_PER_ENTRY = common dso_local global i32 0, align 4
@LB_TOTAL_NUMBER_OF_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_transform_construct(%struct.dce_transform* %0, %struct.dc_context* %1, i32 %2, %struct.dce_transform_registers* %3, %struct.dce_transform_shift* %4, %struct.dce_transform_mask* %5) #0 {
  %7 = alloca %struct.dce_transform*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dce_transform_registers*, align 8
  %11 = alloca %struct.dce_transform_shift*, align 8
  %12 = alloca %struct.dce_transform_mask*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dce_transform_registers* %3, %struct.dce_transform_registers** %10, align 8
  store %struct.dce_transform_shift* %4, %struct.dce_transform_shift** %11, align 8
  store %struct.dce_transform_mask* %5, %struct.dce_transform_mask** %12, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %14 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %15 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.dc_context* %13, %struct.dc_context** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %19 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %22 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* @dce_transform_funcs, i32** %23, align 8
  %24 = load %struct.dce_transform_registers*, %struct.dce_transform_registers** %10, align 8
  %25 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %26 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %25, i32 0, i32 6
  store %struct.dce_transform_registers* %24, %struct.dce_transform_registers** %26, align 8
  %27 = load %struct.dce_transform_shift*, %struct.dce_transform_shift** %11, align 8
  %28 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %29 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %28, i32 0, i32 5
  store %struct.dce_transform_shift* %27, %struct.dce_transform_shift** %29, align 8
  %30 = load %struct.dce_transform_mask*, %struct.dce_transform_mask** %12, align 8
  %31 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %32 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %31, i32 0, i32 4
  store %struct.dce_transform_mask* %30, %struct.dce_transform_mask** %32, align 8
  %33 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %34 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @LB_PIXEL_DEPTH_18BPP, align 4
  %36 = load i32, i32* @LB_PIXEL_DEPTH_24BPP, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @LB_PIXEL_DEPTH_30BPP, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %41 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @LB_BITS_PER_ENTRY, align 4
  %43 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %44 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @LB_TOTAL_NUMBER_OF_ENTRIES, align 4
  %46 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %47 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
