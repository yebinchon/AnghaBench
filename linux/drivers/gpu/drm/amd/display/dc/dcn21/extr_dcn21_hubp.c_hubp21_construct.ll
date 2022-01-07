; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubp.c_hubp21_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubp.c_hubp21_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn21_hubp = type { %struct.TYPE_2__, %struct.dcn_hubp2_mask*, %struct.dcn_hubp2_shift*, %struct.dcn_hubp2_registers* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.dc_context*, i32* }
%struct.dc_context = type { i32 }
%struct.dcn_hubp2_registers = type { i32 }
%struct.dcn_hubp2_shift = type { i32 }
%struct.dcn_hubp2_mask = type { i32 }

@dcn21_hubp_funcs = common dso_local global i32 0, align 4
@OPP_ID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubp21_construct(%struct.dcn21_hubp* %0, %struct.dc_context* %1, i32 %2, %struct.dcn_hubp2_registers* %3, %struct.dcn_hubp2_shift* %4, %struct.dcn_hubp2_mask* %5) #0 {
  %7 = alloca %struct.dcn21_hubp*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dcn_hubp2_registers*, align 8
  %11 = alloca %struct.dcn_hubp2_shift*, align 8
  %12 = alloca %struct.dcn_hubp2_mask*, align 8
  store %struct.dcn21_hubp* %0, %struct.dcn21_hubp** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dcn_hubp2_registers* %3, %struct.dcn_hubp2_registers** %10, align 8
  store %struct.dcn_hubp2_shift* %4, %struct.dcn_hubp2_shift** %11, align 8
  store %struct.dcn_hubp2_mask* %5, %struct.dcn_hubp2_mask** %12, align 8
  %13 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %14 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i32* @dcn21_hubp_funcs, i32** %15, align 8
  %16 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %17 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %18 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store %struct.dc_context* %16, %struct.dc_context** %19, align 8
  %20 = load %struct.dcn_hubp2_registers*, %struct.dcn_hubp2_registers** %10, align 8
  %21 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %22 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %21, i32 0, i32 3
  store %struct.dcn_hubp2_registers* %20, %struct.dcn_hubp2_registers** %22, align 8
  %23 = load %struct.dcn_hubp2_shift*, %struct.dcn_hubp2_shift** %11, align 8
  %24 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %25 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %24, i32 0, i32 2
  store %struct.dcn_hubp2_shift* %23, %struct.dcn_hubp2_shift** %25, align 8
  %26 = load %struct.dcn_hubp2_mask*, %struct.dcn_hubp2_mask** %12, align 8
  %27 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %28 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %27, i32 0, i32 1
  store %struct.dcn_hubp2_mask* %26, %struct.dcn_hubp2_mask** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %31 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @OPP_ID_INVALID, align 4
  %34 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %35 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.dcn21_hubp*, %struct.dcn21_hubp** %7, align 8
  %38 = getelementptr inbounds %struct.dcn21_hubp, %struct.dcn21_hubp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 15, i32* %39, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
