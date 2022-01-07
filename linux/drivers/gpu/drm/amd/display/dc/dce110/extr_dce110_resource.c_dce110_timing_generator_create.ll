; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_timing_generator_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_timing_generator_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_context = type { i32 }
%struct.dce110_timing_generator_offsets = type { i32 }
%struct.dce110_timing_generator = type { %struct.timing_generator }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timing_generator* (%struct.dc_context*, i32, %struct.dce110_timing_generator_offsets*)* @dce110_timing_generator_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timing_generator* @dce110_timing_generator_create(%struct.dc_context* %0, i32 %1, %struct.dce110_timing_generator_offsets* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dce110_timing_generator_offsets*, align 8
  %8 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dce110_timing_generator_offsets* %2, %struct.dce110_timing_generator_offsets** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dce110_timing_generator* @kzalloc(i32 4, i32 %9)
  store %struct.dce110_timing_generator* %10, %struct.dce110_timing_generator** %8, align 8
  %11 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %8, align 8
  %12 = icmp ne %struct.dce110_timing_generator* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.timing_generator* null, %struct.timing_generator** %4, align 8
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %8, align 8
  %16 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dce110_timing_generator_offsets*, %struct.dce110_timing_generator_offsets** %7, align 8
  %19 = call i32 @dce110_timing_generator_construct(%struct.dce110_timing_generator* %15, %struct.dc_context* %16, i32 %17, %struct.dce110_timing_generator_offsets* %18)
  %20 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %8, align 8
  %21 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %20, i32 0, i32 0
  store %struct.timing_generator* %21, %struct.timing_generator** %4, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  ret %struct.timing_generator* %23
}

declare dso_local %struct.dce110_timing_generator* @kzalloc(i32, i32) #1

declare dso_local i32 @dce110_timing_generator_construct(%struct.dce110_timing_generator*, %struct.dc_context*, i32, %struct.dce110_timing_generator_offsets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
