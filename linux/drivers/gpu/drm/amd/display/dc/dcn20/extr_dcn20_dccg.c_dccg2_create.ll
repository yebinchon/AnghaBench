; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccg = type { i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dccg_registers = type { i32 }
%struct.dccg_shift = type { i32 }
%struct.dccg_mask = type { i32 }
%struct.dcn_dccg = type { %struct.dccg, %struct.dccg_mask*, %struct.dccg_shift*, %struct.dccg_registers* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dccg2_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dccg* @dccg2_create(%struct.dc_context* %0, %struct.dccg_registers* %1, %struct.dccg_shift* %2, %struct.dccg_mask* %3) #0 {
  %5 = alloca %struct.dccg*, align 8
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.dccg_registers*, align 8
  %8 = alloca %struct.dccg_shift*, align 8
  %9 = alloca %struct.dccg_mask*, align 8
  %10 = alloca %struct.dcn_dccg*, align 8
  %11 = alloca %struct.dccg*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %6, align 8
  store %struct.dccg_registers* %1, %struct.dccg_registers** %7, align 8
  store %struct.dccg_shift* %2, %struct.dccg_shift** %8, align 8
  store %struct.dccg_mask* %3, %struct.dccg_mask** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.dcn_dccg* @kzalloc(i32 40, i32 %12)
  store %struct.dcn_dccg* %13, %struct.dcn_dccg** %10, align 8
  %14 = load %struct.dcn_dccg*, %struct.dcn_dccg** %10, align 8
  %15 = icmp eq %struct.dcn_dccg* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.dccg* null, %struct.dccg** %5, align 8
  br label %37

18:                                               ; preds = %4
  %19 = load %struct.dcn_dccg*, %struct.dcn_dccg** %10, align 8
  %20 = getelementptr inbounds %struct.dcn_dccg, %struct.dcn_dccg* %19, i32 0, i32 0
  store %struct.dccg* %20, %struct.dccg** %11, align 8
  %21 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %22 = load %struct.dccg*, %struct.dccg** %11, align 8
  %23 = getelementptr inbounds %struct.dccg, %struct.dccg* %22, i32 0, i32 1
  store %struct.dc_context* %21, %struct.dc_context** %23, align 8
  %24 = load %struct.dccg*, %struct.dccg** %11, align 8
  %25 = getelementptr inbounds %struct.dccg, %struct.dccg* %24, i32 0, i32 0
  store i32* @dccg2_funcs, i32** %25, align 8
  %26 = load %struct.dccg_registers*, %struct.dccg_registers** %7, align 8
  %27 = load %struct.dcn_dccg*, %struct.dcn_dccg** %10, align 8
  %28 = getelementptr inbounds %struct.dcn_dccg, %struct.dcn_dccg* %27, i32 0, i32 3
  store %struct.dccg_registers* %26, %struct.dccg_registers** %28, align 8
  %29 = load %struct.dccg_shift*, %struct.dccg_shift** %8, align 8
  %30 = load %struct.dcn_dccg*, %struct.dcn_dccg** %10, align 8
  %31 = getelementptr inbounds %struct.dcn_dccg, %struct.dcn_dccg* %30, i32 0, i32 2
  store %struct.dccg_shift* %29, %struct.dccg_shift** %31, align 8
  %32 = load %struct.dccg_mask*, %struct.dccg_mask** %9, align 8
  %33 = load %struct.dcn_dccg*, %struct.dcn_dccg** %10, align 8
  %34 = getelementptr inbounds %struct.dcn_dccg, %struct.dcn_dccg* %33, i32 0, i32 1
  store %struct.dccg_mask* %32, %struct.dccg_mask** %34, align 8
  %35 = load %struct.dcn_dccg*, %struct.dcn_dccg** %10, align 8
  %36 = getelementptr inbounds %struct.dcn_dccg, %struct.dcn_dccg* %35, i32 0, i32 0
  store %struct.dccg* %36, %struct.dccg** %5, align 8
  br label %37

37:                                               ; preds = %18, %16
  %38 = load %struct.dccg*, %struct.dccg** %5, align 8
  ret %struct.dccg* %38
}

declare dso_local %struct.dcn_dccg* @kzalloc(i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
