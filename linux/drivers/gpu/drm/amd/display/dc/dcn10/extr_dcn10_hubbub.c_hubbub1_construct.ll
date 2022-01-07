; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dc_context = type { i64 }
%struct.dcn_hubbub_registers = type { i32 }
%struct.dcn_hubbub_shift = type { i32 }
%struct.dcn_hubbub_mask = type { i32 }
%struct.dcn10_hubbub = type { i32, %struct.dcn_hubbub_mask*, %struct.dcn_hubbub_shift*, %struct.dcn_hubbub_registers*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.dc_context* }

@hubbub1_funcs = common dso_local global i32 0, align 4
@DCN_VERSION_1_01 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_construct(%struct.hubbub* %0, %struct.dc_context* %1, %struct.dcn_hubbub_registers* %2, %struct.dcn_hubbub_shift* %3, %struct.dcn_hubbub_mask* %4) #0 {
  %6 = alloca %struct.hubbub*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca %struct.dcn_hubbub_registers*, align 8
  %9 = alloca %struct.dcn_hubbub_shift*, align 8
  %10 = alloca %struct.dcn_hubbub_mask*, align 8
  %11 = alloca %struct.dcn10_hubbub*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %6, align 8
  store %struct.dc_context* %1, %struct.dc_context** %7, align 8
  store %struct.dcn_hubbub_registers* %2, %struct.dcn_hubbub_registers** %8, align 8
  store %struct.dcn_hubbub_shift* %3, %struct.dcn_hubbub_shift** %9, align 8
  store %struct.dcn_hubbub_mask* %4, %struct.dcn_hubbub_mask** %10, align 8
  %12 = load %struct.hubbub*, %struct.hubbub** %6, align 8
  %13 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %12)
  store %struct.dcn10_hubbub* %13, %struct.dcn10_hubbub** %11, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %15 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %11, align 8
  %16 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.dc_context* %14, %struct.dc_context** %17, align 8
  %18 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %11, align 8
  %19 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* @hubbub1_funcs, i32** %20, align 8
  %21 = load %struct.dcn_hubbub_registers*, %struct.dcn_hubbub_registers** %8, align 8
  %22 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %11, align 8
  %23 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %22, i32 0, i32 3
  store %struct.dcn_hubbub_registers* %21, %struct.dcn_hubbub_registers** %23, align 8
  %24 = load %struct.dcn_hubbub_shift*, %struct.dcn_hubbub_shift** %9, align 8
  %25 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %11, align 8
  %26 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %25, i32 0, i32 2
  store %struct.dcn_hubbub_shift* %24, %struct.dcn_hubbub_shift** %26, align 8
  %27 = load %struct.dcn_hubbub_mask*, %struct.dcn_hubbub_mask** %10, align 8
  %28 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %11, align 8
  %29 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %28, i32 0, i32 1
  store %struct.dcn_hubbub_mask* %27, %struct.dcn_hubbub_mask** %29, align 8
  %30 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %11, align 8
  %31 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %30, i32 0, i32 0
  store i32 7, i32* %31, align 8
  %32 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %33 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DCN_VERSION_1_01, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %11, align 8
  %39 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %38, i32 0, i32 0
  store i32 11, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %5
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
