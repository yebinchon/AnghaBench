; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_dce120_aux_engine_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_dce120_aux_engine_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { i32 }
%struct.dc_context = type { i32 }
%struct.aux_engine_dce110 = type { %struct.dce_aux }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SW_AUX_TIMEOUT_PERIOD_MULTIPLIER = common dso_local global i32 0, align 4
@AUX_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@aux_engine_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dce_aux* @dce120_aux_engine_create(%struct.dc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.dce_aux*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aux_engine_dce110*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.aux_engine_dce110* @kzalloc(i32 4, i32 %7)
  store %struct.aux_engine_dce110* %8, %struct.aux_engine_dce110** %6, align 8
  %9 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %10 = icmp ne %struct.aux_engine_dce110* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.dce_aux* null, %struct.dce_aux** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @SW_AUX_TIMEOUT_PERIOD_MULTIPLIER, align 4
  %17 = load i32, i32* @AUX_TIMEOUT_PERIOD, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32*, i32** @aux_engine_regs, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @dce110_aux_engine_construct(%struct.aux_engine_dce110* %13, %struct.dc_context* %14, i64 %15, i32 %18, i32* %21)
  %23 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %24 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %23, i32 0, i32 0
  store %struct.dce_aux* %24, %struct.dce_aux** %3, align 8
  br label %25

25:                                               ; preds = %12, %11
  %26 = load %struct.dce_aux*, %struct.dce_aux** %3, align 8
  ret %struct.dce_aux* %26
}

declare dso_local %struct.aux_engine_dce110* @kzalloc(i32, i32) #1

declare dso_local i32 @dce110_aux_engine_construct(%struct.aux_engine_dce110*, %struct.dc_context*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
