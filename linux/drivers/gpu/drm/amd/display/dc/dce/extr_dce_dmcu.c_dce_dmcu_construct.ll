; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_dmcu = type { %struct.dce_dmcu_mask*, %struct.dce_dmcu_shift*, %struct.dce_dmcu_registers*, %struct.dmcu }
%struct.dmcu = type { i64, i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dce_dmcu_registers = type { i32 }
%struct.dce_dmcu_shift = type { i32 }
%struct.dce_dmcu_mask = type { i32 }

@dce_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_dmcu*, %struct.dc_context*, %struct.dce_dmcu_registers*, %struct.dce_dmcu_shift*, %struct.dce_dmcu_mask*)* @dce_dmcu_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_dmcu_construct(%struct.dce_dmcu* %0, %struct.dc_context* %1, %struct.dce_dmcu_registers* %2, %struct.dce_dmcu_shift* %3, %struct.dce_dmcu_mask* %4) #0 {
  %6 = alloca %struct.dce_dmcu*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca %struct.dce_dmcu_registers*, align 8
  %9 = alloca %struct.dce_dmcu_shift*, align 8
  %10 = alloca %struct.dce_dmcu_mask*, align 8
  %11 = alloca %struct.dmcu*, align 8
  store %struct.dce_dmcu* %0, %struct.dce_dmcu** %6, align 8
  store %struct.dc_context* %1, %struct.dc_context** %7, align 8
  store %struct.dce_dmcu_registers* %2, %struct.dce_dmcu_registers** %8, align 8
  store %struct.dce_dmcu_shift* %3, %struct.dce_dmcu_shift** %9, align 8
  store %struct.dce_dmcu_mask* %4, %struct.dce_dmcu_mask** %10, align 8
  %12 = load %struct.dce_dmcu*, %struct.dce_dmcu** %6, align 8
  %13 = getelementptr inbounds %struct.dce_dmcu, %struct.dce_dmcu* %12, i32 0, i32 3
  store %struct.dmcu* %13, %struct.dmcu** %11, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %15 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %16 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %15, i32 0, i32 2
  store %struct.dc_context* %14, %struct.dc_context** %16, align 8
  %17 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %18 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %17, i32 0, i32 1
  store i32* @dce_funcs, i32** %18, align 8
  %19 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %20 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.dce_dmcu_registers*, %struct.dce_dmcu_registers** %8, align 8
  %22 = load %struct.dce_dmcu*, %struct.dce_dmcu** %6, align 8
  %23 = getelementptr inbounds %struct.dce_dmcu, %struct.dce_dmcu* %22, i32 0, i32 2
  store %struct.dce_dmcu_registers* %21, %struct.dce_dmcu_registers** %23, align 8
  %24 = load %struct.dce_dmcu_shift*, %struct.dce_dmcu_shift** %9, align 8
  %25 = load %struct.dce_dmcu*, %struct.dce_dmcu** %6, align 8
  %26 = getelementptr inbounds %struct.dce_dmcu, %struct.dce_dmcu* %25, i32 0, i32 1
  store %struct.dce_dmcu_shift* %24, %struct.dce_dmcu_shift** %26, align 8
  %27 = load %struct.dce_dmcu_mask*, %struct.dce_dmcu_mask** %10, align 8
  %28 = load %struct.dce_dmcu*, %struct.dce_dmcu** %6, align 8
  %29 = getelementptr inbounds %struct.dce_dmcu, %struct.dce_dmcu* %28, i32 0, i32 0
  store %struct.dce_dmcu_mask* %27, %struct.dce_dmcu_mask** %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
