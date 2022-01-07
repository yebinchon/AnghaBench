; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_clk_mgr_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_clk_mgr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_clk_mgr = type { i32, i32, i32, i32, i64, i64, %struct.clk_mgr_mask*, %struct.clk_mgr_shift*, %struct.clk_mgr_registers*, %struct.clk_mgr }
%struct.clk_mgr = type { i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.clk_mgr_registers = type { i32 }
%struct.clk_mgr_shift = type { i32 }
%struct.clk_mgr_mask = type { i32 }
%struct.dm_pp_static_clock_info = type { i32, i32 }

@dce_funcs = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_NOMINAL = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_clk_mgr*, %struct.dc_context*, %struct.clk_mgr_registers*, %struct.clk_mgr_shift*, %struct.clk_mgr_mask*)* @dce_clk_mgr_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_clk_mgr_construct(%struct.dce_clk_mgr* %0, %struct.dc_context* %1, %struct.clk_mgr_registers* %2, %struct.clk_mgr_shift* %3, %struct.clk_mgr_mask* %4) #0 {
  %6 = alloca %struct.dce_clk_mgr*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca %struct.clk_mgr_registers*, align 8
  %9 = alloca %struct.clk_mgr_shift*, align 8
  %10 = alloca %struct.clk_mgr_mask*, align 8
  %11 = alloca %struct.clk_mgr*, align 8
  %12 = alloca %struct.dm_pp_static_clock_info, align 4
  store %struct.dce_clk_mgr* %0, %struct.dce_clk_mgr** %6, align 8
  store %struct.dc_context* %1, %struct.dc_context** %7, align 8
  store %struct.clk_mgr_registers* %2, %struct.clk_mgr_registers** %8, align 8
  store %struct.clk_mgr_shift* %3, %struct.clk_mgr_shift** %9, align 8
  store %struct.clk_mgr_mask* %4, %struct.clk_mgr_mask** %10, align 8
  %13 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %14 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %13, i32 0, i32 9
  store %struct.clk_mgr* %14, %struct.clk_mgr** %11, align 8
  %15 = bitcast %struct.dm_pp_static_clock_info* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %17 = load %struct.clk_mgr*, %struct.clk_mgr** %11, align 8
  %18 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %17, i32 0, i32 1
  store %struct.dc_context* %16, %struct.dc_context** %18, align 8
  %19 = load %struct.clk_mgr*, %struct.clk_mgr** %11, align 8
  %20 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %19, i32 0, i32 0
  store i32* @dce_funcs, i32** %20, align 8
  %21 = load %struct.clk_mgr_registers*, %struct.clk_mgr_registers** %8, align 8
  %22 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %23 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %22, i32 0, i32 8
  store %struct.clk_mgr_registers* %21, %struct.clk_mgr_registers** %23, align 8
  %24 = load %struct.clk_mgr_shift*, %struct.clk_mgr_shift** %9, align 8
  %25 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %26 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %25, i32 0, i32 7
  store %struct.clk_mgr_shift* %24, %struct.clk_mgr_shift** %26, align 8
  %27 = load %struct.clk_mgr_mask*, %struct.clk_mgr_mask** %10, align 8
  %28 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %29 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %28, i32 0, i32 6
  store %struct.clk_mgr_mask* %27, %struct.clk_mgr_mask** %29, align 8
  %30 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %31 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %33 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %35 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %34, i32 0, i32 0
  store i32 1000, i32* %35, align 8
  %36 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %37 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %39 = call i64 @dm_pp_get_static_clocks(%struct.dc_context* %38, %struct.dm_pp_static_clock_info* %12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.dm_pp_static_clock_info, %struct.dm_pp_static_clock_info* %12, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %45 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %50

46:                                               ; preds = %5
  %47 = load i32, i32* @DM_PP_CLOCKS_STATE_NOMINAL, align 4
  %48 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %49 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* @DM_PP_CLOCKS_STATE_INVALID, align 4
  %52 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %53 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %55 = call i32 @dce_clock_read_integrated_info(%struct.dce_clk_mgr* %54)
  %56 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %6, align 8
  %57 = call i32 @dce_clock_read_ss_info(%struct.dce_clk_mgr* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dm_pp_get_static_clocks(%struct.dc_context*, %struct.dm_pp_static_clock_info*) #2

declare dso_local i32 @dce_clock_read_integrated_info(%struct.dce_clk_mgr*) #2

declare dso_local i32 @dce_clock_read_ss_info(%struct.dce_clk_mgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
