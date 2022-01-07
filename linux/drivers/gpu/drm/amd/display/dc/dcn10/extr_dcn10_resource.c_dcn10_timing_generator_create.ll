; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_timing_generator_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_timing_generator_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i64, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.optc = type { %struct.timing_generator, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tg_regs = common dso_local global i32* null, align 8
@tg_shift = common dso_local global i32 0, align 4
@tg_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timing_generator* (%struct.dc_context*, i64)* @dcn10_timing_generator_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timing_generator* @dcn10_timing_generator_create(%struct.dc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.optc*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.optc* @kzalloc(i32 40, i32 %7)
  store %struct.optc* %8, %struct.optc** %6, align 8
  %9 = load %struct.optc*, %struct.optc** %6, align 8
  %10 = icmp ne %struct.optc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.timing_generator* null, %struct.timing_generator** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.optc*, %struct.optc** %6, align 8
  %15 = getelementptr inbounds %struct.optc, %struct.optc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %18 = load %struct.optc*, %struct.optc** %6, align 8
  %19 = getelementptr inbounds %struct.optc, %struct.optc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %19, i32 0, i32 1
  store %struct.dc_context* %17, %struct.dc_context** %20, align 8
  %21 = load i32*, i32** @tg_regs, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load %struct.optc*, %struct.optc** %6, align 8
  %25 = getelementptr inbounds %struct.optc, %struct.optc* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.optc*, %struct.optc** %6, align 8
  %27 = getelementptr inbounds %struct.optc, %struct.optc* %26, i32 0, i32 2
  store i32* @tg_shift, i32** %27, align 8
  %28 = load %struct.optc*, %struct.optc** %6, align 8
  %29 = getelementptr inbounds %struct.optc, %struct.optc* %28, i32 0, i32 1
  store i32* @tg_mask, i32** %29, align 8
  %30 = load %struct.optc*, %struct.optc** %6, align 8
  %31 = call i32 @dcn10_timing_generator_init(%struct.optc* %30)
  %32 = load %struct.optc*, %struct.optc** %6, align 8
  %33 = getelementptr inbounds %struct.optc, %struct.optc* %32, i32 0, i32 0
  store %struct.timing_generator* %33, %struct.timing_generator** %3, align 8
  br label %34

34:                                               ; preds = %12, %11
  %35 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  ret %struct.timing_generator* %35
}

declare dso_local %struct.optc* @kzalloc(i32, i32) #1

declare dso_local i32 @dcn10_timing_generator_init(%struct.optc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
