; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_dce110_aux_engine_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_dce110_aux_engine_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { i8*, i64, i64, %struct.dc_context*, i32* }
%struct.aux_engine_dce110 = type { %struct.dce_aux, %struct.dce110_aux_registers*, i8* }
%struct.dc_context = type { i32 }
%struct.dce110_aux_registers = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dce_aux* @dce110_aux_engine_construct(%struct.aux_engine_dce110* %0, %struct.dc_context* %1, i8* %2, i8* %3, %struct.dce110_aux_registers* %4) #0 {
  %6 = alloca %struct.aux_engine_dce110*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dce110_aux_registers*, align 8
  store %struct.aux_engine_dce110* %0, %struct.aux_engine_dce110** %6, align 8
  store %struct.dc_context* %1, %struct.dc_context** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.dce110_aux_registers* %4, %struct.dce110_aux_registers** %10, align 8
  %11 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %12 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %15 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %16 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %16, i32 0, i32 3
  store %struct.dc_context* %14, %struct.dc_context** %17, align 8
  %18 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %19 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %22 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %26 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %30 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dce110_aux_registers*, %struct.dce110_aux_registers** %10, align 8
  %32 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %33 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %32, i32 0, i32 1
  store %struct.dce110_aux_registers* %31, %struct.dce110_aux_registers** %33, align 8
  %34 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %35 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %34, i32 0, i32 0
  ret %struct.dce_aux* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
