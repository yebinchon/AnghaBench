; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abm = type { i32* }
%struct.dc_context = type { i32 }
%struct.dce_abm_registers = type { i32 }
%struct.dce_abm_shift = type { i32 }
%struct.dce_abm_mask = type { i32 }
%struct.dce_abm = type { %struct.abm }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dce_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.abm* @dce_abm_create(%struct.dc_context* %0, %struct.dce_abm_registers* %1, %struct.dce_abm_shift* %2, %struct.dce_abm_mask* %3) #0 {
  %5 = alloca %struct.abm*, align 8
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.dce_abm_registers*, align 8
  %8 = alloca %struct.dce_abm_shift*, align 8
  %9 = alloca %struct.dce_abm_mask*, align 8
  %10 = alloca %struct.dce_abm*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %6, align 8
  store %struct.dce_abm_registers* %1, %struct.dce_abm_registers** %7, align 8
  store %struct.dce_abm_shift* %2, %struct.dce_abm_shift** %8, align 8
  store %struct.dce_abm_mask* %3, %struct.dce_abm_mask** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dce_abm* @kzalloc(i32 8, i32 %11)
  store %struct.dce_abm* %12, %struct.dce_abm** %10, align 8
  %13 = load %struct.dce_abm*, %struct.dce_abm** %10, align 8
  %14 = icmp eq %struct.dce_abm* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.abm* null, %struct.abm** %5, align 8
  br label %29

17:                                               ; preds = %4
  %18 = load %struct.dce_abm*, %struct.dce_abm** %10, align 8
  %19 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %20 = load %struct.dce_abm_registers*, %struct.dce_abm_registers** %7, align 8
  %21 = load %struct.dce_abm_shift*, %struct.dce_abm_shift** %8, align 8
  %22 = load %struct.dce_abm_mask*, %struct.dce_abm_mask** %9, align 8
  %23 = call i32 @dce_abm_construct(%struct.dce_abm* %18, %struct.dc_context* %19, %struct.dce_abm_registers* %20, %struct.dce_abm_shift* %21, %struct.dce_abm_mask* %22)
  %24 = load %struct.dce_abm*, %struct.dce_abm** %10, align 8
  %25 = getelementptr inbounds %struct.dce_abm, %struct.dce_abm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.abm, %struct.abm* %25, i32 0, i32 0
  store i32* @dce_funcs, i32** %26, align 8
  %27 = load %struct.dce_abm*, %struct.dce_abm** %10, align 8
  %28 = getelementptr inbounds %struct.dce_abm, %struct.dce_abm* %27, i32 0, i32 0
  store %struct.abm* %28, %struct.abm** %5, align 8
  br label %29

29:                                               ; preds = %17, %15
  %30 = load %struct.abm*, %struct.abm** %5, align 8
  ret %struct.abm* %30
}

declare dso_local %struct.dce_abm* @kzalloc(i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @dce_abm_construct(%struct.dce_abm*, %struct.dc_context*, %struct.dce_abm_registers*, %struct.dce_abm_shift*, %struct.dce_abm_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
