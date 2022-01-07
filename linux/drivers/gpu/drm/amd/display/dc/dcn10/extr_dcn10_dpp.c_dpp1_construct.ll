; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { i32, i32, i32, %struct.dcn_dpp_mask*, %struct.dcn_dpp_shift*, %struct.dcn_dpp_registers*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dcn_dpp_registers = type { i32 }
%struct.dcn_dpp_shift = type { i32 }
%struct.dcn_dpp_mask = type { i32 }

@dcn10_dpp_funcs = common dso_local global i32 0, align 4
@dcn10_dpp_cap = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_18BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_24BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_30BPP = common dso_local global i32 0, align 4
@LB_BITS_PER_ENTRY = common dso_local global i32 0, align 4
@LB_TOTAL_NUMBER_OF_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_construct(%struct.dcn10_dpp* %0, %struct.dc_context* %1, i32 %2, %struct.dcn_dpp_registers* %3, %struct.dcn_dpp_shift* %4, %struct.dcn_dpp_mask* %5) #0 {
  %7 = alloca %struct.dcn10_dpp*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dcn_dpp_registers*, align 8
  %11 = alloca %struct.dcn_dpp_shift*, align 8
  %12 = alloca %struct.dcn_dpp_mask*, align 8
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dcn_dpp_registers* %3, %struct.dcn_dpp_registers** %10, align 8
  store %struct.dcn_dpp_shift* %4, %struct.dcn_dpp_shift** %11, align 8
  store %struct.dcn_dpp_mask* %5, %struct.dcn_dpp_mask** %12, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %14 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %15 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store %struct.dc_context* %13, %struct.dc_context** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %19 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  %21 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %22 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* @dcn10_dpp_funcs, i32** %23, align 8
  %24 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %25 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* @dcn10_dpp_cap, i32** %26, align 8
  %27 = load %struct.dcn_dpp_registers*, %struct.dcn_dpp_registers** %10, align 8
  %28 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %29 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %28, i32 0, i32 5
  store %struct.dcn_dpp_registers* %27, %struct.dcn_dpp_registers** %29, align 8
  %30 = load %struct.dcn_dpp_shift*, %struct.dcn_dpp_shift** %11, align 8
  %31 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %32 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %31, i32 0, i32 4
  store %struct.dcn_dpp_shift* %30, %struct.dcn_dpp_shift** %32, align 8
  %33 = load %struct.dcn_dpp_mask*, %struct.dcn_dpp_mask** %12, align 8
  %34 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %35 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %34, i32 0, i32 3
  store %struct.dcn_dpp_mask* %33, %struct.dcn_dpp_mask** %35, align 8
  %36 = load i32, i32* @LB_PIXEL_DEPTH_18BPP, align 4
  %37 = load i32, i32* @LB_PIXEL_DEPTH_24BPP, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @LB_PIXEL_DEPTH_30BPP, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %42 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @LB_BITS_PER_ENTRY, align 4
  %44 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %45 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @LB_TOTAL_NUMBER_OF_ENTRIES, align 4
  %47 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %48 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
