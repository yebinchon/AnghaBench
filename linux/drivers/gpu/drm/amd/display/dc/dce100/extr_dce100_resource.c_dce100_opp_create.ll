; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_opp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_opp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.dc_context = type { i32 }
%struct.dce110_opp = type { %struct.output_pixel_processor }

@GFP_KERNEL = common dso_local global i32 0, align 4
@opp_regs = common dso_local global i32* null, align 8
@opp_shift = common dso_local global i32 0, align 4
@opp_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.output_pixel_processor* @dce100_opp_create(%struct.dc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.output_pixel_processor*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dce110_opp*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dce110_opp* @kzalloc(i32 4, i32 %7)
  store %struct.dce110_opp* %8, %struct.dce110_opp** %6, align 8
  %9 = load %struct.dce110_opp*, %struct.dce110_opp** %6, align 8
  %10 = icmp ne %struct.dce110_opp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.output_pixel_processor* null, %struct.output_pixel_processor** %3, align 8
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.dce110_opp*, %struct.dce110_opp** %6, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32*, i32** @opp_regs, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @dce110_opp_construct(%struct.dce110_opp* %13, %struct.dc_context* %14, i64 %15, i32* %18, i32* @opp_shift, i32* @opp_mask)
  %20 = load %struct.dce110_opp*, %struct.dce110_opp** %6, align 8
  %21 = getelementptr inbounds %struct.dce110_opp, %struct.dce110_opp* %20, i32 0, i32 0
  store %struct.output_pixel_processor* %21, %struct.output_pixel_processor** %3, align 8
  br label %22

22:                                               ; preds = %12, %11
  %23 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %3, align 8
  ret %struct.output_pixel_processor* %23
}

declare dso_local %struct.dce110_opp* @kzalloc(i32, i32) #1

declare dso_local i32 @dce110_opp_construct(%struct.dce110_opp*, %struct.dc_context*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
