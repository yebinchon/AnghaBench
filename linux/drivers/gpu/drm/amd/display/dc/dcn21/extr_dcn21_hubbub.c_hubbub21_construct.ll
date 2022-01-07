; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_hubbub = type { i32, %struct.dcn_hubbub_mask*, %struct.dcn_hubbub_shift*, %struct.dcn_hubbub_registers*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dcn_hubbub_registers = type { i32 }
%struct.dcn_hubbub_shift = type { i32 }
%struct.dcn_hubbub_mask = type { i32 }

@hubbub21_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub21_construct(%struct.dcn20_hubbub* %0, %struct.dc_context* %1, %struct.dcn_hubbub_registers* %2, %struct.dcn_hubbub_shift* %3, %struct.dcn_hubbub_mask* %4) #0 {
  %6 = alloca %struct.dcn20_hubbub*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca %struct.dcn_hubbub_registers*, align 8
  %9 = alloca %struct.dcn_hubbub_shift*, align 8
  %10 = alloca %struct.dcn_hubbub_mask*, align 8
  store %struct.dcn20_hubbub* %0, %struct.dcn20_hubbub** %6, align 8
  store %struct.dc_context* %1, %struct.dc_context** %7, align 8
  store %struct.dcn_hubbub_registers* %2, %struct.dcn_hubbub_registers** %8, align 8
  store %struct.dcn_hubbub_shift* %3, %struct.dcn_hubbub_shift** %9, align 8
  store %struct.dcn_hubbub_mask* %4, %struct.dcn_hubbub_mask** %10, align 8
  %11 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %12 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %6, align 8
  %13 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.dc_context* %11, %struct.dc_context** %14, align 8
  %15 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %6, align 8
  %16 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* @hubbub21_funcs, i32** %17, align 8
  %18 = load %struct.dcn_hubbub_registers*, %struct.dcn_hubbub_registers** %8, align 8
  %19 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %6, align 8
  %20 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %19, i32 0, i32 3
  store %struct.dcn_hubbub_registers* %18, %struct.dcn_hubbub_registers** %20, align 8
  %21 = load %struct.dcn_hubbub_shift*, %struct.dcn_hubbub_shift** %9, align 8
  %22 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %6, align 8
  %23 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %22, i32 0, i32 2
  store %struct.dcn_hubbub_shift* %21, %struct.dcn_hubbub_shift** %23, align 8
  %24 = load %struct.dcn_hubbub_mask*, %struct.dcn_hubbub_mask** %10, align 8
  %25 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %6, align 8
  %26 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %25, i32 0, i32 1
  store %struct.dcn_hubbub_mask* %24, %struct.dcn_hubbub_mask** %26, align 8
  %27 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %6, align 8
  %28 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %27, i32 0, i32 0
  store i32 11, i32* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
